; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_ack_preamble.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_ack_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@R92C_WMAC_TRXPTCL_CTL = common dso_local global i32 0, align 4
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@R92C_WMAC_TRXPTCL_SHPRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_set_ack_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_set_ack_preamble(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 0
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i32, i32* @R92C_WMAC_TRXPTCL_CTL, align 4
  %9 = call i32 @rtwn_read_4(%struct.rtwn_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @R92C_WMAC_TRXPTCL_SHPRE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @R92C_WMAC_TRXPTCL_SHPRE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = load i32, i32* @R92C_WMAC_TRXPTCL_CTL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rtwn_write_4(%struct.rtwn_softc* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
