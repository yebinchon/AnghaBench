; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_gaintbl_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_gaintbl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_txgain_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_phy_lp_gaintbl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_gaintbl_write(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_txgain_entry, align 4
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.bwn_txgain_entry, %struct.bwn_txgain_entry* %4, i32 0, i32 0
  store i32 %2, i32* %7, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.bwn_txgain_entry, %struct.bwn_txgain_entry* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bwn_phy_lp_gaintbl_write_r2(%struct.bwn_mac* %14, i32 %15, i32 %17)
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.bwn_txgain_entry, %struct.bwn_txgain_entry* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bwn_phy_lp_gaintbl_write_r01(%struct.bwn_mac* %20, i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @bwn_phy_lp_gaintbl_write_r2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_gaintbl_write_r01(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
