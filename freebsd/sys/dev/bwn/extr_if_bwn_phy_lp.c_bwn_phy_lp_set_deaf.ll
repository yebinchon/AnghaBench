; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_deaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_deaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32, i32 }

@BWN_PHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i64)* @bwn_phy_lp_set_deaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_set_deaf(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwn_phy_lp*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.bwn_phy_lp* %8, %struct.bwn_phy_lp** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %13 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %19 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %20 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %18, i32 %19, i32 65311, i32 128)
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
