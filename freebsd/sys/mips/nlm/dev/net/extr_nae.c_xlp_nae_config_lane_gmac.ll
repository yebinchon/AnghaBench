; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_nae_config_lane_gmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_xlp_nae_config_lane_gmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM_SGMII = common dso_local global i32 0, align 4
@LANE_CFG = common dso_local global i32 0, align 4
@LANE_CFG_CPLX_0_1 = common dso_local global i32 0, align 4
@LANE_CFG_CPLX_2_3 = common dso_local global i32 0, align 4
@LANE_CFG_CPLX_4 = common dso_local global i32 0, align 4
@PHY_LANE_0_CTRL = common dso_local global i32 0, align 4
@PHY_LANE_1_CTRL = common dso_local global i32 0, align 4
@PHYMODE_SGMII = common dso_local global i32 0, align 4
@PHY_LANE_3_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlp_nae_config_lane_gmac(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @LM_SGMII, align 4
  %10 = load i32, i32* @LM_SGMII, align 4
  %11 = shl i32 %10, 4
  %12 = or i32 %9, %11
  %13 = load i32, i32* @LM_SGMII, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %12, %14
  %16 = load i32, i32* @LM_SGMII, align 4
  %17 = shl i32 %16, 12
  %18 = or i32 %15, %17
  store i32 %18, i32* %7, align 4
  store i32 7, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @LANE_CFG, align 4
  %42 = load i32, i32* @LANE_CFG_CPLX_0_1, align 4
  %43 = call i32 @NAE_REG(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @nlm_write_nae_reg(i32 %39, i32 %43, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 16
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @LANE_CFG, align 4
  %67 = load i32, i32* @LANE_CFG_CPLX_2_3, align 4
  %68 = call i32 @NAE_REG(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @nlm_write_nae_reg(i32 %64, i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 16
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %63
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @LANE_CFG, align 4
  %78 = load i32, i32* @LANE_CFG_CPLX_4, align 4
  %79 = call i32 @NAE_REG(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @LM_SGMII, align 4
  %81 = shl i32 %80, 4
  %82 = load i32, i32* @LM_SGMII, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @nlm_write_nae_reg(i32 %75, i32 %79, i32 %83)
  %85 = load i32, i32* @PHY_LANE_0_CTRL, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %104, %74
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @PHY_LANE_1_CTRL, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = call i32 (...) @nlm_is_xlp8xx_ax()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PHYMODE_SGMII, align 4
  %97 = call i32 @xlp_nae_lane_reset_txpll(i32 %94, i32 4, i32 %95, i32 %96)
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PHYMODE_SGMII, align 4
  %102 = call i32 @xlp_ax_nae_lane_reset_txpll(i32 %99, i32 4, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %86

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %63
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %145, %108
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %148

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %145

119:                                              ; preds = %112
  %120 = load i32, i32* @PHY_LANE_0_CTRL, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %141, %119
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @PHY_LANE_3_CTRL, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = call i32 (...) @nlm_is_xlp8xx_ax()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @PHYMODE_SGMII, align 4
  %133 = call i32 @xlp_nae_lane_reset_txpll(i32 %129, i32 %130, i32 %131, i32 %132)
  br label %140

134:                                              ; preds = %125
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @PHYMODE_SGMII, align 4
  %139 = call i32 @xlp_ax_nae_lane_reset_txpll(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %128
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %121

144:                                              ; preds = %121
  br label %145

145:                                              ; preds = %144, %118
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %109

148:                                              ; preds = %109
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i32) #1

declare dso_local i32 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i32 @xlp_nae_lane_reset_txpll(i32, i32, i32, i32) #1

declare dso_local i32 @xlp_ax_nae_lane_reset_txpll(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
