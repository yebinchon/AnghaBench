; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@NFE_TX_CTL = common dso_local global i32 0, align 4
@NFE_RX_CTL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NFE_TX_START = common dso_local global i32 0, align 4
@NFE_RX_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nfe_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.nfe_softc*
  store %struct.nfe_softc* %10, %struct.nfe_softc** %3, align 8
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.mii_data*
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_ACTIVE, align 4
  %25 = load i32, i32* @IFM_AVALID, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load i32, i32* @IFM_AVALID, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %34 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IFM_SUBTYPE(i32 %35)
  switch i32 %36, label %40 [
    i32 128, label %37
    i32 129, label %37
    i32 130, label %37
  ]

37:                                               ; preds = %32, %32, %32
  %38 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %44 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %45 = call i32 @nfe_mac_config(%struct.nfe_softc* %43, %struct.mii_data* %44)
  %46 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %47 = load i32, i32* @NFE_TX_CTL, align 4
  %48 = call i32 @NFE_READ(%struct.nfe_softc* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %50 = load i32, i32* @NFE_RX_CTL, align 4
  %51 = call i32 @NFE_READ(%struct.nfe_softc* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %53 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %42
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @if_getdrvflags(i32 %57)
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @NFE_TX_START, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @NFE_RX_START, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %78

69:                                               ; preds = %56, %42
  %70 = load i32, i32* @NFE_TX_START, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @NFE_RX_START, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %69, %62
  %79 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %80 = load i32, i32* @NFE_TX_CTL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @NFE_WRITE(%struct.nfe_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %84 = load i32, i32* @NFE_RX_CTL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @NFE_WRITE(%struct.nfe_softc* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @nfe_mac_config(%struct.nfe_softc*, %struct.mii_data*) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
