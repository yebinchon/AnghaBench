; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_switch_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32 }

@BWN_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_phy_lp_switch_channel(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_phy*, align 8
  %7 = alloca %struct.bwn_phy_lp*, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %6, align 8
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 1
  store %struct.bwn_phy_lp* %12, %struct.bwn_phy_lp** %7, align 8
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 8291
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @bwn_phy_lp_b2063_switch_channel(%struct.bwn_mac* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %17
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bwn_phy_lp_b2062_switch_channel(%struct.bwn_mac* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @bwn_phy_lp_set_anafilter(%struct.bwn_mac* %35, i32 %36)
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ieee80211_ieee2mhz(i32 %39, i32 0)
  %41 = call i32 @bwn_phy_lp_set_gaintbl(%struct.bwn_mac* %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %7, align 8
  %45 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %47 = load i32, i32* @BWN_CHANNEL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %46, i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %32, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @bwn_phy_lp_b2063_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_b2062_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_anafilter(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_gaintbl(%struct.bwn_mac*, i32) #1

declare dso_local i32 @ieee80211_ieee2mhz(i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
