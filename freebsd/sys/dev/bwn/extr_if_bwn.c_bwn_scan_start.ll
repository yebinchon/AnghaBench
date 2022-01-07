; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_scan_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i64 }

@BWN_MAC_STATUS_INITED = common dso_local global i64 0, align 8
@BWN_MACCTL_BEACON_PROMISC = common dso_local global i32 0, align 4
@BWN_HF_SKIP_CFP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwn_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_scan_start(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = call i32 @BWN_LOCK(%struct.bwn_softc* %8)
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 1
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %11, align 8
  store %struct.bwn_mac* %12, %struct.bwn_mac** %4, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %14 = icmp ne %struct.bwn_mac* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BWN_MAC_STATUS_INITED, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32, i32* @BWN_MACCTL_BEACON_PROMISC, align 4
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %28 = call i32 @bwn_set_opmode(%struct.bwn_mac* %27)
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %31 = call i32 @bwn_hf_read(%struct.bwn_mac* %30)
  %32 = load i32, i32* @BWN_HF_SKIP_CFP_UPDATE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bwn_hf_write(%struct.bwn_mac* %29, i32 %33)
  br label %35

35:                                               ; preds = %21, %15, %1
  %36 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %37 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %36)
  ret void
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_set_opmode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
