; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_giant_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.cdevsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdev*, %struct.uio*, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @giant_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giant_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdevsw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %11, i32* %9)
  store %struct.cdevsw* %12, %struct.cdevsw** %8, align 8
  %13 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %14 = icmp eq %struct.cdevsw* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = call i32 @mtx_lock(i32* @Giant)
  %19 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %20 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.cdev*, %struct.uio*, i32)*, i32 (%struct.cdev*, %struct.uio*, i32)** %22, align 8
  %24 = load %struct.cdev*, %struct.cdev** %5, align 8
  %25 = load %struct.uio*, %struct.uio** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %23(%struct.cdev* %24, %struct.uio* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = call i32 @mtx_unlock(i32* @Giant)
  %29 = load %struct.cdev*, %struct.cdev** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_relthread(%struct.cdev* %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
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
