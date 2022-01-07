; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_adjust_lna_gain_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_adjust_lna_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64, i64, i64 }

@bwn_nphy_adjust_lna_gain_table.lna_gain = internal constant [4 x i32] [i32 -2, i32 10, i32 19, i32 25], align 16
@BWN_BAND_2G = common dso_local global i64 0, align 8
@BWN_NPHY_C1_MINMAX_GAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C1_MINGAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C1_MINGAIN_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_C2_MINMAX_GAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C2_MINGAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C2_MINGAIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_adjust_lna_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_adjust_lna_gain_table(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %11, align 8
  store %struct.bwn_phy_n* %12, %struct.bwn_phy_n** %3, align 8
  %13 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %19 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %22 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %27 = call i64 @bwn_current_band(%struct.bwn_mac* %26)
  %28 = load i64, i64* @BWN_BAND_2G, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 6, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 6, i32* %32, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = call i32 @bwn_get_chan(%struct.bwn_mac* %34)
  %36 = mul nsw i32 315, %35
  %37 = sub nsw i32 40370, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 13
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 12
  %42 = and i32 %41, 1
  %43 = add nsw i32 %39, %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %46 = call i32 @bwn_get_chan(%struct.bwn_mac* %45)
  %47 = mul nsw i32 224, %46
  %48 = sub nsw i32 23242, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 13
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 12
  %53 = and i32 %52, 1
  %54 = add nsw i32 %50, %53
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %33, %30
  br label %60

57:                                               ; preds = %20
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %56
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %137, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %140

64:                                               ; preds = %61
  %65 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %66 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 19, %73
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %74, i32* %75, align 16
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 25, %79
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 25, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 25, %91
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %92, i32* %93, align 4
  br label %123

94:                                               ; preds = %64
  %95 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bwn_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 0), align 16
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %95, %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %100, i32* %101, align 16
  %102 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bwn_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 1), align 4
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %102, %106
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bwn_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 2), align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %109, %113
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bwn_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 3), align 4
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %116, %120
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %94, %69
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @BWN_NTAB16(i32 %125, i32 8)
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %128 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %124, i32 %126, i32 4, i32* %127)
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 23, %132
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %135
  store i32 %133, i32* %136, align 4
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %61

140:                                              ; preds = %61
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %142 = load i32, i32* @BWN_NPHY_C1_MINMAX_GAIN, align 4
  %143 = load i32, i32* @BWN_NPHY_C1_MINGAIN, align 4
  %144 = xor i32 %143, -1
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @BWN_NPHY_C1_MINGAIN_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %141, i32 %142, i32 %144, i32 %148)
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %151 = load i32, i32* @BWN_NPHY_C2_MINMAX_GAIN, align 4
  %152 = load i32, i32* @BWN_NPHY_C2_MINGAIN, align 4
  %153 = xor i32 %152, -1
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @BWN_NPHY_C2_MINGAIN_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %150, i32 %151, i32 %153, i32 %157)
  %159 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %160 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %140
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %164, i32 0)
  br label %166

166:                                              ; preds = %163, %140
  ret void
}

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_get_chan(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
