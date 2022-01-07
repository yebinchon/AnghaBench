; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psm_cdev_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psm_cdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.psm_softc* }
%struct.psm_softc = type { i32, i32, i32* }
%struct.thread = type { i32 }

@PSM_VALID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PSM_OPEN = common dso_local global i32 0, align 4
@psm_devclass = common dso_local global i32 0, align 4
@PSM_EV_OPEN_A = common dso_local global i32 0, align 4
@PSM_EV_OPEN_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @psm_cdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psm_cdev_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.psm_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.psm_softc*, %struct.psm_softc** %13, align 8
  store %struct.psm_softc* %14, %struct.psm_softc** %10, align 8
  %15 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %16 = icmp eq %struct.psm_softc* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %19 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PSM_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %4
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %5, align 4
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %28 = call i32 @psmclose(%struct.psm_softc* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load i32, i32* @PSM_OPEN, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %39 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %44 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %43, i32 0, i32 2
  %45 = call i32 @funsetown(i32** %44)
  %46 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %47 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i32, i32* @psm_devclass, align 4
  %50 = load %struct.psm_softc*, %struct.psm_softc** %10, align 8
  %51 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @devclass_get_device(i32 %49, i32 %52)
  %54 = call i32 @device_unbusy(i32 %53)
  br label %55

55:                                               ; preds = %48, %26
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %24
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @psmclose(%struct.psm_softc*) #1

declare dso_local i32 @funsetown(i32**) #1

declare dso_local i32 @device_unbusy(i32) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
