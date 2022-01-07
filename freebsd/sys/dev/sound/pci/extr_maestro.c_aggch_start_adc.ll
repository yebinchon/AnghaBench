; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_start_adc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_start_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_rchinfo = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@WAVCACHE_CHCTL_ADDRTAG_MASK = common dso_local global i32 0, align 4
@PAN_LEFT = common dso_local global i32 0, align 4
@PAN_FRONT = common dso_local global i32 0, align 4
@powerstate_active = common dso_local global i32 0, align 4
@WAVCACHE_CHCTL_STEREO = common dso_local global i32 0, align 4
@WPWA_USE_SYSMEM = common dso_local global i32 0, align 4
@APUREG_AMPLITUDE = common dso_local global i32 0, align 4
@APUREG_ROUTING = common dso_local global i32 0, align 4
@APU_DATASRC_A_SHIFT = common dso_local global i32 0, align 4
@APUREG_EFFECT_GAIN = common dso_local global i32 0, align 4
@APUREG_APUTYPE = common dso_local global i32 0, align 4
@APUTYPE_RATECONV = common dso_local global i32 0, align 4
@APU_APUTYPE_SHIFT = common dso_local global i32 0, align 4
@APU_DMA_ENABLED = common dso_local global i32 0, align 4
@APUTYPE_INPUTMIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_rchinfo*)* @aggch_start_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_start_adc(%struct.agg_rchinfo* %0) #0 {
  %2 = alloca %struct.agg_rchinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.agg_rchinfo* %0, %struct.agg_rchinfo** %2, align 8
  %9 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %10 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %11, 16
  %13 = add nsw i32 %12, 24000
  %14 = sdiv i32 %13, 48000
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 65536
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %22 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %27 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %30 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %35 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %38 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %37, i32 0, i32 6
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %36, %42
  %44 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %45 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %50 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 16
  %53 = load i32, i32* @WAVCACHE_CHCTL_ADDRTAG_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %56 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 16
  %59 = load i32, i32* @WAVCACHE_CHCTL_ADDRTAG_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @PAN_LEFT, align 4
  %62 = load i32, i32* @PAN_FRONT, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %8, align 4
  br label %93

64:                                               ; preds = %20
  %65 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %66 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %69 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %3, align 4
  %73 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %74 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %77 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %82 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 16
  %85 = load i32, i32* @WAVCACHE_CHCTL_ADDRTAG_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %88 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 16
  %91 = load i32, i32* @WAVCACHE_CHCTL_ADDRTAG_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %64, %25
  %94 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %95 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %94, i32 0, i32 6
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @agg_lock(%struct.TYPE_9__* %96)
  %98 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %99 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %101 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %100, i32 0, i32 6
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* @powerstate_active, align 4
  %104 = call i32 @agg_power(%struct.TYPE_9__* %102, i32 %103)
  %105 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %106 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %105, i32 0, i32 6
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @WAVCACHE_CHCTL_STEREO, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @wc_wrchctl(%struct.TYPE_9__* %107, i32 0, i32 %110)
  %112 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %113 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %112, i32 0, i32 6
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @WAVCACHE_CHCTL_STEREO, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @wc_wrchctl(%struct.TYPE_9__* %114, i32 1, i32 %117)
  %119 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %120 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %119, i32 0, i32 6
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @WAVCACHE_CHCTL_STEREO, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @wc_wrchctl(%struct.TYPE_9__* %121, i32 2, i32 %124)
  %126 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %127 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %126, i32 0, i32 6
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @WAVCACHE_CHCTL_STEREO, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @wc_wrchctl(%struct.TYPE_9__* %128, i32 3, i32 %131)
  %133 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %134 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %133, i32 0, i32 6
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* @WPWA_USE_SYSMEM, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %140 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %143 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %141, %144
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @apu_setparam(%struct.TYPE_9__* %135, i32 0, i32 %138, i32 %145, i32 0, i32 %146)
  %148 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %149 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %148, i32 0, i32 6
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32, i32* @APUREG_AMPLITUDE, align 4
  %152 = call i32 @wp_wrapu(%struct.TYPE_9__* %150, i32 0, i32 %151, i32 0)
  %153 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %154 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %153, i32 0, i32 6
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* @APUREG_ROUTING, align 4
  %157 = load i32, i32* @APU_DATASRC_A_SHIFT, align 4
  %158 = shl i32 2, %157
  %159 = call i32 @wp_wrapu(%struct.TYPE_9__* %155, i32 0, i32 %156, i32 %158)
  %160 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %161 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %160, i32 0, i32 6
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* @WPWA_USE_SYSMEM, align 4
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %167 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %170 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %168, %171
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @apu_setparam(%struct.TYPE_9__* %162, i32 1, i32 %165, i32 %172, i32 0, i32 %173)
  %175 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %176 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %175, i32 0, i32 6
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i32, i32* @APUREG_AMPLITUDE, align 4
  %179 = call i32 @wp_wrapu(%struct.TYPE_9__* %177, i32 1, i32 %178, i32 0)
  %180 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %181 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %180, i32 0, i32 6
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = load i32, i32* @APUREG_ROUTING, align 4
  %184 = load i32, i32* @APU_DATASRC_A_SHIFT, align 4
  %185 = shl i32 3, %184
  %186 = call i32 @wp_wrapu(%struct.TYPE_9__* %182, i32 1, i32 %183, i32 %185)
  %187 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %188 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %187, i32 0, i32 6
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = load i32, i32* @WPWA_USE_SYSMEM, align 4
  %191 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %192 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %191, i32 0, i32 6
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = ashr i32 %195, 2
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @apu_setparam(%struct.TYPE_9__* %189, i32 2, i32 %190, i32 %196, i32 %197, i32 65536)
  %199 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %200 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %199, i32 0, i32 6
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = load i32, i32* @APUREG_AMPLITUDE, align 4
  %203 = call i32 @wp_wrapu(%struct.TYPE_9__* %201, i32 2, i32 %202, i32 0)
  %204 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %205 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %204, i32 0, i32 6
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = load i32, i32* @APUREG_EFFECT_GAIN, align 4
  %208 = call i32 @wp_wrapu(%struct.TYPE_9__* %206, i32 2, i32 %207, i32 240)
  %209 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %210 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %209, i32 0, i32 6
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = load i32, i32* @APUREG_ROUTING, align 4
  %213 = load i32, i32* @APU_DATASRC_A_SHIFT, align 4
  %214 = shl i32 21, %213
  %215 = call i32 @wp_wrapu(%struct.TYPE_9__* %211, i32 2, i32 %212, i32 %214)
  %216 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %217 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %216, i32 0, i32 6
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* @WPWA_USE_SYSMEM, align 4
  %220 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %221 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %220, i32 0, i32 6
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 2
  %226 = or i32 %219, %225
  %227 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %228 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %227, i32 0, i32 6
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 2
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 0, %233
  %235 = call i32 @apu_setparam(%struct.TYPE_9__* %218, i32 3, i32 %226, i32 %232, i32 %234, i32 65536)
  %236 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %237 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %236, i32 0, i32 6
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = load i32, i32* @APUREG_AMPLITUDE, align 4
  %240 = call i32 @wp_wrapu(%struct.TYPE_9__* %238, i32 3, i32 %239, i32 0)
  %241 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %242 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %241, i32 0, i32 6
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = load i32, i32* @APUREG_EFFECT_GAIN, align 4
  %245 = call i32 @wp_wrapu(%struct.TYPE_9__* %243, i32 3, i32 %244, i32 240)
  %246 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %247 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %246, i32 0, i32 6
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load i32, i32* @APUREG_ROUTING, align 4
  %250 = load i32, i32* @APU_DATASRC_A_SHIFT, align 4
  %251 = shl i32 20, %250
  %252 = call i32 @wp_wrapu(%struct.TYPE_9__* %248, i32 3, i32 %249, i32 %251)
  %253 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %254 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %253, i32 0, i32 6
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 1, %257
  %259 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %260 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %259, i32 0, i32 6
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %258
  store i32 %264, i32* %262, align 4
  %265 = call i32 (...) @critical_enter()
  %266 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %267 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %266, i32 0, i32 6
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = load i32, i32* @APUREG_APUTYPE, align 4
  %270 = load i32, i32* @APUTYPE_RATECONV, align 4
  %271 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %272 = shl i32 %270, %271
  %273 = load i32, i32* @APU_DMA_ENABLED, align 4
  %274 = or i32 %272, %273
  %275 = or i32 %274, 15
  %276 = call i32 @wp_wrapu(%struct.TYPE_9__* %268, i32 0, i32 %269, i32 %275)
  %277 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %278 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %277, i32 0, i32 6
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = load i32, i32* @APUREG_APUTYPE, align 4
  %281 = load i32, i32* @APUTYPE_RATECONV, align 4
  %282 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = load i32, i32* @APU_DMA_ENABLED, align 4
  %285 = or i32 %283, %284
  %286 = or i32 %285, 15
  %287 = call i32 @wp_wrapu(%struct.TYPE_9__* %279, i32 1, i32 %280, i32 %286)
  %288 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %289 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %288, i32 0, i32 6
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = load i32, i32* @APUREG_APUTYPE, align 4
  %292 = load i32, i32* @APUTYPE_INPUTMIXER, align 4
  %293 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %294 = shl i32 %292, %293
  %295 = or i32 %294, 15
  %296 = call i32 @wp_wrapu(%struct.TYPE_9__* %290, i32 2, i32 %291, i32 %295)
  %297 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %298 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %297, i32 0, i32 6
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = load i32, i32* @APUREG_APUTYPE, align 4
  %301 = load i32, i32* @APUTYPE_INPUTMIXER, align 4
  %302 = load i32, i32* @APU_APUTYPE_SHIFT, align 4
  %303 = shl i32 %301, %302
  %304 = or i32 %303, 15
  %305 = call i32 @wp_wrapu(%struct.TYPE_9__* %299, i32 3, i32 %300, i32 %304)
  %306 = call i32 (...) @critical_exit()
  %307 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %308 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %307, i32 0, i32 6
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = call i32 @set_timer(%struct.TYPE_9__* %309)
  %311 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %312 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %311, i32 0, i32 6
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = call i32 @wp_starttimer(%struct.TYPE_9__* %313)
  %315 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %316 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %315, i32 0, i32 6
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = call i32 @agg_unlock(%struct.TYPE_9__* %317)
  ret void
}

declare dso_local i32 @agg_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @agg_power(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wc_wrchctl(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @apu_setparam(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wp_wrapu(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @set_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @wp_starttimer(%struct.TYPE_9__*) #1

declare dso_local i32 @agg_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
