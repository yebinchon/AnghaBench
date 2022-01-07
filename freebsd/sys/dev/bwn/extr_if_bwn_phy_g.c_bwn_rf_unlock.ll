; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_rf_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_rf_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_PHYVER = common dso_local global i32 0, align 4
@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_RADIO_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_rf_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_rf_unlock(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = load i32, i32* @BWN_PHYVER, align 4
  %5 = call i32 @BWN_READ_2(%struct.bwn_mac* %3, i32 %4)
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = load i32, i32* @BWN_MACCTL, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* @BWN_MACCTL, align 4
  %10 = call i32 @BWN_READ_4(%struct.bwn_mac* %8, i32 %9)
  %11 = load i32, i32* @BWN_MACCTL_RADIO_LOCK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %6, i32 %7, i32 %13)
  ret void
}

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
