; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_opmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.TYPE_2__, i32, %struct.ieee80211com }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211com = type { i64 }

@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_HOSTAP = common dso_local global i32 0, align 4
@BWN_MACCTL_PASS_CTL = common dso_local global i32 0, align 4
@BWN_MACCTL_PASS_BADPLCP = common dso_local global i32 0, align 4
@BWN_MACCTL_PASS_BADFCS = common dso_local global i32 0, align 4
@BWN_MACCTL_PROMISC = common dso_local global i32 0, align 4
@BWN_MACCTL_BEACON_PROMISC = common dso_local global i32 0, align 4
@BWN_MACCTL_STA = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM4306 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_set_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_set_opmode(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %3, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 3
  store %struct.ieee80211com* %11, %struct.ieee80211com** %4, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = load i32, i32* @BWN_MACCTL, align 4
  %14 = call i32 @BWN_READ_4(%struct.bwn_mac* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @BWN_MACCTL_HOSTAP, align 4
  %16 = load i32, i32* @BWN_MACCTL_PASS_CTL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BWN_MACCTL_PASS_BADPLCP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BWN_MACCTL_PASS_BADFCS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BWN_MACCTL_PROMISC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BWN_MACCTL_BEACON_PROMISC, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @BWN_MACCTL_STA, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %1
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %1
  %44 = load i32, i32* @BWN_MACCTL_HOSTAP, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %37
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @BWN_MACCTL_STA, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %61 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bhnd_get_hwrev(i32 %67)
  %69 = icmp sle i32 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32, i32* @BWN_MACCTL_PROMISC, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %59
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %76 = load i32, i32* @BWN_MACCTL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %75, i32 %76, i32 %77)
  store i32 2, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @BWN_MACCTL_STA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @BWN_MACCTL_HOSTAP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %90 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BHND_CHIPID_BCM4306, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %97 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 100, i32* %6, align 4
  br label %103

102:                                              ; preds = %95, %88
  store i32 50, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %101
  br label %104

104:                                              ; preds = %103, %83, %74
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %105, i32 1554, i32 %106)
  ret void
}

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
