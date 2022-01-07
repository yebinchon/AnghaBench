; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_setup_mac_link_82599\00", align 1
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_LINK_NO_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@ixgbe_phy_qsfp_intel = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i32 0, align 4
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = load i32, i32* @IXGBE_AUTOC, align 4
  %23 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = load i32, i32* @IXGBE_AUTOC2, align 4
  %27 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %31, i32* %18, align 4
  %32 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = call i64 @ixgbe_get_link_capabilities(%struct.ixgbe_hw* %33, i32* %18, i32* %7)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %262

38:                                               ; preds = %3
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %46, i64* %8, align 8
  br label %262

47:                                               ; preds = %38
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %74, %70, %60
  %79 = load i32, i32* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 4
  %80 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %78
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110, %103, %98
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %120, %115
  br label %196

125:                                              ; preds = %74
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %13, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %145, %141, %137
  br label %195

154:                                              ; preds = %133, %125
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %194

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %194

162:                                              ; preds = %158
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %193

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %13, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %177, %170
  %185 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %186 = load i32, i32* %13, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %13, align 4
  br label %192

188:                                              ; preds = %177
  %189 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %190 = load i32, i32* %13, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %188, %184
  br label %193

193:                                              ; preds = %192, %166, %162
  br label %194

194:                                              ; preds = %193, %158, %154
  br label %195

195:                                              ; preds = %194, %153
  br label %196

196:                                              ; preds = %195, %124
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %261

200:                                              ; preds = %196
  %201 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %202 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32)** %204, align 8
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %207 = bitcast %struct.ixgbe_hw* %206 to %struct.ixgbe_hw.0*
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @FALSE, align 4
  %210 = call i64 %205(%struct.ixgbe_hw.0* %207, i32 %208, i32 %209)
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* @IXGBE_SUCCESS, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %200
  br label %262

215:                                              ; preds = %200
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %259

218:                                              ; preds = %215
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %230, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %258

230:                                              ; preds = %226, %222, %218
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %231

231:                                              ; preds = %246, %230
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* @IXGBE_AUTO_NEG_TIME, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %237 = load i32, i32* @IXGBE_LINKS, align 4
  %238 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %236, i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %249

244:                                              ; preds = %235
  %245 = call i32 @msec_delay(i32 100)
  br label %246

246:                                              ; preds = %244
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %17, align 4
  br label %231

249:                                              ; preds = %243, %231
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %249
  %255 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %255, i64* %8, align 8
  %256 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %249
  br label %258

258:                                              ; preds = %257, %226
  br label %259

259:                                              ; preds = %258, %215
  %260 = call i32 @msec_delay(i32 50)
  br label %261

261:                                              ; preds = %259, %196
  br label %262

262:                                              ; preds = %261, %214, %45, %37
  %263 = load i64, i64* %8, align 8
  ret i64 %263
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_get_link_capabilities(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
