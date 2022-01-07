; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@OPERATION_MODE = common dso_local global i32 0, align 4
@MODE_TSF = common dso_local global i32 0, align 4
@MODE_OSF = common dso_local global i32 0, align 4
@MODE_FUF = common dso_local global i32 0, align 4
@MODE_RSF = common dso_local global i32 0, align 4
@MODE_RTC_LEV32 = common dso_local global i32 0, align 4
@MODE_RTC_SHIFT = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@INT_EN_DEFAULT = common dso_local global i32 0, align 4
@MODE_ST = common dso_local global i32 0, align 4
@MODE_SR = common dso_local global i32 0, align 4
@MAC_CONFIGURATION = common dso_local global i32 0, align 4
@CONF_JD = common dso_local global i32 0, align 4
@CONF_ACS = common dso_local global i32 0, align 4
@CONF_BE = common dso_local global i32 0, align 4
@CONF_TE = common dso_local global i32 0, align 4
@CONF_RE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@dwc_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_init_locked(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %5 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %5, i32 0, i32 2
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %9 = call i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %93

17:                                               ; preds = %1
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %24 = call i32 @dwc_setup_rxfilter(%struct.dwc_softc* %23)
  %25 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %26 = load i32, i32* @OPERATION_MODE, align 4
  %27 = call i32 @READ4(%struct.dwc_softc* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MODE_TSF, align 4
  %29 = load i32, i32* @MODE_OSF, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MODE_FUF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @MODE_RSF, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @MODE_RTC_LEV32, align 4
  %40 = load i32, i32* @MODE_RTC_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %45 = load i32, i32* @OPERATION_MODE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @WRITE4(%struct.dwc_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %49 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %50 = load i32, i32* @INT_EN_DEFAULT, align 4
  %51 = call i32 @WRITE4(%struct.dwc_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %53 = load i32, i32* @OPERATION_MODE, align 4
  %54 = call i32 @READ4(%struct.dwc_softc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @MODE_ST, align 4
  %56 = load i32, i32* @MODE_SR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %61 = load i32, i32* @OPERATION_MODE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @WRITE4(%struct.dwc_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %65 = load i32, i32* @MAC_CONFIGURATION, align 4
  %66 = call i32 @READ4(%struct.dwc_softc* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @CONF_JD, align 4
  %68 = load i32, i32* @CONF_ACS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CONF_BE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @CONF_TE, align 4
  %75 = load i32, i32* @CONF_RE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %80 = load i32, i32* @MAC_CONFIGURATION, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @WRITE4(%struct.dwc_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %84 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mii_mediachg(i32 %85)
  %87 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %88 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %87, i32 0, i32 0
  %89 = load i32, i32* @hz, align 4
  %90 = load i32, i32* @dwc_tick, align 4
  %91 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %92 = call i32 @callout_reset(i32* %88, i32 %89, i32 %90, %struct.dwc_softc* %91)
  br label %93

93:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_setup_rxfilter(%struct.dwc_softc*) #1

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.dwc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
