; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmresume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32 }

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"psm%d: system resume hook called.\0A\00", align 1
@PSM_CONFIG_HOOKRESUME = common dso_local global i32 0, align 4
@PSM_CONFIG_INITAFTERSUSPEND = common dso_local global i32 0, align 4
@PSM_ASLP = common dso_local global i32 0, align 4
@PSM_VALID = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"psm%d: system resume hook exiting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @psmresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmresume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.psm_softc* @device_get_softc(i32 %7)
  store %struct.psm_softc* %8, %struct.psm_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_unit(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @LOG_NOTICE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @VLOG(i32 2, i32 %12)
  %14 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PSM_CONFIG_HOOKRESUME, align 4
  %18 = load i32, i32* @PSM_CONFIG_INITAFTERSUSPEND, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %25 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PSM_CONFIG_INITAFTERSUSPEND, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @reinitialize(%struct.psm_softc* %24, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PSM_ASLP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %23
  %38 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PSM_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @PSM_ASLP, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %52 = call i32 @wakeup(%struct.psm_softc* %51)
  br label %53

53:                                               ; preds = %44, %37, %23
  %54 = load i32, i32* @LOG_DEBUG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @VLOG(i32 2, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.psm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @reinitialize(%struct.psm_softc*, i32) #1

declare dso_local i32 @wakeup(%struct.psm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
