; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_txgain_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_txgain_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_set_txgain_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_set_txgain_override(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %11 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %9, i32 %10, i32 256)
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %15 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %13, i32 %14, i32 128)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %18 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %16, i32 %17, i32 16384)
  br label %19

19:                                               ; preds = %12, %8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %22 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %20, i32 %21, i32 64)
  ret void
}

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
