; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_hostflags_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_hostflags_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i64 }
%struct.bwi_phy = type { i64, i32 }
%struct.bwi_softc = type { i32 }

@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_HFLAG_SYM_WA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@BWI_HFLAG_GDC_WA = common dso_local global i32 0, align 4
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@BWI_HFLAG_OFDM_PA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown PHY mode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_hostflags_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_hostflags_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 2
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %3, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 1
  store %struct.bwi_phy* %11, %struct.bwi_phy** %4, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 0
  store %struct.bwi_rf* %13, %struct.bwi_rf** %5, align 8
  %14 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %15 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %22 = call i32 @HFLAGS_READ(%struct.bwi_mac* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @BWI_HFLAG_SYM_WA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %27 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %20
  %32 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %33 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @BWI_HFLAG_GDC_WA, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @BWI_HFLAG_OFDM_PA, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %40
  br label %81

52:                                               ; preds = %20
  %53 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %54 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %60 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 2
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %65 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @BWI_HFLAG_GDC_WA, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %63, %58
  br label %80

75:                                               ; preds = %52
  %76 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %77 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %75, %74
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @HFLAGS_WRITE(%struct.bwi_mac* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %19
  ret void
}

declare dso_local i32 @HFLAGS_READ(%struct.bwi_mac*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @HFLAGS_WRITE(%struct.bwi_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
