; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_select_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_select_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, i64, i64 }
%struct.ieee80211_channel = type { i32 }

@RT2573_PHY_CSR0 = common dso_local global i32 0, align 4
@RT2573_PA_PE_2GHZ = common dso_local global i32 0, align 4
@RT2573_PA_PE_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %struct.ieee80211_channel*)* @rum_select_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_select_band(%struct.rum_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 32, i32* %5, align 4
  store i32 72, i32* %7, align 4
  store i32 44, i32* %10, align 4
  store i32 80, i32* %6, align 4
  store i32 72, i32* %8, align 4
  store i32 72, i32* %9, align 4
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 12
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 16
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 16
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 16
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %33 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %38 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %31
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 16
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 16
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 16
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %40, %36
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @rum_bbp_write(%struct.rum_softc* %56, i32 17, i32 %57)
  %59 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @rum_bbp_write(%struct.rum_softc* %59, i32 96, i32 %60)
  %62 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rum_bbp_write(%struct.rum_softc* %62, i32 104, i32 %63)
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %66 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68, %52
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %75 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %79 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77, %68
  %83 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %84 = call i32 @rum_bbp_write(%struct.rum_softc* %83, i32 75, i32 128)
  %85 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %86 = call i32 @rum_bbp_write(%struct.rum_softc* %85, i32 86, i32 128)
  %87 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %88 = call i32 @rum_bbp_write(%struct.rum_softc* %87, i32 88, i32 128)
  br label %89

89:                                               ; preds = %82, %77, %73
  %90 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @rum_bbp_write(%struct.rum_softc* %90, i32 35, i32 %91)
  %93 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @rum_bbp_write(%struct.rum_softc* %93, i32 97, i32 %94)
  %96 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @rum_bbp_write(%struct.rum_softc* %96, i32 98, i32 %97)
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %100 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %104 = load i32, i32* @RT2573_PHY_CSR0, align 4
  %105 = load i32, i32* @RT2573_PA_PE_2GHZ, align 4
  %106 = load i32, i32* @RT2573_PA_PE_5GHZ, align 4
  %107 = call i32 @rum_modbits(%struct.rum_softc* %103, i32 %104, i32 %105, i32 %106)
  br label %114

108:                                              ; preds = %89
  %109 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %110 = load i32, i32* @RT2573_PHY_CSR0, align 4
  %111 = load i32, i32* @RT2573_PA_PE_5GHZ, align 4
  %112 = load i32, i32* @RT2573_PA_PE_2GHZ, align 4
  %113 = call i32 @rum_modbits(%struct.rum_softc* %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %102
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rum_bbp_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_modbits(%struct.rum_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
