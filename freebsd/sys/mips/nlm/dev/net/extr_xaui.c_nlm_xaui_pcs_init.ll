; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xaui.c_nlm_xaui_pcs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xaui.c_nlm_xaui_pcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM_XAUI = common dso_local global i32 0, align 4
@LANE_CFG = common dso_local global i32 0, align 4
@LANE_CFG_CPLX_0_1 = common dso_local global i32 0, align 4
@LANE_CFG_CPLX_2_3 = common dso_local global i32 0, align 4
@PHY_LANE_0_CTRL = common dso_local global i32 0, align 4
@PHY_LANE_3_CTRL = common dso_local global i32 0, align 4
@PHYMODE_XAUI = common dso_local global i32 0, align 4
@PHY = common dso_local global i32 0, align 4
@LANE_TX_CLK = common dso_local global i32 0, align 4
@LANE_RX_CLK = common dso_local global i32 0, align 4
@XAUI_LANE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_xaui_pcs_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @LM_XAUI, align 4
  %12 = load i32, i32* @LM_XAUI, align 4
  %13 = shl i32 %12, 4
  %14 = or i32 %11, %13
  %15 = load i32, i32* @LM_XAUI, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* @LM_XAUI, align 4
  %19 = shl i32 %18, 12
  %20 = or i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %207

24:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @LANE_CFG, align 4
  %32 = load i32, i32* @LANE_CFG_CPLX_0_1, align 4
  %33 = call i32 @NAE_REG(i32 %30, i32 %31, i32 %32)
  %34 = call i8* @nlm_read_nae_reg(i32 %29, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -65536
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 65535
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @LANE_CFG, align 4
  %60 = load i32, i32* @LANE_CFG_CPLX_0_1, align 4
  %61 = call i32 @NAE_REG(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @nlm_write_nae_reg(i32 %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %24
  store i32 0, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 12
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @LANE_CFG, align 4
  %72 = load i32, i32* @LANE_CFG_CPLX_2_3, align 4
  %73 = call i32 @NAE_REG(i32 %70, i32 %71, i32 %72)
  %74 = call i8* @nlm_read_nae_reg(i32 %69, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, -65536
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %79, %68
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 65535
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %89, %85
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @LANE_CFG, align 4
  %100 = load i32, i32* @LANE_CFG_CPLX_2_3, align 4
  %101 = call i32 @NAE_REG(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @nlm_write_nae_reg(i32 %97, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %64
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %141, %104
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %141

115:                                              ; preds = %108
  %116 = load i32, i32* @PHY_LANE_0_CTRL, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %137, %115
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @PHY_LANE_3_CTRL, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = call i32 (...) @nlm_is_xlp8xx_ax()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @PHYMODE_XAUI, align 4
  %129 = call i32 @xlp_nae_lane_reset_txpll(i32 %125, i32 %126, i32 %127, i32 %128)
  br label %136

130:                                              ; preds = %121
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @PHYMODE_XAUI, align 4
  %135 = call i32 @xlp_ax_nae_lane_reset_txpll(i32 %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %124
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %117

140:                                              ; preds = %117
  br label %141

141:                                              ; preds = %140, %114
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %105

144:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %204, %144
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %207

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = shl i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %204

155:                                              ; preds = %148
  %156 = load i32, i32* @PHY_LANE_0_CTRL, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %200, %155
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @PHY_LANE_3_CTRL, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %203

161:                                              ; preds = %157
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @PHY, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, 4
  %166 = call i32 @NAE_REG(i32 %162, i32 %163, i32 %165)
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %172, %161
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i8* @nlm_read_nae_reg(i32 %168, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @LANE_TX_CLK, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %167, label %177

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %183, %177
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i8* @nlm_read_nae_reg(i32 %179, i32 %180)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @LANE_RX_CLK, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %178, label %188

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %194, %188
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i8* @nlm_read_nae_reg(i32 %190, i32 %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @XAUI_LANE_FAULT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %189, label %199

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %157

203:                                              ; preds = %157
  br label %204

204:                                              ; preds = %203, %154
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %145

207:                                              ; preds = %23, %145
  ret void
}

declare dso_local i8* @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i32 @xlp_nae_lane_reset_txpll(i32, i32, i32, i32) #1

declare dso_local i32 @xlp_ax_nae_lane_reset_txpll(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
