; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_25__, i32, i32, %struct.TYPE_26__, %struct.vpd_params }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i64 }
%struct.TYPE_27__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@F_CQ = common dso_local global i32 0, align 4
@MAX_RX_COALESCING_LEN = common dso_local global i32 0, align 4
@A_PCIX_CFG = common dso_local global i32 0, align 4
@F_DMASTOPEN = common dso_local global i32 0, align 4
@F_CLIDECEN = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_ULPTX_CONFIG = common dso_local global i32 0, align 4
@F_CFG_CQE_SOP_MASK = common dso_local global i32 0, align 4
@A_PM1_RX_CFG = common dso_local global i32 0, align 4
@A_PM1_RX_MODE = common dso_local global i32 0, align 4
@A_PM1_TX_MODE = common dso_local global i32 0, align 4
@A_PL_RST = common dso_local global i32 0, align 4
@F_FATALPERREN = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_ACT_LOW = common dso_local global i32 0, align 4
@A_CIM_HOST_ACC_DATA = common dso_local global i32 0, align 4
@A_CIM_BOOT_CFG = common dso_local global i32 0, align 4
@FW_FLASH_BOOT_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"uP initialization timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_init_hw(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpd_params*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 6
  store %struct.vpd_params* %13, %struct.vpd_params** %8, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = call i32 @calibrate_xgm_t3b(%struct.TYPE_29__* %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %24 = call i64 @calibrate_xgm(%struct.TYPE_29__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %242

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %36 = call %struct.TYPE_27__* @adap2pinfo(%struct.TYPE_29__* %35, i32 0)
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = call i32 @t3_mac_init(i32* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %41 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %39
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 4
  %49 = call i32 @partition_mem(%struct.TYPE_29__* %45, i32* %48)
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 4
  %52 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %53 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %56 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @mc7_init(i32* %51, i64 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %102, label %60

60:                                               ; preds = %44
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 3
  %63 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %64 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %67 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @mc7_init(i32* %62, i64 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %60
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 2
  %74 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %75 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %78 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @mc7_init(i32* %73, i64 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %71
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @t3_mc5_init(i32* %84, i32 %89, i32 %94, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %82, %71, %60, %44
  br label %242

103:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %115, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 32
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @F_CQ, align 4
  %111 = call i64 @clear_sge_ctxt(%struct.TYPE_29__* %108, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %242

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %104

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %39
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 4
  %124 = call i64 @tp_init(%struct.TYPE_29__* %120, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %242

127:                                              ; preds = %119
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MAX_RX_COALESCING_LEN, align 4
  %135 = call i32 @min(i32 %133, i32 %134)
  %136 = call i32 @t3_tp_set_coalescing_size(%struct.TYPE_29__* %128, i32 %135, i32 1)
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @min(i32 %142, i32 16384)
  %144 = call i32 @t3_tp_set_max_rxsize(%struct.TYPE_29__* %137, i32 %143)
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 4
  %149 = call i32 @ulp_config(%struct.TYPE_29__* %145, i32* %148)
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %151 = call i64 @is_pcie(%struct.TYPE_29__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %127
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %155 = call i32 @config_pcie(%struct.TYPE_29__* %154)
  br label %163

156:                                              ; preds = %127
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %158 = load i32, i32* @A_PCIX_CFG, align 4
  %159 = load i32, i32* @F_DMASTOPEN, align 4
  %160 = load i32, i32* @F_CLIDECEN, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @t3_set_reg_field(%struct.TYPE_29__* %157, i32 %158, i32 0, i32 %161)
  br label %163

163:                                              ; preds = %156, %153
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @T3_REV_C, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %172 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %173 = load i32, i32* @F_CFG_CQE_SOP_MASK, align 4
  %174 = call i32 @t3_set_reg_field(%struct.TYPE_29__* %171, i32 %172, i32 0, i32 %173)
  br label %175

175:                                              ; preds = %170, %163
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %177 = load i32, i32* @A_PM1_RX_CFG, align 4
  %178 = call i32 @t3_write_reg(%struct.TYPE_29__* %176, i32 %177, i32 -1)
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %180 = load i32, i32* @A_PM1_RX_MODE, align 4
  %181 = call i32 @t3_write_reg(%struct.TYPE_29__* %179, i32 %180, i32 0)
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %183 = load i32, i32* @A_PM1_TX_MODE, align 4
  %184 = call i32 @t3_write_reg(%struct.TYPE_29__* %182, i32 %183, i32 0)
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @chan_init_hw(%struct.TYPE_29__* %185, i32 %189)
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 2
  %195 = call i32 @t3_sge_init(%struct.TYPE_29__* %191, %struct.TYPE_25__* %194)
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %197 = load i32, i32* @A_PL_RST, align 4
  %198 = load i32, i32* @F_FATALPERREN, align 4
  %199 = call i32 @t3_set_reg_field(%struct.TYPE_29__* %196, i32 %197, i32 0, i32 %198)
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %201 = load i32, i32* @A_T3DBG_GPIO_ACT_LOW, align 4
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %203 = call i32 @calc_gpio_intr(%struct.TYPE_29__* %202)
  %204 = call i32 @t3_write_reg(%struct.TYPE_29__* %200, i32 %201, i32 %203)
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %206 = load i32, i32* @A_CIM_HOST_ACC_DATA, align 4
  %207 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %208 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @t3_write_reg(%struct.TYPE_29__* %205, i32 %206, i32 %211)
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %214 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %215 = load i32, i32* @FW_FLASH_BOOT_ADDR, align 4
  %216 = ashr i32 %215, 2
  %217 = call i32 @V_BOOTADDR(i32 %216)
  %218 = call i32 @t3_write_reg(%struct.TYPE_29__* %213, i32 %214, i32 %217)
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %220 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %221 = call i64 @t3_read_reg(%struct.TYPE_29__* %219, i32 %220)
  store i32 100, i32* %6, align 4
  br label %222

222:                                              ; preds = %233, %175
  %223 = call i32 @msleep(i32 20)
  br label %224

224:                                              ; preds = %222
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %226 = load i32, i32* @A_CIM_HOST_ACC_DATA, align 4
  %227 = call i64 @t3_read_reg(%struct.TYPE_29__* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %229, %224
  %234 = phi i1 [ false, %224 ], [ %232, %229 ]
  br i1 %234, label %222, label %235

235:                                              ; preds = %233
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %240 = call i32 @CH_ERR(%struct.TYPE_29__* %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %242

241:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %238, %126, %113, %102, %26
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @calibrate_xgm_t3b(%struct.TYPE_29__*) #1

declare dso_local i64 @calibrate_xgm(%struct.TYPE_29__*) #1

declare dso_local i32 @t3_mac_init(i32*) #1

declare dso_local %struct.TYPE_27__* @adap2pinfo(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @partition_mem(%struct.TYPE_29__*, i32*) #1

declare dso_local i64 @mc7_init(i32*, i64, i32) #1

declare dso_local i64 @t3_mc5_init(i32*, i32, i32, i32) #1

declare dso_local i64 @clear_sge_ctxt(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @tp_init(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @t3_tp_set_coalescing_size(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @t3_tp_set_max_rxsize(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ulp_config(%struct.TYPE_29__*, i32*) #1

declare dso_local i64 @is_pcie(%struct.TYPE_29__*) #1

declare dso_local i32 @config_pcie(%struct.TYPE_29__*) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @chan_init_hw(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @t3_sge_init(%struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local i32 @calc_gpio_intr(%struct.TYPE_29__*) #1

declare dso_local i32 @V_BOOTADDR(i32) #1

declare dso_local i64 @t3_read_reg(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @CH_ERR(%struct.TYPE_29__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
