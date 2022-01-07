; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_pwr_ctrl_coef_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_pwr_ctrl_coef_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64 }

@BWN_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_DATAHI = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@loscale = common dso_local global i32* null, align 8
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXPWR_INDX0 = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXPWR_INDX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_pwr_ctrl_coef_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_pwr_ctrl_coef_setup(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %14, align 8
  store %struct.bwn_phy_n* %15, %struct.bwn_phy_n** %3, align 8
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %27 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %24, i32 %25, i32 7, i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %73, %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1023
  %38 = shl i32 %37, 10
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1023
  %46 = or i32 %38, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 26
  %51 = shl i32 %50, 10
  %52 = or i32 %51, 320
  %53 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %47, i32 %48, i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %69, %31
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 128
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %59 = load i32, i32* @BWN_NPHY_TABLE_DATAHI, align 4
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 65535
  %63 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %58, i32 %59, i32 %62)
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %65 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %28

76:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %163, %76
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %166

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 5, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 255
  store i32 %90, i32* %10, align 4
  %91 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %92 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 26
  %95 = shl i32 %94, 10
  %96 = or i32 %95, 448
  %97 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %91, i32 %92, i32 %96)
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %99 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 3
  br i1 %102, label %103, label %112

103:                                              ; preds = %80
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 255
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 255
  %111 = or i32 %108, %110
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %103, %80
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %159, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 128
  br i1 %115, label %116, label %162

116:                                              ; preds = %113
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %118 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = load i32*, i32** @loscale, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %123, %128
  %130 = add nsw i32 %129, 128
  %131 = ashr i32 %130, 8
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** @loscale, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %132, %137
  %139 = add nsw i32 %138, 128
  %140 = ashr i32 %139, 8
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 255
  %143 = shl i32 %142, 8
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 255
  %146 = or i32 %143, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %122, %116
  %148 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %149 = load i32, i32* @BWN_NPHY_TABLE_DATAHI, align 4
  %150 = load i32, i32* %6, align 4
  %151 = ashr i32 %150, 16
  %152 = and i32 %151, 65535
  %153 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %148, i32 %149, i32 %152)
  %154 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %155 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %156, 65535
  %158 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %154, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %113

162:                                              ; preds = %113
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %77

166:                                              ; preds = %77
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %168 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %170, 3
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %174 = load i32, i32* @BWN_SHARED, align 4
  %175 = load i32, i32* @BWN_SHM_SH_NPHY_TXPWR_INDX0, align 4
  %176 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %173, i32 %174, i32 %175, i32 65535)
  %177 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %178 = load i32, i32* @BWN_SHARED, align 4
  %179 = load i32, i32* @BWN_SHM_SH_NPHY_TXPWR_INDX1, align 4
  %180 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %177, i32 %178, i32 %179, i32 65535)
  br label %181

181:                                              ; preds = %172, %166
  %182 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %183 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %188 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %187, i32 0)
  br label %189

189:                                              ; preds = %186, %181
  ret void
}

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
