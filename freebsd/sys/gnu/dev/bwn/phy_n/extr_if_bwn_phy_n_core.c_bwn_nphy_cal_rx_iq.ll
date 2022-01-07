; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_cal_rx_iq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_cal_rx_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_nphy_txgains = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i64, i32)* @bwn_nphy_cal_rx_iq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_cal_rx_iq(%struct.bwn_mac* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_nphy_txgains, align 4
  %7 = alloca %struct.bwn_mac*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %6, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 7
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %19 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bwn_nphy_rev3_cal_rx_iq(%struct.bwn_mac* %24, i32 %28, i64 %25, i32 %26)
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %17
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bwn_nphy_rev2_cal_rx_iq(%struct.bwn_mac* %31, i32 %35, i64 %32, i32 %33)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @bwn_nphy_rev3_cal_rx_iq(%struct.bwn_mac*, i32, i64, i32) #1

declare dso_local i32 @bwn_nphy_rev2_cal_rx_iq(%struct.bwn_mac*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
