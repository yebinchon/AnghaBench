; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_switch_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy, %struct.bwn_softc* }
%struct.bwn_phy = type { i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.1*, i32)*, i32 }
%struct.bwn_mac.0 = type opaque
%struct.bwn_mac.1 = type opaque
%struct.bwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to switch channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_switch_channel(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_phy*, align 8
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  store %struct.bwn_phy* %13, %struct.bwn_phy** %6, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 1
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %15, align 8
  store %struct.bwn_softc* %16, %struct.bwn_softc** %7, align 8
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %18 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %17, i32 0, i32 1
  store %struct.ieee80211com* %18, %struct.ieee80211com** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %23 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %22, i32 0, i32 0
  %24 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %23, align 8
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %26 = bitcast %struct.bwn_mac* %25 to %struct.bwn_mac.0*
  %27 = call i32 %24(%struct.bwn_mac.0* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, 256
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %40 = load i32, i32* @BWN_SHARED, align 4
  %41 = load i32, i32* @BWN_SHARED_CHAN, align 4
  %42 = call i32 @bwn_shm_read_2(%struct.bwn_mac* %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %44 = load i32, i32* @BWN_SHARED, align 4
  %45 = load i32, i32* @BWN_SHARED_CHAN, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %49 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %48, i32 0, i32 1
  %50 = load i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.1*, i32)** %49, align 8
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %52 = bitcast %struct.bwn_mac* %51 to %struct.bwn_mac.1*
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %50(%struct.bwn_mac.1* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %64

58:                                               ; preds = %38
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %61 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = call i32 @DELAY(i32 8000)
  store i32 0, i32* %3, align 4
  br label %75

64:                                               ; preds = %57
  %65 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %66 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %70 = load i32, i32* @BWN_SHARED, align 4
  %71 = load i32, i32* @BWN_SHARED_CHAN, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %58
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i32 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
