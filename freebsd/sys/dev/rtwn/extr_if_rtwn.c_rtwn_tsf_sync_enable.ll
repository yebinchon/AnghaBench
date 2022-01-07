; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_tsf_sync_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_tsf_sync_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 }
%struct.rtwn_vap = type { i32, i32 }

@R92C_DUAL_TSF_RST = common dso_local global i32 0, align 4
@R92C_BCN_CTRL_DIS_TSF_UDT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"undefined opmode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.ieee80211vap*)* @rtwn_tsf_sync_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_tsf_sync_enable(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.rtwn_vap*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %5, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %10 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %9)
  store %struct.rtwn_vap* %10, %struct.rtwn_vap** %6, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %12 = load i32, i32* @R92C_DUAL_TSF_RST, align 4
  %13 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %14 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @R92C_DUAL_TSF_RESET(i32 %15)
  %17 = call i32 @rtwn_write_1(%struct.rtwn_softc* %11, i32 %12, i32 %16)
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %40 [
    i32 128, label %21
    i32 129, label %29
    i32 130, label %34
  ]

21:                                               ; preds = %2
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %23 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %24 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @R92C_BCN_CTRL(i32 %25)
  %27 = load i32, i32* @R92C_BCN_CTRL_DIS_TSF_UDT0, align 4
  %28 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %22, i32 %26, i32 %27, i32 0)
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %31 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %32 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %31, i32 0, i32 1
  %33 = call i32 @ieee80211_runtask(%struct.ieee80211com* %30, i32* %32)
  br label %34

34:                                               ; preds = %2, %29
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %36 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %37 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rtwn_beacon_enable(%struct.rtwn_softc* %35, i32 %38, i32 1)
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %34, %21
  ret void
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R92C_DUAL_TSF_RESET(i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_BCN_CTRL(i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @rtwn_beacon_enable(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
