; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_set_rx_core_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_set_rx_core_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i64 }

@BWN_NPHY_RFSEQCA = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_RXEN = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_RXEN_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_HPANT_SWTHRES = common dso_local global i32 0, align 4
@BWN_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_nphy_set_rx_core_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_set_rx_core_state(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_n*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  store %struct.bwn_phy* %8, %struct.bwn_phy** %5, align 8
  %9 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %10 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %9, i32 0, i32 1
  %11 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  store %struct.bwn_phy_n* %11, %struct.bwn_phy_n** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %14 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %15)
  %17 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %18 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %23 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %27 = load i32, i32* @BWN_NPHY_RFSEQCA_RXEN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 3
  %31 = load i32, i32* @BWN_NPHY_RFSEQCA_RXEN_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %25, i32 %26, i32 %28, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %24
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %39 = load i32, i32* @BWN_NPHY_HPANT_SWTHRES, align 4
  %40 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %38, i32 %39, i32 1)
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %42 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %37
  br label %59

48:                                               ; preds = %24
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = load i32, i32* @BWN_NPHY_HPANT_SWTHRES, align 4
  %51 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %49, i32 %50, i32 30)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %53 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 3
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %61 = load i32, i32* @BWN_RFSEQ_RESET2RX, align 4
  %62 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %60, i32 %61)
  %63 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %64 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %69 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %72 = call i32 @bwn_mac_enable(%struct.bwn_mac* %71)
  ret void
}

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
