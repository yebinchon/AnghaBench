; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_front.c_xenbusb_front_get_otherend_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_front.c_xenbusb_front_get_otherend_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_ivars = type { i8*, i32, i32, i32 }

@M_XENBUS = common dso_local global i32 0, align 4
@XST_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"backend-id\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xenbus_device_ivars*)* @xenbusb_front_get_otherend_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenbusb_front_get_otherend_node(i32 %0, %struct.xenbus_device_ivars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device_ivars*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.xenbus_device_ivars* %1, %struct.xenbus_device_ivars** %4, align 8
  %7 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %8 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %13 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @M_XENBUS, align 4
  %16 = call i32 @free(i8* %14, i32 %15)
  %17 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %18 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %17, i32 0, i32 0
  store i8* null, i8** %18, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @XST_NIL, align 4
  %21 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %22 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %25 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %24, i32 0, i32 2
  %26 = call i32 @xs_gather(i32 %20, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i8** %5, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @M_XENBUS, align 4
  %32 = call i8* @strdup(i8* %30, i32 %31)
  %33 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %34 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %38 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @M_XENSTORE, align 4
  %41 = call i32 @free(i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %29, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @xs_gather(i32, i32, i8*, i8*, i32*, i8*, i32*, i8**, i32*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
