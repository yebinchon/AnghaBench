; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_reset_pllbias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_reset_pllbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BWN_B2062_S_RFPLLCTL2 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM5354 = common dso_local global i64 0, align 8
@BWN_B2062_N_COM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_b2062_reset_pllbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_b2062_reset_pllbias(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 0
  %6 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  store %struct.bwn_softc* %6, %struct.bwn_softc** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = load i32, i32* @BWN_B2062_S_RFPLLCTL2, align 4
  %9 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %7, i32 %8, i32 255)
  %10 = call i32 @DELAY(i32 20)
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BHND_CHIPID_BCM5354, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %19 = load i32, i32* @BWN_B2062_N_COM1, align 4
  %20 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %18, i32 %19, i32 4)
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = load i32, i32* @BWN_B2062_S_RFPLLCTL2, align 4
  %23 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %21, i32 %22, i32 4)
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = load i32, i32* @BWN_B2062_S_RFPLLCTL2, align 4
  %27 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %17
  %29 = call i32 @DELAY(i32 5)
  ret void
}

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
