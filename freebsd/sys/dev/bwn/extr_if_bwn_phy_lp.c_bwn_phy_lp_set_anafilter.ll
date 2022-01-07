; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_anafilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_anafilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i64 }

@BWN_PHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@BWN_B2063_TX_BB_SP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_phy_lp_set_anafilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_set_anafilter(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy_lp*, align 8
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store %struct.bwn_phy_lp* %9, %struct.bwn_phy_lp** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 14
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %20 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 9
  %23 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %19, i32 %20, i32 64767, i32 %22)
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %31 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %36 = call i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac* %35)
  br label %37

37:                                               ; preds = %34, %29, %18
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = load i32, i32* @BWN_B2063_TX_BB_SP3, align 4
  %41 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %39, i32 %40, i32 63)
  br label %42

42:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
