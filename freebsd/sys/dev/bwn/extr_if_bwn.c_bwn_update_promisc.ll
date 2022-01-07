; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_update_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_update_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i64 }

@BWN_MAC_STATUS_INITED = common dso_local global i64 0, align 8
@BWN_MACCTL_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwn_update_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_update_promisc(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %8, i32 0, i32 1
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %9, align 8
  store %struct.bwn_mac* %10, %struct.bwn_mac** %4, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = call i32 @BWN_LOCK(%struct.bwn_softc* %11)
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 1
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %14, align 8
  store %struct.bwn_mac* %15, %struct.bwn_mac** %4, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = icmp ne %struct.bwn_mac* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BWN_MAC_STATUS_INITED, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @BWN_MACCTL_PROMISC, align 4
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %42

35:                                               ; preds = %24
  %36 = load i32, i32* @BWN_MACCTL_PROMISC, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %44 = call i32 @bwn_set_opmode(%struct.bwn_mac* %43)
  br label %45

45:                                               ; preds = %42, %18, %1
  %46 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %47 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %46)
  ret void
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_set_opmode(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
