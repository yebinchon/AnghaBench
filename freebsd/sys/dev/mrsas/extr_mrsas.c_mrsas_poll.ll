; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.mrsas_softc* }
%struct.mrsas_softc = type { i32, i32, i32, i64 }
%struct.thread = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @mrsas_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.mrsas_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cdev*, %struct.cdev** %4, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %10, align 8
  store %struct.mrsas_softc* %11, %struct.mrsas_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @POLLIN, align 4
  %14 = load i32, i32* @POLLRDNORM, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @POLLIN, align 4
  %26 = load i32, i32* @POLLRDNORM, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @POLLIN, align 4
  %38 = load i32, i32* @POLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %44 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %43, i32 0, i32 1
  %45 = call i32 @mtx_lock(i32* %44)
  %46 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %47 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %50 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %49, i32 0, i32 2
  %51 = call i32 @selrecord(%struct.thread* %48, i32* %50)
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 1
  %54 = call i32 @mtx_unlock(i32* %53)
  br label %55

55:                                               ; preds = %42, %35
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
