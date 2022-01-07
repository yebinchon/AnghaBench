; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.xs_dev_data = type { i32, i32, i32 }

@M_XENSTORE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xsdev_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@xs_dev_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @xs_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_dev_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.xs_dev_data*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load i32, i32* @M_XENSTORE, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.xs_dev_data* @malloc(i32 12, i32 %11, i32 %14)
  store %struct.xs_dev_data* %15, %struct.xs_dev_data** %9, align 8
  %16 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %17 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %16, i32 0, i32 2
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  %20 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %21 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %20, i32 0, i32 1
  %22 = call i32 @LIST_INIT(i32* %21)
  %23 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %24 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %23, i32 0, i32 0
  %25 = call i32 @LIST_INIT(i32* %24)
  %26 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %27 = load i32, i32* @xs_dev_dtor, align 4
  %28 = call i32 @devfs_set_cdevpriv(%struct.xs_dev_data* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.xs_dev_data*, %struct.xs_dev_data** %9, align 8
  %33 = load i32, i32* @M_XENSTORE, align 4
  %34 = call i32 @free(%struct.xs_dev_data* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local %struct.xs_dev_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.xs_dev_data*, i32) #1

declare dso_local i32 @free(%struct.xs_dev_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
