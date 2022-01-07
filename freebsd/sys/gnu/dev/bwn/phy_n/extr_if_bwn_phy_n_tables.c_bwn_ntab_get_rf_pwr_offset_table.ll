; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_ntab_get_rf_pwr_offset_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_ntab_get_rf_pwr_offset_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__*, %struct.bwn_phy }
%struct.TYPE_2__ = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.bwn_phy = type { i32, i32 }

@bwn_ntab_rf_pwr_offset_2057_rev14_2g = common dso_local global i32* null, align 8
@bwn_ntab_rf_pwr_offset_2057_rev9_2g = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"No 2GHz RF power table available for this device\0A\00", align 1
@bwn_ntab_rf_pwr_offset_2057_rev9_5g = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"No 5GHz RF power table available for this device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bwn_ntab_get_rf_pwr_offset_table(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 1
  store %struct.bwn_phy* %11, %struct.bwn_phy** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %37 [
    i32 17, label %21
    i32 16, label %29
  ]

21:                                               ; preds = %17
  %22 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %23 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 14
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** @bwn_ntab_rf_pwr_offset_2057_rev14_2g, align 8
  store i32* %27, i32** %2, align 8
  br label %59

28:                                               ; preds = %21
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %31 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32*, i32** @bwn_ntab_rf_pwr_offset_2057_rev9_2g, align 8
  store i32* %35, i32** %2, align 8
  br label %59

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %17, %36, %28
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %39 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @BWN_ERRPRINTF(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %59

42:                                               ; preds = %1
  %43 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %44 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %54 [
    i32 16, label %46
  ]

46:                                               ; preds = %42
  %47 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %48 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32*, i32** @bwn_ntab_rf_pwr_offset_2057_rev9_5g, align 8
  store i32* %52, i32** %2, align 8
  br label %59

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %42, %53
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %56 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @BWN_ERRPRINTF(%struct.TYPE_2__* %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %59

59:                                               ; preds = %54, %51, %37, %34, %26
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
