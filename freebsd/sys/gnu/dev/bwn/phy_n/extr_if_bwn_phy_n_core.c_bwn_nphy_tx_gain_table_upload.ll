; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_gain_table_upload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_gain_table_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@bwn_ntab_papd_pga_gain_delta_ipa_2g = common dso_local global i32* null, align 8
@nphy = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_gain_table_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_gain_table_upload(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  store %struct.bwn_phy* %11, %struct.bwn_phy** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = call i32* @bwn_nphy_get_tx_gain_table(%struct.bwn_mac* %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %19 = call i32 @BWN_NTAB32(i32 26, i32 192)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %18, i32 %19, i32 128, i32* %20)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %23 = call i32 @BWN_NTAB32(i32 27, i32 192)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %22, i32 %23, i32 128, i32* %24)
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %134

31:                                               ; preds = %17
  %32 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %33 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 19
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %134

37:                                               ; preds = %31
  %38 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %39 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 7
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %44 = call i32* @bwn_ntab_get_rf_pwr_offset_table(%struct.bwn_mac* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %134

48:                                               ; preds = %42
  br label %134

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %131, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %134

54:                                               ; preds = %51
  %55 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %56 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 19
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %134

60:                                               ; preds = %54
  %61 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %62 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 7
  br i1 %64, label %65, label %97

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 24
  %72 = and i32 %71, 15
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %6, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 19
  %80 = and i32 %79, 31
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %83 = call i64 @bwn_current_band(%struct.bwn_mac* %82)
  %84 = load i64, i64* @BWN_BAND_2G, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %65
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  br label %96

91:                                               ; preds = %65
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %86
  br label %117

97:                                               ; preds = %60
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 24
  %104 = and i32 %103, 15
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %6, align 8
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = call i64 @bwn_current_band(%struct.bwn_mac* %106)
  %108 = load i64, i64* @BWN_BAND_2G, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = load i32*, i32** @bwn_ntab_papd_pga_gain_delta_ipa_2g, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %5, align 4
  br label %116

115:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 576, %120
  %122 = call i32 @BWN_NTAB32(i32 26, i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @bwn_ntab_write(%struct.bwn_mac* %119, i32 %122, i32 %123)
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 576, %126
  %128 = call i32 @BWN_NTAB32(i32 27, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @bwn_ntab_write(%struct.bwn_mac* %125, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %51

134:                                              ; preds = %16, %30, %36, %47, %48, %59, %51
  ret void
}

declare dso_local i32* @bwn_nphy_get_tx_gain_table(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB32(i32, i32) #1

declare dso_local i32* @bwn_ntab_get_rf_pwr_offset_table(%struct.bwn_mac*) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
