; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.knote = type { i32 }
%struct.cdevsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdev*, %struct.knote*)* }

@ENXIO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @giant_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giant_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.cdevsw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %9 = load %struct.cdev*, %struct.cdev** %4, align 8
  %10 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %9, i32* %7)
  store %struct.cdevsw* %10, %struct.cdevsw** %6, align 8
  %11 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %12 = icmp eq %struct.cdevsw* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = call i32 @mtx_lock(i32* @Giant)
  %17 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %18 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.cdev*, %struct.knote*)*, i32 (%struct.cdev*, %struct.knote*)** %20, align 8
  %22 = load %struct.cdev*, %struct.cdev** %4, align 8
  %23 = load %struct.knote*, %struct.knote** %5, align 8
  %24 = call i32 %21(%struct.cdev* %22, %struct.knote* %23)
  store i32 %24, i32* %8, align 4
  %25 = call i32 @mtx_unlock(i32* @Giant)
  %26 = load %struct.cdev*, %struct.cdev** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_relthread(%struct.cdev* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
