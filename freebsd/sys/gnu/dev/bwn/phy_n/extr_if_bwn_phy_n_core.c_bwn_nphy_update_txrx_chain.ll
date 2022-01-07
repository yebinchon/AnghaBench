; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_update_txrx_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_update_txrx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32 }

@BWN_NPHY_RFSEQCA = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_TXEN = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_RXEN = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_update_txrx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_update_txrx_chain(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %8, align 8
  store %struct.bwn_phy_n* %9, %struct.bwn_phy_n** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 51, i32* %5, align 4
  %10 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 17, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 34, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %15
  br label %22

22:                                               ; preds = %21, %14
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %25 = load i32, i32* @BWN_NPHY_RFSEQCA_TXEN, align 4
  %26 = load i32, i32* @BWN_NPHY_RFSEQCA_RXEN, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %23, i32 %24, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = load i32, i32* @BWN_NPHY_RFSEQMODE, align 4
  %36 = load i32, i32* @BWN_NPHY_RFSEQMODE_CAOVER, align 4
  %37 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %34, i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = load i32, i32* @BWN_NPHY_RFSEQMODE, align 4
  %41 = load i32, i32* @BWN_NPHY_RFSEQMODE_CAOVER, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
