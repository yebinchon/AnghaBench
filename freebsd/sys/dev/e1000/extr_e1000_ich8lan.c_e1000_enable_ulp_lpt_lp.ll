; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_enable_ulp_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_enable_ulp_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM2 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V2 = common dso_local global i64 0, align 8
@e1000_ulp_state_on = common dso_local global i64 0, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@E1000_H2ME = common dso_local global i32 0, align 4
@E1000_H2ME_ULP = common dso_local global i32 0, align 4
@E1000_H2ME_ENFORCE_SETTINGS = common dso_local global i32 0, align 4
@E1000_FEXT = common dso_local global i32 0, align 4
@E1000_FEXT_PHY_CABLE_DISCONNECTED = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"CABLE_DISCONNECTED %s set after %dmsec\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@HV_OEM_BITS = common dso_local global i32 0, align 4
@HV_OEM_BITS_LPLU = common dso_local global i32 0, align 4
@HV_OEM_BITS_GBE_DIS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1 = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_RESET_TO_SMBUS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@E1000_WUFC = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_WOL_HOST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_STICKY_ULP = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_INBAND_EXIT = common dso_local global i32 0, align 4
@E1000_FEXTNVM7 = common dso_local global i32 0, align 4
@E1000_FEXTNVM7_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Error in ULP enable flow: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_enable_ulp_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_pch_lpt, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %50, label %18

18:                                               ; preds = %2
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_LM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %50, label %24

24:                                               ; preds = %18
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_V, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %24
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM2, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @E1000_DEV_ID_PCH_I218_V2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @e1000_ulp_state_on, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %36, %30, %24, %18, %2
  store i64 0, i64* %3, align 8
  br label %311

51:                                               ; preds = %42
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %53 = load i32, i32* @E1000_FWSM, align 4
  %54 = call i32 @E1000_READ_REG(%struct.e1000_hw* %52, i32 %53)
  %55 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %60 = load i32, i32* @E1000_H2ME, align 4
  %61 = call i32 @E1000_READ_REG(%struct.e1000_hw* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @E1000_H2ME_ULP, align 4
  %63 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = load i32, i32* @E1000_H2ME, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %67, i32 %68, i32 %69)
  br label %297

71:                                               ; preds = %51
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %112, label %74

74:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %98, %74
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %77 = load i32, i32* @E1000_FEXT, align 4
  %78 = call i32 @E1000_READ_REG(%struct.e1000_hw* %76, i32 %77)
  %79 = load i32, i32* @E1000_FEXT_PHY_CABLE_DISCONNECTED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %85 = load i32, i32* @E1000_STATUS, align 4
  %86 = call i32 @E1000_READ_REG(%struct.e1000_hw* %84, i32 %85)
  %87 = load i32, i32* @E1000_STATUS_LU, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64, i64* @E1000_ERR_PHY, align 8
  %92 = sub nsw i64 0, %91
  store i64 %92, i64* %3, align 8
  br label %311

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = icmp eq i32 %94, 100
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %100

98:                                               ; preds = %93
  %99 = call i32 @msec_delay(i32 50)
  br label %75

100:                                              ; preds = %97, %75
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %102 = load i32, i32* @E1000_FEXT, align 4
  %103 = call i32 @E1000_READ_REG(%struct.e1000_hw* %101, i32 %102)
  %104 = load i32, i32* @E1000_FEXT_PHY_CABLE_DISCONNECTED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 %109, 50
  %111 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %108, i32 %110)
  br label %112

112:                                              ; preds = %100, %71
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %114 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %116, align 8
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %119 = bitcast %struct.e1000_hw* %118 to %struct.e1000_hw.1*
  %120 = call i64 %117(%struct.e1000_hw.1* %119)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %297

124:                                              ; preds = %112
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %126 = load i32, i32* @CV_SMB_CTRL, align 4
  %127 = call i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %125, i32 %126, i32* %8)
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %288

131:                                              ; preds = %124
  %132 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %136 = load i32, i32* @CV_SMB_CTRL, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %135, i32 %136, i32 %137)
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %140 = load i32, i32* @E1000_CTRL_EXT, align 4
  %141 = call i32 @E1000_READ_REG(%struct.e1000_hw* %139, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %146 = load i32, i32* @E1000_CTRL_EXT, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %145, i32 %146, i32 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @e1000_phy_i217, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %131
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 6
  br i1 %160, label %161, label %183

161:                                              ; preds = %155
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %163 = load i32, i32* @HV_OEM_BITS, align 4
  %164 = call i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %162, i32 %163, i32* %9)
  store i64 %164, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %288

168:                                              ; preds = %161
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %171 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %176 = load i32, i32* @HV_OEM_BITS, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %175, i32 %176, i32 %177)
  store i64 %178, i64* %7, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %288

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %155, %131
  %184 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %185 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %186 = call i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %184, i32 %185, i32* %8)
  store i64 %186, i64* %7, align 8
  %187 = load i64, i64* %7, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %288

190:                                              ; preds = %183
  %191 = load i32, i32* @I218_ULP_CONFIG1_RESET_TO_SMBUS, align 4
  %192 = load i32, i32* @I218_ULP_CONFIG1_DISABLE_SMB_PERST, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* %8, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %190
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %200 = load i32, i32* @E1000_WUFC, align 4
  %201 = call i32 @E1000_READ_REG(%struct.e1000_hw* %199, i32 %200)
  %202 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %214

209:                                              ; preds = %198
  %210 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %8, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %209, %205
  %215 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %8, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %8, align 4
  br label %234

222:                                              ; preds = %190
  %223 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %224 = load i32, i32* %8, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %8, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %222, %214
  %235 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %236 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %235, i32 %236, i32 %237)
  %239 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %240 = load i32, i32* @E1000_FEXTNVM7, align 4
  %241 = call i32 @E1000_READ_REG(%struct.e1000_hw* %239, i32 %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* @E1000_FEXTNVM7_DISABLE_SMB_PERST, align 4
  %243 = load i32, i32* %6, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %6, align 4
  %245 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %246 = load i32, i32* @E1000_FEXTNVM7, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %245, i32 %246, i32 %247)
  %249 = load i32, i32* @I218_ULP_CONFIG1_START, align 4
  %250 = load i32, i32* %8, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %8, align 4
  %252 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %253 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %254 = load i32, i32* %8, align 4
  %255 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %252, i32 %253, i32 %254)
  %256 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %257 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @e1000_phy_i217, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %287

262:                                              ; preds = %234
  %263 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %264 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 6
  br i1 %267, label %268, label %287

268:                                              ; preds = %262
  %269 = load i32, i32* %5, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %287

271:                                              ; preds = %268
  %272 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %273 = load i32, i32* @E1000_STATUS, align 4
  %274 = call i32 @E1000_READ_REG(%struct.e1000_hw* %272, i32 %273)
  %275 = load i32, i32* @E1000_STATUS_LU, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %271
  %279 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %280 = load i32, i32* @HV_OEM_BITS, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %279, i32 %280, i32 %281)
  store i64 %282, i64* %7, align 8
  %283 = load i64, i64* %7, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %278
  br label %288

286:                                              ; preds = %278
  br label %287

287:                                              ; preds = %286, %271, %268, %262, %234
  br label %288

288:                                              ; preds = %287, %285, %189, %181, %167, %130
  %289 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %290 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %292, align 8
  %294 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %295 = bitcast %struct.e1000_hw* %294 to %struct.e1000_hw.0*
  %296 = call i32 %293(%struct.e1000_hw.0* %295)
  br label %297

297:                                              ; preds = %288, %123, %58
  %298 = load i64, i64* %7, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i64, i64* %7, align 8
  %302 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %301)
  br label %309

303:                                              ; preds = %297
  %304 = load i64, i64* @e1000_ulp_state_on, align 8
  %305 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %306 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  store i64 %304, i64* %308, align 8
  br label %309

309:                                              ; preds = %303, %300
  %310 = load i64, i64* %7, align 8
  store i64 %310, i64* %3, align 8
  br label %311

311:                                              ; preds = %309, %90, %50
  %312 = load i64, i64* %3, align 8
  ret i64 %312
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i8*, i32) #1

declare dso_local i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
