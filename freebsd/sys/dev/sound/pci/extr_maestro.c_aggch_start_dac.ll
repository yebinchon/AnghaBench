; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_start_dac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_start_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@WAVCACHE_CHCTL_ADDRTAG_MASK = common dso_local global i32 0, align 4
@PAN_RIGHT = common dso_local global i32 0, align 4
@PAN_FRONT = common dso_local global i32 0, align 4
@WAVCACHE_CHCTL_STEREO = common dso_local global i32 0, align 4
@APUTYPE_16BITSTEREO = common dso_local global i32 0, align 4
@APUTYPE_8BITSTEREO = common dso_local global i32 0, align 4
@APUTYPE_16BITLINEAR = common dso_local global i32 0, align 4
@APUTYPE_8BITLINEAR = common dso_local global i32 0, align 4
@WAVCACHE_CHCTL_U8 = common dso_local global i32 0, align 4
@powerstate_active = common dso_local global i32 0, align 4
@WAVCACHE_WTBAR = common dso_local global i64 0, align 8
@WAVCACHE_BASEADDR_SHIFT = common dso_local global i32 0, align 4
@WPWA_STEREO = common dso_local global i32 0, align 4
@APUREG_APUTYPE = common dso_local global i32 0, align 4
@APU_APUTYPE_SHIFT = common dso_local global i32 0, align 4
@APU_DMA_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_chinfo*)* @aggch_start_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_start_dac(%struct.agg_chinfo* %0) #0 {
  %2 = alloca %struct.agg_chinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.agg_chinfo* %0, %struct.agg_chinfo** %2, align 8
  %12 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %16 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WPWA_WTBAR_SHIFT(i32 2)
  %25 = ashr i32 %23, %24
  %26 = and i32 12, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %28 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 16
  %31 = load i32, i32* @WAVCACHE_CHCTL_ADDRTAG_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %34 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %37 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 1
  %40 = or i32 %39, 32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @PAN_RIGHT, align 4
  %42 = load i32, i32* @PAN_FRONT, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %45 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %1
  %49 = load i32, i32* @WAVCACHE_CHCTL_STEREO, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %53 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* @APUTYPE_16BITSTEREO, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %3, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @APUTYPE_8BITSTEREO, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %56
  br label %79

67:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  %68 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %69 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @APUTYPE_16BITLINEAR, align 4
  store i32 %73, i32* %9, align 4
  br label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @APUTYPE_8BITLINEAR, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %72
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %81 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @WAVCACHE_CHCTL_U8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 8
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 1
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %4, align 4
  %97 = srem i32 %96, 48000
  %98 = shl i32 %97, 16
  %99 = add nsw i32 %98, 24000
  %100 = sdiv i32 %99, 48000
  %101 = load i32, i32* %4, align 4
  %102 = sdiv i32 %101, 48000
  %103 = shl i32 %102, 16
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %106 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %105, i32 0, i32 5
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = call i32 @agg_lock(%struct.TYPE_10__* %107)
  %109 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %110 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %109, i32 0, i32 5
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* @powerstate_active, align 4
  %113 = call i32 @agg_power(%struct.TYPE_10__* %111, i32 %112)
  %114 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %115 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %114, i32 0, i32 5
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* @WAVCACHE_WTBAR, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %122 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = call i32 @wc_wrreg(%struct.TYPE_10__* %116, i64 %120, i32 %125)
  %127 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %128 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %127, i32 0, i32 5
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i64, i64* @WAVCACHE_WTBAR, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = add nsw i64 %133, 1
  %135 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %136 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %139 = ashr i32 %137, %138
  %140 = call i32 @wc_wrreg(%struct.TYPE_10__* %129, i64 %134, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %172

143:                                              ; preds = %95
  %144 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %145 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i64, i64* @WAVCACHE_WTBAR, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = add nsw i64 %150, 2
  %152 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %153 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = call i32 @wc_wrreg(%struct.TYPE_10__* %146, i64 %151, i32 %156)
  %158 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %159 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %158, i32 0, i32 5
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i64, i64* @WAVCACHE_WTBAR, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = add nsw i64 %164, 3
  %166 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %167 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %170 = ashr i32 %168, %169
  %171 = call i32 @wc_wrreg(%struct.TYPE_10__* %160, i64 %165, i32 %170)
  br label %172

172:                                              ; preds = %143, %95
  %173 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %174 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %173, i32 0, i32 5
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @wc_wrchctl(%struct.TYPE_10__* %175, i32 %176, i32 %177)
  %179 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %180 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %179, i32 0, i32 5
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @wc_wrchctl(%struct.TYPE_10__* %181, i32 %183, i32 %184)
  %186 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %187 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %186, i32 0, i32 5
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @apu_setparam(%struct.TYPE_10__* %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %196 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %248

199:                                              ; preds = %172
  %200 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %201 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* @WPWA_STEREO, align 4
  %206 = ashr i32 %205, 1
  %207 = load i32, i32* %3, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %211 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %210, i32 0, i32 5
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 0, %217
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @apu_setparam(%struct.TYPE_10__* %212, i32 %214, i32 %215, i32 %216, i32 %218, i32 %219)
  %221 = call i32 (...) @critical_enter()
  %222 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %223 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %222, i32 0, i32 5
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @APUREG_APUTYPE, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load i32, i32* @APU_DMA_ENABLED, align 4
  %231 = or i32 %229, %230
  %232 = or i32 %231, 15
  %233 = call i32 @wp_wrapu(%struct.TYPE_10__* %224, i32 %225, i32 %226, i32 %232)
  %234 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %235 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %234, i32 0, i32 5
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32, i32* @APUREG_APUTYPE, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %242 = shl i32 %240, %241
  %243 = load i32, i32* @APU_DMA_ENABLED, align 4
  %244 = or i32 %242, %243
  %245 = or i32 %244, 15
  %246 = call i32 @wp_wrapu(%struct.TYPE_10__* %236, i32 %238, i32 %239, i32 %245)
  %247 = call i32 (...) @critical_exit()
  br label %261

248:                                              ; preds = %172
  %249 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %250 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %249, i32 0, i32 5
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @APUREG_APUTYPE, align 4
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* @APU_DMA_ENABLED, align 4
  %258 = or i32 %256, %257
  %259 = or i32 %258, 15
  %260 = call i32 @wp_wrapu(%struct.TYPE_10__* %251, i32 %252, i32 %253, i32 %259)
  br label %261

261:                                              ; preds = %248, %209
  %262 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %263 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = shl i32 1, %264
  %266 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %267 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %266, i32 0, i32 5
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %265
  store i32 %271, i32* %269, align 4
  %272 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %273 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %272, i32 0, i32 5
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = call i32 @set_timer(%struct.TYPE_10__* %274)
  %276 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %277 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %276, i32 0, i32 5
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = call i32 @wp_starttimer(%struct.TYPE_10__* %278)
  %280 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %281 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %280, i32 0, i32 5
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = call i32 @agg_unlock(%struct.TYPE_10__* %282)
  ret void
}

declare dso_local i32 @WPWA_WTBAR_SHIFT(i32) #1

declare dso_local i32 @agg_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @agg_power(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @wc_wrreg(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @wc_wrchctl(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @apu_setparam(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @wp_wrapu(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @set_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @wp_starttimer(%struct.TYPE_10__*) #1

declare dso_local i32 @agg_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
