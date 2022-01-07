; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_xaui_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_xaui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i64, i64, i32 }

@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_RESET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX SPU reset not completed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@SPU_CTL_LOW_POWER = common dso_local global i32 0, align 4
@BGX_MODE_RXAUI = common dso_local global i64 0, align 8
@BGX_SPUX_MISC_CONTROL = common dso_local global i32 0, align 4
@SPU_MISC_CTL_RX_DIS = common dso_local global i32 0, align 4
@SPU_MISC_CTL_INTLV_RDISP = common dso_local global i32 0, align 4
@BGX_SMUX_RX_INT = common dso_local global i32 0, align 4
@BGX_SMUX_TX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LP_CUP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LD_CUP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LD_REP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@SPU_PMD_CRTL_TRAIN_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_APPEND = common dso_local global i32 0, align 4
@SMU_TX_APPEND_FCS_D = common dso_local global i32 0, align 4
@BGX_SPUX_FEC_CONTROL = common dso_local global i32 0, align 4
@SPU_FEC_CTL_FEC_EN = common dso_local global i32 0, align 4
@BGX_SPUX_AN_CONTROL = common dso_local global i32 0, align 4
@SPU_AN_CTL_AN_EN = common dso_local global i32 0, align 4
@SPU_AN_CTL_XNP_EN = common dso_local global i32 0, align 4
@BGX_SPUX_AN_ADV = common dso_local global i32 0, align 4
@BGX_MODE_10G_KR = common dso_local global i64 0, align 8
@BGX_MODE_40G_KR = common dso_local global i64 0, align 8
@BGX_SPU_DBG_CONTROL = common dso_local global i32 0, align 4
@SPU_DBG_CTL_AN_ARB_LINK_CHK_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_CTL = common dso_local global i32 0, align 4
@SMU_TX_CTL_UNI_EN = common dso_local global i32 0, align 4
@SMU_TX_CTL_DIC_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_THRESH = common dso_local global i32 0, align 4
@BGX_SMUX_RX_JABBER = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, i32, i32)* @bgx_lmac_xaui_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_lmac_xaui_init(%struct.bgx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bgx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bgx*, %struct.bgx** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %12 = load i32, i32* @SPU_CTL_RESET, align 4
  %13 = call i32 @bgx_reg_modify(%struct.bgx* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.bgx*, %struct.bgx** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %17 = load i32, i32* @SPU_CTL_RESET, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i64 @bgx_poll_reg(%struct.bgx* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.bgx*, %struct.bgx** %5, align 8
  %23 = getelementptr inbounds %struct.bgx, %struct.bgx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %4, align 4
  br label %238

27:                                               ; preds = %3
  %28 = load %struct.bgx*, %struct.bgx** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @BGX_CMRX_CFG, align 4
  %31 = call i32 @bgx_reg_read(%struct.bgx* %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @CMR_EN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bgx*, %struct.bgx** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BGX_CMRX_CFG, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @bgx_reg_write(%struct.bgx* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.bgx*, %struct.bgx** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %44 = load i32, i32* @SPU_CTL_LOW_POWER, align 4
  %45 = call i32 @bgx_reg_modify(%struct.bgx* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.bgx*, %struct.bgx** %5, align 8
  %47 = getelementptr inbounds %struct.bgx, %struct.bgx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BGX_MODE_RXAUI, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %27
  %52 = load %struct.bgx*, %struct.bgx** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %55 = load i32, i32* @SPU_MISC_CTL_RX_DIS, align 4
  %56 = call i32 @bgx_reg_modify(%struct.bgx* %52, i32 %53, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %27
  %58 = load %struct.bgx*, %struct.bgx** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %61 = load i32, i32* @SPU_MISC_CTL_RX_DIS, align 4
  %62 = load i32, i32* @SPU_MISC_CTL_INTLV_RDISP, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @bgx_reg_modify(%struct.bgx* %58, i32 %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.bgx*, %struct.bgx** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BGX_SMUX_RX_INT, align 4
  %69 = call i32 @bgx_reg_read(%struct.bgx* %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.bgx*, %struct.bgx** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BGX_SMUX_RX_INT, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @bgx_reg_write(%struct.bgx* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.bgx*, %struct.bgx** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BGX_SMUX_TX_INT, align 4
  %78 = call i32 @bgx_reg_read(%struct.bgx* %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.bgx*, %struct.bgx** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @BGX_SMUX_TX_INT, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bgx_reg_write(%struct.bgx* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.bgx*, %struct.bgx** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @BGX_SPUX_INT, align 4
  %87 = call i32 @bgx_reg_read(%struct.bgx* %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.bgx*, %struct.bgx** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @BGX_SPUX_INT, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @bgx_reg_write(%struct.bgx* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.bgx*, %struct.bgx** %5, align 8
  %94 = getelementptr inbounds %struct.bgx, %struct.bgx* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %65
  %98 = load %struct.bgx*, %struct.bgx** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BGX_SPUX_BR_PMD_LP_CUP, align 4
  %101 = call i32 @bgx_reg_write(%struct.bgx* %98, i32 %99, i32 %100, i32 0)
  %102 = load %struct.bgx*, %struct.bgx** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @BGX_SPUX_BR_PMD_LD_CUP, align 4
  %105 = call i32 @bgx_reg_write(%struct.bgx* %102, i32 %103, i32 %104, i32 0)
  %106 = load %struct.bgx*, %struct.bgx** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @BGX_SPUX_BR_PMD_LD_REP, align 4
  %109 = call i32 @bgx_reg_write(%struct.bgx* %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.bgx*, %struct.bgx** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %113 = load i32, i32* @SPU_PMD_CRTL_TRAIN_EN, align 4
  %114 = call i32 @bgx_reg_modify(%struct.bgx* %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %97, %65
  %116 = load %struct.bgx*, %struct.bgx** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @BGX_SMUX_TX_APPEND, align 4
  %119 = load i32, i32* @SMU_TX_APPEND_FCS_D, align 4
  %120 = call i32 @bgx_reg_modify(%struct.bgx* %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.bgx*, %struct.bgx** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @BGX_SPUX_FEC_CONTROL, align 4
  %124 = call i32 @bgx_reg_read(%struct.bgx* %121, i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @SPU_FEC_CTL_FEC_EN, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load %struct.bgx*, %struct.bgx** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @BGX_SPUX_FEC_CONTROL, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @bgx_reg_write(%struct.bgx* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.bgx*, %struct.bgx** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @BGX_SPUX_AN_CONTROL, align 4
  %137 = call i32 @bgx_reg_read(%struct.bgx* %134, i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @SPU_AN_CTL_AN_EN, align 4
  %140 = load i32, i32* @SPU_AN_CTL_XNP_EN, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = and i32 %138, %142
  store i32 %143, i32* %8, align 4
  %144 = load %struct.bgx*, %struct.bgx** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @BGX_SPUX_AN_CONTROL, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @bgx_reg_write(%struct.bgx* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.bgx*, %struct.bgx** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @BGX_SPUX_AN_ADV, align 4
  %152 = call i32 @bgx_reg_read(%struct.bgx* %149, i32 %150, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load %struct.bgx*, %struct.bgx** %5, align 8
  %154 = getelementptr inbounds %struct.bgx, %struct.bgx* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BGX_MODE_10G_KR, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %115
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, 8388608
  store i32 %160, i32* %8, align 4
  br label %174

161:                                              ; preds = %115
  %162 = load %struct.bgx*, %struct.bgx** %5, align 8
  %163 = getelementptr inbounds %struct.bgx, %struct.bgx* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @BGX_MODE_40G_KR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = or i32 %168, 16777216
  store i32 %169, i32* %8, align 4
  br label %173

170:                                              ; preds = %161
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, -25165825
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = and i64 %176, -37752833
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %8, align 4
  %179 = load %struct.bgx*, %struct.bgx** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @BGX_SPUX_AN_ADV, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @bgx_reg_write(%struct.bgx* %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.bgx*, %struct.bgx** %5, align 8
  %185 = load i32, i32* @BGX_SPU_DBG_CONTROL, align 4
  %186 = call i32 @bgx_reg_read(%struct.bgx* %184, i32 0, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @SPU_DBG_CTL_AN_ARB_LINK_CHK_EN, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load %struct.bgx*, %struct.bgx** %5, align 8
  %192 = load i32, i32* @BGX_SPU_DBG_CONTROL, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @bgx_reg_write(%struct.bgx* %191, i32 0, i32 %192, i32 %193)
  %195 = load %struct.bgx*, %struct.bgx** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @BGX_CMRX_CFG, align 4
  %198 = load i32, i32* @CMR_EN, align 4
  %199 = call i32 @bgx_reg_modify(%struct.bgx* %195, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.bgx*, %struct.bgx** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %203 = call i32 @bgx_reg_read(%struct.bgx* %200, i32 %201, i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* @SPU_CTL_LOW_POWER, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %8, align 4
  %208 = load %struct.bgx*, %struct.bgx** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @bgx_reg_write(%struct.bgx* %208, i32 %209, i32 %210, i32 %211)
  %213 = load %struct.bgx*, %struct.bgx** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @BGX_SMUX_TX_CTL, align 4
  %216 = call i32 @bgx_reg_read(%struct.bgx* %213, i32 %214, i32 %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* @SMU_TX_CTL_UNI_EN, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* @SMU_TX_CTL_DIC_EN, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load %struct.bgx*, %struct.bgx** %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @BGX_SMUX_TX_CTL, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @bgx_reg_write(%struct.bgx* %224, i32 %225, i32 %226, i32 %227)
  %229 = load %struct.bgx*, %struct.bgx** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @BGX_SMUX_TX_THRESH, align 4
  %232 = call i32 @bgx_reg_modify(%struct.bgx* %229, i32 %230, i32 %231, i32 255)
  %233 = load %struct.bgx*, %struct.bgx** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @BGX_SMUX_RX_JABBER, align 4
  %236 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %237 = call i32 @bgx_reg_modify(%struct.bgx* %233, i32 %234, i32 %235, i32 %236)
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %174, %21
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
