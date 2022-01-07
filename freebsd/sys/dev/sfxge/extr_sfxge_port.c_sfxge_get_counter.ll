; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EFX_MAC_RX_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_RX_ERRORS = common dso_local global i64 0, align 8
@EFX_MAC_TX_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_TX_ERRORS = common dso_local global i64 0, align 8
@EFX_MAC_TX_SGL_COL_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_TX_MULT_COL_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_TX_EX_COL_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_TX_LATE_COL_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_RX_OCTETS = common dso_local global i64 0, align 8
@EFX_MAC_TX_OCTETS = common dso_local global i64 0, align 8
@EFX_MAC_TX_MULTICST_PKTS = common dso_local global i64 0, align 8
@EFX_MAC_TX_BRDCST_PKTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sfxge_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_softc*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %10, align 8
  store %struct.sfxge_softc* %11, %struct.sfxge_softc** %6, align 8
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 0
  %14 = call i32 @SFXGE_PORT_LOCK(%struct.TYPE_5__* %13)
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %16 = call i32 @sfxge_mac_stat_update(%struct.sfxge_softc* %15)
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %7, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %91 [
    i32 135, label %24
    i32 137, label %29
    i32 129, label %34
    i32 131, label %39
    i32 139, label %44
    i32 138, label %64
    i32 132, label %69
    i32 130, label %74
    i32 128, label %84
    i32 136, label %90
    i32 134, label %90
    i32 133, label %90
  ]

24:                                               ; preds = %2
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* @EFX_MAC_RX_PKTS, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  br label %98

29:                                               ; preds = %2
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* @EFX_MAC_RX_ERRORS, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %98

34:                                               ; preds = %2
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* @EFX_MAC_TX_PKTS, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  br label %98

39:                                               ; preds = %2
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* @EFX_MAC_TX_ERRORS, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %98

44:                                               ; preds = %2
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* @EFX_MAC_TX_SGL_COL_PKTS, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* @EFX_MAC_TX_MULT_COL_PKTS, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* @EFX_MAC_TX_EX_COL_PKTS, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* @EFX_MAC_TX_LATE_COL_PKTS, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  store i64 %63, i64* %8, align 8
  br label %98

64:                                               ; preds = %2
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* @EFX_MAC_RX_OCTETS, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %8, align 8
  br label %98

69:                                               ; preds = %2
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* @EFX_MAC_TX_OCTETS, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %98

74:                                               ; preds = %2
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* @EFX_MAC_TX_MULTICST_PKTS, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* @EFX_MAC_TX_BRDCST_PKTS, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  store i64 %83, i64* %8, align 8
  br label %98

84:                                               ; preds = %2
  %85 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %86 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %85, i32 0, i32 0
  %87 = call i32 @SFXGE_PORT_UNLOCK(%struct.TYPE_5__* %86)
  %88 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %89 = call i64 @sfxge_tx_get_drops(%struct.sfxge_softc* %88)
  store i64 %89, i64* %3, align 8
  br label %103

90:                                               ; preds = %2, %2, %2
  br label %91

91:                                               ; preds = %2, %90
  %92 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %93 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %92, i32 0, i32 0
  %94 = call i32 @SFXGE_PORT_UNLOCK(%struct.TYPE_5__* %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @if_get_counter_default(%struct.ifnet* %95, i32 %96)
  store i64 %97, i64* %3, align 8
  br label %103

98:                                               ; preds = %74, %69, %64, %44, %39, %34, %29, %24
  %99 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %100 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %99, i32 0, i32 0
  %101 = call i32 @SFXGE_PORT_UNLOCK(%struct.TYPE_5__* %100)
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %98, %91, %84
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32 @SFXGE_PORT_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @sfxge_mac_stat_update(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_PORT_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i64 @sfxge_tx_get_drops(%struct.sfxge_softc*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
