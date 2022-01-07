; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_phy_lp_iq_est = type { i32, i32 }

@BWN_PHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@BWN_B2062_N_TXCTL_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_lp_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_loopback(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp_iq_est, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  store i32 -1, i32* %5, align 4
  %7 = call i32 @memset(%struct.bwn_phy_lp_iq_est* %3, i32 0, i32 8)
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = call i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac* %8, i32 1, i32 1)
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %12 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %10, i32 %11, i32 1)
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = load i32, i32* @BWN_PHY_AFE_CTL_OVRVAL, align 4
  %15 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %13, i32 %14, i32 65534)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %18 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %16, i32 %17, i32 2048)
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %21 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %19, i32 %20, i32 2048)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %23 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %24 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %22, i32 %23, i32 8)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %27 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %25, i32 %26, i32 8)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %29 = load i32, i32* @BWN_B2062_N_TXCTL_A, align 4
  %30 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %28, i32 %29, i32 128)
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %33 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %31, i32 %32, i32 128)
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %36 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %34, i32 %35, i32 128)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %65, %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @bwn_phy_lp_set_rxgain_idx(%struct.bwn_mac* %41, i32 %42)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %45 = call i32 @bwn_phy_lp_ddfs_turnon(%struct.bwn_mac* %44, i32 1, i32 1, i32 5, i32 5, i32 0)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = call i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac* %46, i32 1000, i32 32, %struct.bwn_phy_lp_iq_est* %3)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %65

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %52, %54
  %56 = sdiv i32 %55, 1000
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 4000
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 10000
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %59, %50
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %37

68:                                               ; preds = %62, %37
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %70 = call i32 @bwn_phy_lp_ddfs_turnoff(%struct.bwn_mac* %69)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.bwn_phy_lp_iq_est*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_rxgain_idx(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_ddfs_turnon(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac*, i32, i32, %struct.bwn_phy_lp_iq_est*) #1

declare dso_local i32 @bwn_phy_lp_ddfs_turnoff(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
