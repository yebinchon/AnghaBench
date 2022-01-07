; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_update_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_update_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.rt2560_softc* }
%struct.rt2560_softc = type { i32 }

@RAL_SIFS = common dso_local global i32 0, align 4
@RT2560_TXRX_TURNAROUND = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@RT2560_CSR11 = common dso_local global i32 0, align 4
@RT2560_CSR18 = common dso_local global i32 0, align 4
@RT2560_CSR19 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"setting slottime to %uus\0A\00", align 1
@IEEE80211_DUR_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rt2560_update_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_update_slot(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 1
  %12 = load %struct.rt2560_softc*, %struct.rt2560_softc** %11, align 8
  store %struct.rt2560_softc* %12, %struct.rt2560_softc** %3, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = call i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @RAL_SIFS, align 4
  %16 = load i32, i32* @RT2560_TXRX_TURNAROUND, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @IEEE80211_DUR_DIFS(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 364, i32 60
  store i32 %30, i32* %8, align 4
  %31 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %32 = load i32, i32* @RT2560_CSR11, align 4
  %33 = call i32 @RAL_READ(%struct.rt2560_softc* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, -7937
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %40 = load i32, i32* @RT2560_CSR11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @RAL_WRITE(%struct.rt2560_softc* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %48 = load i32, i32* @RT2560_CSR18, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @RAL_WRITE(%struct.rt2560_softc* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %56 = load i32, i32* @RT2560_CSR19, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @RAL_WRITE(%struct.rt2560_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @DPRINTF(%struct.rt2560_softc* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_DUR_DIFS(i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.rt2560_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
