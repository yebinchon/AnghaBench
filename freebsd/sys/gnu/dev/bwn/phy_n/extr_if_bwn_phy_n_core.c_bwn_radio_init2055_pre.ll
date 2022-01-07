; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_PORFORCE = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_CHIP0PU = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_OEPORFORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_radio_init2055_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_radio_init2055_pre(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %5 = load i32, i32* @BWN_NPHY_RFCTL_CMD_PORFORCE, align 4
  %6 = xor i32 %5, -1
  %7 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %3, i32 %4, i32 %6)
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %10 = load i32, i32* @BWN_NPHY_RFCTL_CMD_CHIP0PU, align 4
  %11 = load i32, i32* @BWN_NPHY_RFCTL_CMD_OEPORFORCE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %8, i32 %9, i32 %12)
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %15 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %16 = load i32, i32* @BWN_NPHY_RFCTL_CMD_PORFORCE, align 4
  %17 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
