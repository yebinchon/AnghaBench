; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_link_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.TYPE_2__*, %struct.bxe_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32, i32, i32, i64 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATUS_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@LINK_STATUS_TX_FLOW_CONTROL_ENABLED = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@LINK_STATUS_RX_FLOW_CONTROL_ENABLED = common dso_local global i32 0, align 4
@ELINK_STATUS_NO_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Found errors on XMAC\0A\00", align 1
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i32 0, align 4
@ELINK_LED_MODE_OPER = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@SHMEM_EEE_LPI_REQUESTED_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Enabling LPI assertion\0A\00", align 1
@MISC_REG_CPMU_LP_FW_ENABLE_P0 = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_DR_ENABLE = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_MASK_ENT_P0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Found errors on BMAC\0A\00", align 1
@ELINK_SPEED_10000 = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@PHY_SGMII_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@ELINK_INT_PHY = common dso_local global i32 0, align 4
@ELINK_MAX_PHYS = common dso_local global i32 0, align 4
@ELINK_FLAGS_TX_ERROR_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i32)* @elink_update_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_update_link_up(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 2
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %7, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %19 = load i32, i32* @LINK_STATUS_PHYSICAL_LINK_FLAG, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %22 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %26 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %27 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %31 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i32, i32* @LINK_STATUS_TX_FLOW_CONTROL_ENABLED, align 4
  %38 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %44 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ELINK_FLOW_CTRL_RX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @LINK_STATUS_RX_FLOW_CONTROL_ENABLED, align 4
  %51 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %52 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %57 = call i64 @USES_WARPCORE(%struct.bxe_softc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %135

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %64 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %65 = call i64 @elink_xmac_enable(%struct.elink_params* %63, %struct.elink_vars* %64, i32 0)
  %66 = load i64, i64* @ELINK_STATUS_NO_LINK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %70 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %72 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %74 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %75 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %81 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %68, %62
  br label %89

85:                                               ; preds = %59
  %86 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %87 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %88 = call i32 @elink_umac_enable(%struct.elink_params* %86, %struct.elink_vars* %87, i32 0)
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %91 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %92 = load i32, i32* @ELINK_LED_MODE_OPER, align 4
  %93 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %94 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @elink_set_led(%struct.elink_params* %90, %struct.elink_vars* %91, i32 %92, i32 %95)
  %97 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %98 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %89
  %104 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %105 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SHMEM_EEE_LPI_REQUESTED_BIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %112 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %114 = load i64, i64* @MISC_REG_CPMU_LP_FW_ENABLE_P0, align 8
  %115 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %116 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %114, %119
  %121 = call i32 @REG_WR(%struct.bxe_softc* %113, i64 %120, i32 1)
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %123 = load i64, i64* @MISC_REG_CPMU_LP_DR_ENABLE, align 8
  %124 = call i32 @REG_WR(%struct.bxe_softc* %122, i64 %123, i32 1)
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %126 = load i64, i64* @MISC_REG_CPMU_LP_MASK_ENT_P0, align 8
  %127 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %128 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %126, %131
  %133 = call i32 @REG_WR(%struct.bxe_softc* %125, i64 %132, i32 64544)
  br label %134

134:                                              ; preds = %110, %103, %89
  br label %135

135:                                              ; preds = %134, %55
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %137 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %141 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %203

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %143
  %147 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %148 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %149 = call i64 @elink_bmac_enable(%struct.elink_params* %147, %struct.elink_vars* %148, i32 0, i32 1)
  %150 = load i64, i64* @ELINK_STATUS_NO_LINK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %154 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %156 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %155, i32 0, i32 5
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %158 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %159 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %165 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %152, %146
  %169 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %170 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %171 = load i32, i32* @ELINK_LED_MODE_OPER, align 4
  %172 = load i32, i32* @ELINK_SPEED_10000, align 4
  %173 = call i32 @elink_set_led(%struct.elink_params* %169, %struct.elink_vars* %170, i32 %171, i32 %172)
  br label %202

174:                                              ; preds = %143
  %175 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %176 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %177 = call i32 @elink_emac_program(%struct.elink_params* %175, %struct.elink_vars* %176)
  store i32 %177, i32* %10, align 4
  %178 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %179 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %180 = call i32 @elink_emac_enable(%struct.elink_params* %178, %struct.elink_vars* %179, i32 0)
  %181 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %182 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %174
  %188 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %189 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %187
  %195 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %196 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %200 = call i32 @elink_set_gmii_tx_driver(%struct.elink_params* %199)
  br label %201

201:                                              ; preds = %198, %194, %187, %174
  br label %202

202:                                              ; preds = %201, %168
  br label %203

203:                                              ; preds = %202, %139
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %205 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %209 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %210 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %213 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @elink_pbf_update(%struct.elink_params* %208, i32 %211, i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %207, %203
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %220 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %221 = load i32, i32* %9, align 4
  %222 = mul nsw i32 %221, 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %220, %223
  %225 = call i32 @REG_WR(%struct.bxe_softc* %219, i64 %224, i32 0)
  %226 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %227 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %228 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @elink_update_mng(%struct.elink_params* %226, i32 %229)
  %231 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %232 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %233 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @elink_update_mng_eee(%struct.elink_params* %231, i32 %234)
  %236 = load i32, i32* @ELINK_INT_PHY, align 4
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %258, %218
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @ELINK_MAX_PHYS, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %243 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %242, i32 0, i32 1
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ELINK_FLAGS_TX_ERROR_CHECK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %241
  %254 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %255 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %256 = call i32 @elink_check_half_open_conn(%struct.elink_params* %254, %struct.elink_vars* %255, i32 0)
  br label %261

257:                                              ; preds = %241
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %237

261:                                              ; preds = %253, %237
  %262 = call i32 @DELAY(i32 20000)
  %263 = load i32, i32* %10, align 4
  ret i32 %263
}

declare dso_local i64 @USES_WARPCORE(%struct.bxe_softc*) #1

declare dso_local i64 @elink_xmac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_umac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i64 @elink_bmac_enable(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @elink_emac_program(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_emac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @elink_set_gmii_tx_driver(%struct.elink_params*) #1

declare dso_local i32 @elink_pbf_update(%struct.elink_params*, i32, i32) #1

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_update_mng_eee(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_check_half_open_conn(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
