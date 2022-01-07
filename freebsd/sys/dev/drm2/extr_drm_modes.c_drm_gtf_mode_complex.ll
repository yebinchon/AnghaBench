; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_gtf_mode_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_gtf_mode_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@GTF_CELL_GRAN = common dso_local global i32 0, align 4
@GTF_C_PRIME = common dso_local global i32 0, align 4
@GTF_MARGIN_PERCENTAGE = common dso_local global i32 0, align 4
@GTF_MIN_V_PORCH = common dso_local global i32 0, align 4
@GTF_M_PRIME = common dso_local global i32 0, align 4
@H_SYNC_PERCENT = common dso_local global i32 0, align 4
@MIN_VSYNC_PLUS_BP = common dso_local global i32 0, align 4
@V_SYNC_RQD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_gtf_mode_complex(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.drm_display_mode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %50 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %49)
  store %struct.drm_display_mode* %50, %struct.drm_display_mode** %22, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %52 = icmp ne %struct.drm_display_mode* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %10
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %11, align 8
  br label %284

54:                                               ; preds = %10
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 4
  %57 = sdiv i32 %56, 8
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = mul i32 %58, 8
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %24, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %24, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %25, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %25, align 4
  br label %75

75:                                               ; preds = %73, %70
  store i32 0, i32* %26, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %24, align 4
  %80 = mul i32 %79, 18
  %81 = add i32 %80, 500
  %82 = udiv i32 %81, 1000
  store i32 %82, i32* %26, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %26, align 4
  store i32 %84, i32* %27, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %28, align 4
  br label %89

88:                                               ; preds = %83
  store i32 0, i32* %28, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %25, align 4
  %91 = mul i32 550, %90
  %92 = sub i32 1000000, %91
  %93 = udiv i32 %92, 500
  store i32 %93, i32* %47, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %26, align 4
  %96 = mul nsw i32 2, %95
  %97 = add i32 %94, %96
  %98 = add i32 %97, 1
  %99 = mul i32 %98, 2
  %100 = load i32, i32* %28, align 4
  %101 = add i32 %99, %100
  store i32 %101, i32* %48, align 4
  %102 = load i32, i32* %48, align 4
  %103 = mul i32 %102, 1000
  %104 = load i32, i32* %25, align 4
  %105 = mul i32 %103, %104
  %106 = load i32, i32* %47, align 4
  %107 = udiv i32 %105, %106
  store i32 %107, i32* %29, align 4
  %108 = load i32, i32* %29, align 4
  %109 = mul i32 550, %108
  %110 = udiv i32 %109, 1000
  store i32 %110, i32* %30, align 4
  %111 = load i32, i32* %30, align 4
  %112 = add nsw i32 %111, 500
  %113 = sdiv i32 %112, 1000
  store i32 %113, i32* %30, align 4
  %114 = load i32, i32* %30, align 4
  %115 = sub nsw i32 %114, 3
  store i32 %115, i32* %31, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %26, align 4
  %118 = add i32 %116, %117
  %119 = load i32, i32* %27, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* %30, align 4
  %122 = add i32 %120, %121
  %123 = add i32 %122, 1
  store i32 %123, i32* %32, align 4
  %124 = load i32, i32* %29, align 4
  %125 = load i32, i32* %32, align 4
  %126 = udiv i32 %124, %125
  store i32 %126, i32* %33, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %32, align 4
  %129 = mul i32 %127, %128
  %130 = udiv i32 1000000, %129
  store i32 %130, i32* %34, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %32, align 4
  %133 = udiv i32 %131, %132
  store i32 %133, i32* %35, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %89
  %137 = load i32, i32* %35, align 4
  %138 = udiv i32 %137, 2
  store i32 %138, i32* %36, align 4
  br label %141

139:                                              ; preds = %89
  %140 = load i32, i32* %35, align 4
  store i32 %140, i32* %36, align 4
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %23, align 4
  %146 = mul i32 %145, 18
  %147 = add i32 %146, 500
  %148 = udiv i32 %147, 1000
  store i32 %148, i32* %37, align 4
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %37, align 4
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, i32* %37, align 4
  store i32 %151, i32* %38, align 4
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %37, align 4
  %154 = add i32 %152, %153
  %155 = load i32, i32* %38, align 4
  %156 = add i32 %154, %155
  store i32 %156, i32* %39, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %21, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %20, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sdiv i32 %161, 256
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %162, %163
  %165 = sdiv i32 %164, 2
  %166 = mul nsw i32 %165, 1000
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sdiv i32 %169, 256
  %171 = mul nsw i32 %170, 1000000
  %172 = load i32, i32* %29, align 4
  %173 = udiv i32 %171, %172
  %174 = sub i32 %166, %173
  store i32 %174, i32* %40, align 4
  %175 = load i32, i32* %39, align 4
  %176 = load i32, i32* %40, align 4
  %177 = mul i32 %175, %176
  %178 = load i32, i32* %40, align 4
  %179 = sub i32 100000, %178
  %180 = udiv i32 %177, %179
  store i32 %180, i32* %41, align 4
  %181 = load i32, i32* %41, align 4
  %182 = add i32 %181, 8
  %183 = udiv i32 %182, 16
  store i32 %183, i32* %41, align 4
  %184 = load i32, i32* %41, align 4
  %185 = mul i32 %184, 2
  %186 = mul i32 %185, 8
  store i32 %186, i32* %41, align 4
  %187 = load i32, i32* %39, align 4
  %188 = load i32, i32* %41, align 4
  %189 = add i32 %187, %188
  store i32 %189, i32* %42, align 4
  %190 = load i32, i32* %42, align 4
  %191 = load i32, i32* %29, align 4
  %192 = mul i32 %190, %191
  %193 = udiv i32 %192, 1000
  store i32 %193, i32* %43, align 4
  %194 = load i32, i32* %42, align 4
  %195 = mul i32 8, %194
  %196 = udiv i32 %195, 100
  store i32 %196, i32* %44, align 4
  %197 = load i32, i32* %44, align 4
  %198 = add nsw i32 %197, 4
  %199 = sdiv i32 %198, 8
  store i32 %199, i32* %44, align 4
  %200 = load i32, i32* %44, align 4
  %201 = mul nsw i32 %200, 8
  store i32 %201, i32* %44, align 4
  %202 = load i32, i32* %41, align 4
  %203 = udiv i32 %202, 2
  %204 = load i32, i32* %44, align 4
  %205 = sub i32 %203, %204
  store i32 %205, i32* %45, align 4
  store i32 1, i32* %46, align 4
  %206 = load i32, i32* %23, align 4
  %207 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %208 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %45, align 4
  %211 = add i32 %209, %210
  %212 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %213 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %44, align 4
  %218 = add i32 %216, %217
  %219 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %220 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %42, align 4
  %222 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %223 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %24, align 4
  %225 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %226 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %24, align 4
  %228 = load i32, i32* %46, align 4
  %229 = add i32 %227, %228
  %230 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %231 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 4
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %233 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, 3
  %236 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %237 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %32, align 4
  %239 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %240 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %239, i32 0, i32 7
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %43, align 4
  %242 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %243 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %16, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %150
  %247 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %248 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = mul i32 %249, 2
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %252 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %253 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %246, %150
  %257 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %258 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %257)
  %259 = load i32, i32* %18, align 4
  %260 = icmp eq i32 %259, 600
  br i1 %260, label %261, label %276

261:                                              ; preds = %256
  %262 = load i32, i32* %19, align 4
  %263 = icmp eq i32 %262, 80
  br i1 %263, label %264, label %276

264:                                              ; preds = %261
  %265 = load i32, i32* %20, align 4
  %266 = icmp eq i32 %265, 128
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load i32, i32* %21, align 4
  %269 = icmp eq i32 %268, 40
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %272 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %275 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %274, i32 0, i32 9
  store i32 %273, i32* %275, align 4
  br label %282

276:                                              ; preds = %267, %264, %261, %256
  %277 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %278 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %279 = or i32 %277, %278
  %280 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %281 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %280, i32 0, i32 9
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %276, %270
  %283 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  store %struct.drm_display_mode* %283, %struct.drm_display_mode** %11, align 8
  br label %284

284:                                              ; preds = %282, %53
  %285 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  ret %struct.drm_display_mode* %285
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
