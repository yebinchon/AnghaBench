; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ALE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@ALE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@ALE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_TX_ENB = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ale_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.ale_softc*
  store %struct.ale_softc* %9, %struct.ale_softc** %3, align 8
  %10 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = icmp eq %struct.mii_data* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = icmp eq %struct.ifnet* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20, %1
  br label %100

31:                                               ; preds = %23
  %32 = load i32, i32* @ALE_FLAG_LINK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFM_ACTIVE, align 4
  %42 = load i32, i32* @IFM_AVALID, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load i32, i32* @IFM_ACTIVE, align 4
  %46 = load i32, i32* @IFM_AVALID, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %31
  %50 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %51 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IFM_SUBTYPE(i32 %52)
  switch i32 %53, label %74 [
    i32 128, label %54
    i32 129, label %54
    i32 130, label %60
  ]

54:                                               ; preds = %49, %49
  %55 = load i32, i32* @ALE_FLAG_LINK, align 4
  %56 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %75

60:                                               ; preds = %49
  %61 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ALE_FLAG_FASTETHER, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @ALE_FLAG_LINK, align 4
  %69 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  br label %75

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74, %73, %54
  br label %76

76:                                               ; preds = %75, %31
  %77 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %78 = call i32 @ale_stop_mac(%struct.ale_softc* %77)
  %79 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ALE_FLAG_LINK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %87 = call i32 @ale_mac_config(%struct.ale_softc* %86)
  %88 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %89 = load i32, i32* @ALE_MAC_CFG, align 4
  %90 = call i32 @CSR_READ_4(%struct.ale_softc* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %92 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %97 = load i32, i32* @ALE_MAC_CFG, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @CSR_WRITE_4(%struct.ale_softc* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %30, %85, %76
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @ale_stop_mac(%struct.ale_softc*) #1

declare dso_local i32 @ale_mac_config(%struct.ale_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
