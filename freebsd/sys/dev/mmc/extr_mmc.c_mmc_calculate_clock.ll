; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_calculate_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_calculate_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32*, i32 }
%struct.mmc_ivars = type { i32, i32, i32 }

@bus_timing_max = common dso_local global i32 0, align 4
@bus_timing_normal = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@mmc_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"setting transfer rate to %d.%03dMHz (%s timing)\0A\00", align 1
@bus_timing_mmc_hs400 = common dso_local global i32 0, align 4
@bus_timing_mmc_hs200 = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Card at relative address %d failed to select\0A\00", align 1
@bus_timing_mmc_hs400es = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed to set VCCQ for card at relative address %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Card at relative address %d failed to set bus width\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Card at relative address %d failed to set %s timing\0A\00", align 1
@bus_timing_mmc_ddr52 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"Card at relative address %d failed to execute initial tuning\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Card at relative address %d failed to set power class\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*)* @mmc_calculate_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_calculate_clock(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_ivars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %13 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mmcbr_get_f_max(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @bus_timing_max, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %84, %1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %80, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mmc_ivars* @device_get_ivars(i32 %33)
  store %struct.mmc_ivars* %34, %struct.mmc_ivars** %4, align 8
  %35 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @isclr(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @mmc_host_timing(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %40, %26
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %66, %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @bus_timing_normal, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %53, i32 0, i32 0
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @isset(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @mmc_host_timing(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %48

69:                                               ; preds = %63, %48
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @mmc_timing_to_dtr(%struct.mmc_ivars* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %7, align 4
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %20

83:                                               ; preds = %20
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %19, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @mmc_debug, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sdiv i32 %95, 1000000
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 1000
  %99 = srem i32 %98, 1000
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @mmc_timing_to_string(i32 %100)
  %102 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %93, %90
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @bus_timing_mmc_hs400, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @bus_timing_mmc_hs200, align 4
  br label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %307, %114
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %310

122:                                              ; preds = %116
  %123 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %124 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.mmc_ivars* @device_get_ivars(i32 %129)
  store %struct.mmc_ivars* %130, %struct.mmc_ivars** %4, align 8
  %131 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @bus_timing_normal, align 4
  %135 = shl i32 1, %134
  %136 = xor i32 %135, -1
  %137 = and i32 %133, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  br label %264

140:                                              ; preds = %122
  %141 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %142 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %8, align 4
  %144 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i64 @mmc_select_card(%struct.mmc_softc* %144, i32 %145)
  %147 = load i64, i64* @MMC_ERR_NONE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %307

153:                                              ; preds = %140
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @bus_timing_mmc_hs200, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @bus_timing_mmc_hs400es, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %157, %153
  %162 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %163 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i64 @mmc_set_vccq(%struct.mmc_softc* %162, %struct.mmc_ivars* %163, i32 %164)
  %166 = load i64, i64* @MMC_ERR_NONE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  br label %307

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %157
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @bus_timing_mmc_hs200, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %173
  %178 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %179 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @mmc_set_card_bus_width(%struct.mmc_softc* %178, %struct.mmc_ivars* %179, i32 %180)
  %182 = load i64, i64* @MMC_ERR_NONE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  br label %307

188:                                              ; preds = %177
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %191 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @mmcbr_set_bus_width(i32 %189, i32 %192)
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @mmcbr_update_ios(i32 %194)
  br label %216

196:                                              ; preds = %173
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @bus_timing_mmc_hs400es, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %202 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i64 @mmc_switch_to_hs400(%struct.mmc_softc* %201, %struct.mmc_ivars* %202, i32 %203, i32 %204)
  %206 = load i64, i64* @MMC_ERR_NONE, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @mmc_timing_to_string(i32 %211)
  %213 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %210, i32 %212)
  br label %307

214:                                              ; preds = %200
  br label %296

215:                                              ; preds = %196
  br label %216

216:                                              ; preds = %215, %188
  %217 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %218 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i64 @mmc_set_timing(%struct.mmc_softc* %217, %struct.mmc_ivars* %218, i32 %219)
  %221 = load i64, i64* @MMC_ERR_NONE, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @mmc_timing_to_string(i32 %226)
  %228 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %227)
  br label %307

229:                                              ; preds = %216
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @bus_timing_mmc_ddr52, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %263

233:                                              ; preds = %229
  %234 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %235 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %236 = load i32, i32* %10, align 4
  %237 = call i64 @mmc_set_card_bus_width(%struct.mmc_softc* %234, %struct.mmc_ivars* %235, i32 %236)
  %238 = load i64, i64* @MMC_ERR_NONE, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %241, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %242)
  br label %307

244:                                              ; preds = %233
  %245 = load i32, i32* %3, align 4
  %246 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %247 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @mmcbr_set_bus_width(i32 %245, i32 %248)
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @mmcbr_update_ios(i32 %250)
  %252 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %253 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %254 = load i32, i32* %10, align 4
  %255 = call i64 @mmc_set_vccq(%struct.mmc_softc* %252, %struct.mmc_ivars* %253, i32 %254)
  %256 = load i64, i64* @MMC_ERR_NONE, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %244
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* %8, align 4
  %261 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %259, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %260)
  br label %307

262:                                              ; preds = %244
  br label %263

263:                                              ; preds = %262, %229
  br label %264

264:                                              ; preds = %263, %139
  %265 = load i32, i32* %3, align 4
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @mmcbr_set_clock(i32 %265, i32 %266)
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @mmcbr_update_ios(i32 %268)
  %270 = load i32, i32* %3, align 4
  %271 = load i32, i32* %12, align 4
  %272 = call i64 @mmcbr_tune(i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %264
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* %8, align 4
  %277 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %276)
  br label %307

278:                                              ; preds = %264
  %279 = load i32, i32* %12, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %295

281:                                              ; preds = %278
  %282 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %283 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %9, align 4
  %286 = call i64 @mmc_switch_to_hs400(%struct.mmc_softc* %282, %struct.mmc_ivars* %283, i32 %284, i32 %285)
  %287 = load i64, i64* @MMC_ERR_NONE, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %281
  %290 = load i32, i32* %3, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @mmc_timing_to_string(i32 %292)
  %294 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %290, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %291, i32 %293)
  br label %307

295:                                              ; preds = %281, %278
  br label %296

296:                                              ; preds = %295, %214
  %297 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %298 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %299 = call i64 @mmc_set_power_class(%struct.mmc_softc* %297, %struct.mmc_ivars* %298)
  %300 = load i64, i64* @MMC_ERR_NONE, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load i32, i32* %3, align 4
  %304 = load i32, i32* %8, align 4
  %305 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %303, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %302, %296
  br label %307

307:                                              ; preds = %306, %289, %274, %258, %240, %223, %208, %184, %168, %149
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %5, align 4
  br label %116

310:                                              ; preds = %116
  %311 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %312 = call i64 @mmc_select_card(%struct.mmc_softc* %311, i32 0)
  %313 = load i32, i32* %7, align 4
  ret i32 %313
}

declare dso_local i32 @mmcbr_get_f_max(i32) #1

declare dso_local %struct.mmc_ivars* @device_get_ivars(i32) #1

declare dso_local i64 @isclr(i32*, i32) #1

declare dso_local i64 @mmc_host_timing(i32, i32) #1

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @mmc_timing_to_dtr(%struct.mmc_ivars*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @mmc_timing_to_string(i32) #1

declare dso_local i64 @mmc_select_card(%struct.mmc_softc*, i32) #1

declare dso_local i64 @mmc_set_vccq(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i64 @mmc_set_card_bus_width(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

declare dso_local i64 @mmc_switch_to_hs400(%struct.mmc_softc*, %struct.mmc_ivars*, i32, i32) #1

declare dso_local i64 @mmc_set_timing(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i64 @mmcbr_tune(i32, i32) #1

declare dso_local i64 @mmc_set_power_class(%struct.mmc_softc*, %struct.mmc_ivars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
