; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, %struct.bwi_softc* }
%struct.bwi_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@BWI_MAC_F_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mac_flags 0x%x\00", align 1
@BWI_PHYINFO = common dso_local global i32 0, align 4
@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_RFLOCK = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_unlock(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 2
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  store %struct.bwi_softc* %7, %struct.bwi_softc** %3, align 8
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BWI_MAC_F_LOCKED, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %16 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %14, i8* %19)
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %22 = load i32, i32* @BWI_PHYINFO, align 4
  %23 = call i32 @CSR_READ_2(%struct.bwi_softc* %21, i32 %22)
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %25 = load i32, i32* @BWI_MAC_STATUS, align 4
  %26 = load i32, i32* @BWI_MAC_STATUS_RFLOCK, align 4
  %27 = call i32 @CSR_CLRBITS_4(%struct.bwi_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %29 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %34 = call i32 @bwi_mac_start(%struct.bwi_mac* %33)
  br label %45

35:                                               ; preds = %1
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %43 = call i32 @bwi_mac_config_ps(%struct.bwi_mac* %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* @BWI_MAC_F_LOCKED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %49 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_CLRBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_mac_start(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_config_ps(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
