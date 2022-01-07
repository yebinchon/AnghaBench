; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_select_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_select_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i64, i64 }
%struct.ieee80211_channel = type { i32 }

@RT2661_PHY_CSR0 = common dso_local global i32 0, align 4
@RT2661_PA_PE_2GHZ = common dso_local global i32 0, align 4
@RT2661_PA_PE_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*, %struct.ieee80211_channel*)* @rt2661_select_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_select_band(%struct.rt2661_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 32, i32* %5, align 4
  store i32 72, i32* %7, align 4
  store i32 44, i32* %10, align 4
  store i32 80, i32* %6, align 4
  store i32 72, i32* %8, align 4
  store i32 72, i32* %9, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 16
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 12
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 16
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 16
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 16
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %39 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 16
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 16
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 16
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %41, %37
  %54 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %54, i32 17, i32 %55)
  %57 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %57, i32 96, i32 %58)
  %60 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %60, i32 104, i32 %61)
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %64 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %68 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66, %53
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %73 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %77 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75, %66
  %81 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %82 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %81, i32 75, i32 128)
  %83 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %84 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %83, i32 86, i32 128)
  %85 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %86 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %85, i32 88, i32 128)
  br label %87

87:                                               ; preds = %80, %75, %71
  %88 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %88, i32 35, i32 %89)
  %91 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %91, i32 97, i32 %92)
  %94 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %94, i32 98, i32 %95)
  %97 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %98 = load i32, i32* @RT2661_PHY_CSR0, align 4
  %99 = call i32 @RAL_READ(%struct.rt2661_softc* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @RT2661_PA_PE_2GHZ, align 4
  %101 = load i32, i32* @RT2661_PA_PE_5GHZ, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %107 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %87
  %110 = load i32, i32* @RT2661_PA_PE_2GHZ, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %117

113:                                              ; preds = %87
  %114 = load i32, i32* @RT2661_PA_PE_5GHZ, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %119 = load i32, i32* @RT2661_PHY_CSR0, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @RAL_WRITE(%struct.rt2661_softc* %118, i32 %119, i32 %120)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rt2661_bbp_write(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
