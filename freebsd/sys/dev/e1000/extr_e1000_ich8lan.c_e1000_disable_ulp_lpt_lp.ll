; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_disable_ulp_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_disable_ulp_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_6__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM2 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V2 = common dso_local global i64 0, align 8
@e1000_ulp_state_off = common dso_local global i64 0, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@E1000_H2ME = common dso_local global i32 0, align 4
@E1000_H2ME_ULP = common dso_local global i32 0, align 4
@E1000_H2ME_ENFORCE_SETTINGS = common dso_local global i32 0, align 4
@E1000_FWSM_ULP_CFG_DONE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ULP_CONFIG_DONE cleared after %dmsec\0A\00", align 1
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_ENABLE = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1 = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_IND = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_STICKY_ULP = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_RESET_TO_SMBUS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_WOL_HOST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_INBAND_EXIT = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_EN_ULP_LANPHYPC = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_START = common dso_local global i32 0, align 4
@E1000_FEXTNVM7 = common dso_local global i32 0, align 4
@E1000_FEXTNVM7_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error in ULP disable flow: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_pch_lpt, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %49, label %17

17:                                               ; preds = %2
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_LM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_V, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @E1000_DEV_ID_PCH_I218_V2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_ulp_state_off, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %35, %29, %23, %17, %2
  store i32 0, i32* %3, align 4
  br label %283

50:                                               ; preds = %41
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = load i32, i32* @E1000_FWSM, align 4
  %53 = call i32 @E1000_READ_REG(%struct.e1000_hw* %51, i32 %52)
  %54 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %123

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = load i32, i32* @E1000_H2ME, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @E1000_H2ME_ULP, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %72 = load i32, i32* @E1000_H2ME, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %60, %57
  br label %76

76:                                               ; preds = %90, %75
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %78 = load i32, i32* @E1000_FWSM, align 4
  %79 = call i32 @E1000_READ_REG(%struct.e1000_hw* %77, i32 %78)
  %80 = load i32, i32* @E1000_FWSM_ULP_CFG_DONE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = icmp eq i32 %84, 30
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @E1000_ERR_PHY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %269

90:                                               ; preds = %83
  %91 = call i32 @msec_delay(i32 10)
  br label %76

92:                                               ; preds = %76
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %93, 10
  %95 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %100 = load i32, i32* @E1000_H2ME, align 4
  %101 = call i32 @E1000_READ_REG(%struct.e1000_hw* %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %107 = load i32, i32* @E1000_H2ME, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %106, i32 %107, i32 %108)
  br label %122

110:                                              ; preds = %92
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %112 = load i32, i32* @E1000_H2ME, align 4
  %113 = call i32 @E1000_READ_REG(%struct.e1000_hw* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @E1000_H2ME_ULP, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %119 = load i32, i32* @E1000_H2ME, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %110, %98
  br label %269

123:                                              ; preds = %50
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %127, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %130 = bitcast %struct.e1000_hw* %129 to %struct.e1000_hw.0*
  %131 = call i32 %128(%struct.e1000_hw.0* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %269

135:                                              ; preds = %123
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %140 = call i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %143 = load i32, i32* @CV_SMB_CTRL, align 4
  %144 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %142, i32 %143, i32* %8)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %141
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %149 = load i32, i32* @E1000_CTRL_EXT, align 4
  %150 = call i32 @E1000_READ_REG(%struct.e1000_hw* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = load i32, i32* @E1000_CTRL_EXT, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %154, i32 %155, i32 %156)
  %158 = call i32 @msec_delay(i32 50)
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %160 = load i32, i32* @CV_SMB_CTRL, align 4
  %161 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %159, i32 %160, i32* %8)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  br label %247

165:                                              ; preds = %147
  br label %166

166:                                              ; preds = %165, %141
  %167 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %172 = load i32, i32* @CV_SMB_CTRL, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %171, i32 %172, i32 %173)
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %176 = load i32, i32* @E1000_CTRL_EXT, align 4
  %177 = call i32 @E1000_READ_REG(%struct.e1000_hw* %175, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %183 = load i32, i32* @E1000_CTRL_EXT, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %182, i32 %183, i32 %184)
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %187 = load i32, i32* @HV_PM_CTRL, align 4
  %188 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %186, i32 %187, i32* %8)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %166
  br label %247

192:                                              ; preds = %166
  %193 = load i32, i32* @HV_PM_CTRL_K1_ENABLE, align 4
  %194 = load i32, i32* %8, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %197 = load i32, i32* @HV_PM_CTRL, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %196, i32 %197, i32 %198)
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %201 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %202 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %200, i32 %201, i32* %8)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  br label %247

206:                                              ; preds = %192
  %207 = load i32, i32* @I218_ULP_CONFIG1_IND, align 4
  %208 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @I218_ULP_CONFIG1_RESET_TO_SMBUS, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @I218_ULP_CONFIG1_EN_ULP_LANPHYPC, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @I218_ULP_CONFIG1_DISABLE_SMB_PERST, align 4
  %221 = or i32 %219, %220
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %8, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %8, align 4
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %226 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %225, i32 %226, i32 %227)
  %229 = load i32, i32* @I218_ULP_CONFIG1_START, align 4
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %233 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %232, i32 %233, i32 %234)
  %236 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %237 = load i32, i32* @E1000_FEXTNVM7, align 4
  %238 = call i32 @E1000_READ_REG(%struct.e1000_hw* %236, i32 %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* @E1000_FEXTNVM7_DISABLE_SMB_PERST, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %7, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %244 = load i32, i32* @E1000_FEXTNVM7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %206, %205, %191, %164
  %248 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %249 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %251, align 8
  %253 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %254 = bitcast %struct.e1000_hw* %253 to %struct.e1000_hw.2*
  %255 = call i32 %252(%struct.e1000_hw.2* %254)
  %256 = load i32, i32* %5, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %247
  %259 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %260 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %262, align 8
  %264 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %265 = bitcast %struct.e1000_hw* %264 to %struct.e1000_hw.1*
  %266 = call i32 %263(%struct.e1000_hw.1* %265)
  %267 = call i32 @msec_delay(i32 50)
  br label %268

268:                                              ; preds = %258, %247
  br label %269

269:                                              ; preds = %268, %134, %122, %87
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* %6, align 4
  %274 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %273)
  br label %281

275:                                              ; preds = %269
  %276 = load i64, i64* @e1000_ulp_state_off, align 8
  %277 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %278 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  store i64 %276, i64* %280, align 8
  br label %281

281:                                              ; preds = %275, %272
  %282 = load i32, i32* %6, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %281, %49
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
