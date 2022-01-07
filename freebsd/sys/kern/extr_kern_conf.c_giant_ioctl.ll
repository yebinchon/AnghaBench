; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.cdevsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* }

@ENXIO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @giant_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giant_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cdevsw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %15, i32* %13)
  store %struct.cdevsw* %16, %struct.cdevsw** %12, align 8
  %17 = load %struct.cdevsw*, %struct.cdevsw** %12, align 8
  %18 = icmp eq %struct.cdevsw* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = call i32 @mtx_lock(i32* @Giant)
  %23 = load %struct.cdevsw*, %struct.cdevsw** %12, align 8
  %24 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)*, i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)** %26, align 8
  %28 = load %struct.cdev*, %struct.cdev** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.thread*, %struct.thread** %11, align 8
  %33 = call i32 %27(%struct.cdev* %28, i32 %29, i32 %30, i32 %31, %struct.thread* %32)
  store i32 %33, i32* %14, align 4
  %34 = call i32 @mtx_unlock(i32* @Giant)
  %35 = load %struct.cdev*, %struct.cdev** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @dev_relthread(%struct.cdev* %35, i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %21, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
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
