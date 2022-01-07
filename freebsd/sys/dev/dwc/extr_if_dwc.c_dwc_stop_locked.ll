; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32, i64, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@OPERATION_MODE = common dso_local global i32 0, align 4
@MODE_ST = common dso_local global i32 0, align 4
@MODE_FTF = common dso_local global i32 0, align 4
@MAC_CONFIGURATION = common dso_local global i32 0, align 4
@CONF_TE = common dso_local global i32 0, align 4
@CONF_RE = common dso_local global i32 0, align 4
@MODE_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_stop_locked(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %5 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %6 = call i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc* %5)
  %7 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %22, i32 0, i32 0
  %24 = call i32 @callout_stop(i32* %23)
  %25 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %26 = load i32, i32* @OPERATION_MODE, align 4
  %27 = call i32 @READ4(%struct.dwc_softc* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MODE_ST, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %33 = load i32, i32* @OPERATION_MODE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @WRITE4(%struct.dwc_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %37 = load i32, i32* @OPERATION_MODE, align 4
  %38 = call i32 @READ4(%struct.dwc_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @MODE_FTF, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %43 = load i32, i32* @OPERATION_MODE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @WRITE4(%struct.dwc_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %47 = load i32, i32* @MAC_CONFIGURATION, align 4
  %48 = call i32 @READ4(%struct.dwc_softc* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CONF_TE, align 4
  %50 = load i32, i32* @CONF_RE, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %56 = load i32, i32* @MAC_CONFIGURATION, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WRITE4(%struct.dwc_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %60 = load i32, i32* @OPERATION_MODE, align 4
  %61 = call i32 @READ4(%struct.dwc_softc* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @MODE_SR, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %67 = load i32, i32* @OPERATION_MODE, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WRITE4(%struct.dwc_softc* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
