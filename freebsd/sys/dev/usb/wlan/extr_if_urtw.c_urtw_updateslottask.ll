; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_updateslottask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_updateslottask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i64, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_SIFS = common dso_local global i32 0, align 4
@URTW_SLOT = common dso_local global i32 0, align 4
@IEEE80211_DUR_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_DUR_SLOT = common dso_local global i32 0, align 4
@URTW_8187B_EIFS = common dso_local global i32 0, align 4
@URTW_CARRIER_SCOUNT = common dso_local global i32 0, align 4
@IEEE80211_S_ASSOC = common dso_local global i64 0, align 8
@IEEE80211_F_SHSLOT = common dso_local global i32 0, align 4
@URTW_DIFS = common dso_local global i32 0, align 4
@URTW_EIFS = common dso_local global i32 0, align 4
@URTW_CW_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @urtw_updateslottask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_updateslottask(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urtw_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.urtw_softc*
  store %struct.urtw_softc* %9, %struct.urtw_softc** %5, align 8
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %11 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %13 = call i32 @URTW_LOCK(%struct.urtw_softc* %12)
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %15 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @URTW_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %22 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %21)
  br label %113

23:                                               ; preds = %2
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @URTW_RTL8187B, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %32 = load i32, i32* @URTW_SIFS, align 4
  %33 = call i32 @urtw_write8_m(%struct.urtw_softc* %31, i32 %32, i32 34)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %41 = load i32, i32* @URTW_SLOT, align 4
  %42 = load i32, i32* @IEEE80211_DUR_SHSLOT, align 4
  %43 = call i32 @urtw_write8_m(%struct.urtw_softc* %40, i32 %41, i32 %42)
  br label %49

44:                                               ; preds = %30
  %45 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %46 = load i32, i32* @URTW_SLOT, align 4
  %47 = load i32, i32* @IEEE80211_DUR_SLOT, align 4
  %48 = call i32 @urtw_write8_m(%struct.urtw_softc* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %51 = load i32, i32* @URTW_8187B_EIFS, align 4
  %52 = call i32 @urtw_write8_m(%struct.urtw_softc* %50, i32 %51, i32 91)
  %53 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %54 = load i32, i32* @URTW_CARRIER_SCOUNT, align 4
  %55 = call i32 @urtw_write8_m(%struct.urtw_softc* %53, i32 %54, i32 91)
  br label %109

56:                                               ; preds = %23
  %57 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %58 = load i32, i32* @URTW_SIFS, align 4
  %59 = call i32 @urtw_write8_m(%struct.urtw_softc* %57, i32 %58, i32 34)
  %60 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %61 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_S_ASSOC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_F_SHSLOT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %74 = load i32, i32* @URTW_SLOT, align 4
  %75 = load i32, i32* @IEEE80211_DUR_SHSLOT, align 4
  %76 = call i32 @urtw_write8_m(%struct.urtw_softc* %73, i32 %74, i32 %75)
  br label %82

77:                                               ; preds = %65, %56
  %78 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %79 = load i32, i32* @URTW_SLOT, align 4
  %80 = load i32, i32* @IEEE80211_DUR_SLOT, align 4
  %81 = call i32 @urtw_write8_m(%struct.urtw_softc* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %90 = load i32, i32* @URTW_DIFS, align 4
  %91 = call i32 @urtw_write8_m(%struct.urtw_softc* %89, i32 %90, i32 20)
  %92 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %93 = load i32, i32* @URTW_EIFS, align 4
  %94 = call i32 @urtw_write8_m(%struct.urtw_softc* %92, i32 %93, i32 71)
  %95 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %96 = load i32, i32* @URTW_CW_VAL, align 4
  %97 = call i32 @urtw_write8_m(%struct.urtw_softc* %95, i32 %96, i32 115)
  br label %108

98:                                               ; preds = %82
  %99 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %100 = load i32, i32* @URTW_DIFS, align 4
  %101 = call i32 @urtw_write8_m(%struct.urtw_softc* %99, i32 %100, i32 36)
  %102 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %103 = load i32, i32* @URTW_EIFS, align 4
  %104 = call i32 @urtw_write8_m(%struct.urtw_softc* %102, i32 %103, i32 55)
  %105 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %106 = load i32, i32* @URTW_CW_VAL, align 4
  %107 = call i32 @urtw_write8_m(%struct.urtw_softc* %105, i32 %106, i32 165)
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108, %49
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %112 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %111)
  br label %113

113:                                              ; preds = %110, %20
  ret void
}

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
