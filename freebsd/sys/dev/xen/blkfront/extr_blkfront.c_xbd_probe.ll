; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"vbd\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@xen_disable_pv_disks = common dso_local global i64 0, align 8
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"device-type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cdrom\00", align 1
@M_XENSTORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Virtual Block Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @xenbus_get_type(i32 %6)
  %8 = call i64 @strcmp(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = call i64 (...) @xen_hvm_domain()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i64, i64* @xen_disable_pv_disks, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %15, %12
  %21 = call i64 (...) @xen_hvm_domain()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i32, i32* @XST_NIL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @xenbus_get_node(i32 %25)
  %27 = call i32 @xs_read(i32 %24, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i8** %5)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @M_XENSTORE, align 4
  %39 = call i32 @free(i8* %37, i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @M_XENSTORE, align 4
  %44 = call i32 @free(i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %20
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_set_desc(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_quiet(i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %36, %30, %18, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @xenbus_get_type(i32) #1

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i32 @xs_read(i32, i32, i8*, i32*, i8**) #1

declare dso_local i32 @xenbus_get_node(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
