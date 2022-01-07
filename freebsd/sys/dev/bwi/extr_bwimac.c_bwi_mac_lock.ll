; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, %struct.bwi_softc* }
%struct.bwi_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@BWI_MAC_F_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mac_flags 0x%x\00", align 1
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_RFLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_lock(%struct.bwi_mac* %0) #0 {
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
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %16, i8* %21)
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %24 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %29 = call i32 @bwi_mac_stop(%struct.bwi_mac* %28)
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %38 = call i32 @bwi_mac_config_ps(%struct.bwi_mac* %37)
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = load i32, i32* @BWI_MAC_STATUS, align 4
  %43 = load i32, i32* @BWI_MAC_STATUS_RFLOCK, align 4
  %44 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %46 = load i32, i32* @BWI_MAC_STATUS, align 4
  %47 = call i32 @CSR_READ_4(%struct.bwi_softc* %45, i32 %46)
  %48 = call i32 @DELAY(i32 10)
  %49 = load i32, i32* @BWI_MAC_F_LOCKED, align 4
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %51 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_mac_stop(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_config_ps(%struct.bwi_mac*) #1

declare dso_local i32 @CSR_SETBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
