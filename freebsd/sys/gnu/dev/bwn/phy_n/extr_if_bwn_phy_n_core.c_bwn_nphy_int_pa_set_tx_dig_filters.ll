; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_int_pa_set_tx_dig_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_int_pa_set_tx_dig_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bwn_nphy_int_pa_set_tx_dig_filters.offset = internal constant [3 x i32] [i32 390, i32 405, i32 709], align 4
@bwn_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16 = internal constant [15 x i32] [i32 -375, i32 136, i32 -407, i32 208, i32 -1527, i32 956, i32 93, i32 186, i32 93, i32 230, i32 -44, i32 230, i32 201, i32 -191, i32 201], align 16
@tbl_tx_filter_coef_rev4 = common dso_local global i32** null, align 8
@BWN_BAND_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_int_pa_set_tx_dig_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_int_pa_set_tx_dig_filters(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* @bwn_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %8, i32 %12, i32* %17)
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %30 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %29, i32 390, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwn_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %33 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 17
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %39 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %38, i32 390, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwn_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16, i64 0, i64 0))
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %40, i32 405, i32* %43)
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %50, i32 390, i32* %53)
  br label %77

55:                                               ; preds = %45
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = call i64 @bwn_current_band(%struct.bwn_mac* %56)
  %58 = load i64, i64* @BWN_BAND_5G, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %61, i32 390, i32* %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %68 = call i32 @bwn_get_chan(%struct.bwn_mac* %67)
  %69 = icmp eq i32 %68, 14
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 6
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac* %71, i32 390, i32* %74)
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %49
  ret void
}

declare dso_local i32 @bwn_nphy_pa_set_tx_dig_filter(%struct.bwn_mac*, i32, i32*) #1

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_get_chan(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
