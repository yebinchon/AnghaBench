; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_detailed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_detailed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.edid = type { i32, i32 }
%struct.detailed_timing = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_EDID_PT_STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stereo mode not supported\0A\00", align 1
@DRM_EDID_PT_SEPARATE_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"composite sync not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Incorrect Detailed timing. Wrong Hsync/Vsync pulse width\0A\00", align 1
@EDID_QUIRK_FORCE_REDUCED_BLANKING = common dso_local global i32 0, align 4
@EDID_QUIRK_135_CLOCK_TOO_HIGH = common dso_local global i32 0, align 4
@EDID_QUIRK_DETAILED_SYNC_PP = common dso_local global i32 0, align 4
@DRM_EDID_PT_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_EDID_PT_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@EDID_QUIRK_DETAILED_IN_CM = common dso_local global i32 0, align 4
@EDID_QUIRK_DETAILED_USE_MAXIMUM_SIZE = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_device*, %struct.edid*, %struct.detailed_timing*, i32)* @drm_mode_detailed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @drm_mode_detailed(%struct.drm_device* %0, %struct.edid* %1, %struct.detailed_timing* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.edid*, align 8
  %8 = alloca %struct.detailed_timing*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.detailed_pixel_timing*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.edid* %1, %struct.edid** %7, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.detailed_timing*, %struct.detailed_timing** %8, align 8
  %21 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.detailed_pixel_timing* %22, %struct.detailed_pixel_timing** %11, align 8
  %23 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %24 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 240
  %27 = shl i32 %26, 4
  %28 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %29 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %33 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 240
  %36 = shl i32 %35, 4
  %37 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %38 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %42 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = shl i32 %44, 8
  %46 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %47 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %51 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 8
  %55 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %56 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  store i32 %58, i32* %15, align 4
  %59 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %60 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 192
  %63 = shl i32 %62, 2
  %64 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %65 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  store i32 %67, i32* %16, align 4
  %68 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %69 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 48
  %72 = shl i32 %71, 4
  %73 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %74 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %72, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %78 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 12
  %81 = shl i32 %80, 2
  %82 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %83 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 4
  %86 = or i32 %81, %85
  store i32 %86, i32* %18, align 4
  %87 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %88 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 3
  %91 = shl i32 %90, 4
  %92 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %93 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  %96 = or i32 %91, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ult i32 %97, 64
  br i1 %98, label %102, label %99

99:                                               ; preds = %4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ult i32 %100, 64
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %4
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %357

103:                                              ; preds = %99
  %104 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %105 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @DRM_EDID_PT_STEREO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %357

112:                                              ; preds = %103
  %113 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %114 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DRM_EDID_PT_SEPARATE_SYNC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %112
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124, %121
  %128 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %357

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @EDID_QUIRK_FORCE_REDUCED_BLANKING, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %135, i32 %136, i32 %137, i32 60, i32 1, i32 0, i32 0)
  store %struct.drm_display_mode* %138, %struct.drm_display_mode** %10, align 8
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %140 = icmp ne %struct.drm_display_mode* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %357

142:                                              ; preds = %134
  br label %292

143:                                              ; preds = %129
  %144 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %145 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %144)
  store %struct.drm_display_mode* %145, %struct.drm_display_mode** %10, align 8
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %147 = icmp ne %struct.drm_display_mode* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %357

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @EDID_QUIRK_135_CLOCK_TOO_HIGH, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = call i32 @cpu_to_le16(i32 1088)
  %156 = load %struct.detailed_timing*, %struct.detailed_timing** %8, align 8
  %157 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load %struct.detailed_timing*, %struct.detailed_timing** %8, align 8
  %160 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le16_to_cpu(i32 %161)
  %163 = mul nsw i32 %162, 10
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %171, %172
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %175 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %177 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %17, align 4
  %180 = add i32 %178, %179
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add i32 %185, %186
  %188 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %189 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %192 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %194 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %18, align 4
  %197 = add i32 %195, %196
  %198 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %199 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  %200 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %201 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %19, align 4
  %204 = add i32 %202, %203
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 4
  %207 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %208 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %209, %210
  %212 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %213 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 4
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %218 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = icmp ugt i32 %216, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %158
  %222 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %223 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %224, 1
  %226 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %227 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %221, %158
  %229 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %230 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %233 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = icmp ugt i32 %231, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %228
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, 1
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 8
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %236, %228
  %244 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %245 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %246 = call i32 @drm_mode_do_interlace_quirk(%struct.drm_display_mode* %244, %struct.detailed_pixel_timing* %245)
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @EDID_QUIRK_DETAILED_SYNC_PP, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %243
  %252 = load i32, i32* @DRM_EDID_PT_HSYNC_POSITIVE, align 4
  %253 = load i32, i32* @DRM_EDID_PT_VSYNC_POSITIVE, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %256 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %251, %243
  %260 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %261 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @DRM_EDID_PT_HSYNC_POSITIVE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  br label %270

268:                                              ; preds = %259
  %269 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %273 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %272, i32 0, i32 13
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %277 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %276, i32 0, i32 10
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @DRM_EDID_PT_VSYNC_POSITIVE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %270
  %283 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  br label %286

284:                                              ; preds = %270
  %285 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  %288 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %289 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %288, i32 0, i32 13
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %286, %142
  %293 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %294 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %297 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %296, i32 0, i32 12
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 240
  %300 = shl i32 %299, 4
  %301 = or i32 %295, %300
  %302 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %303 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %302, i32 0, i32 9
  store i32 %301, i32* %303, align 4
  %304 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %305 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %304, i32 0, i32 13
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.detailed_pixel_timing*, %struct.detailed_pixel_timing** %11, align 8
  %308 = getelementptr inbounds %struct.detailed_pixel_timing, %struct.detailed_pixel_timing* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 15
  %311 = shl i32 %310, 8
  %312 = or i32 %306, %311
  %313 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %314 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %313, i32 0, i32 10
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @EDID_QUIRK_DETAILED_IN_CM, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %292
  %320 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %321 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 %322, 10
  store i32 %323, i32* %321, align 4
  %324 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %325 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %324, i32 0, i32 10
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 %326, 10
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %319, %292
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* @EDID_QUIRK_DETAILED_USE_MAXIMUM_SIZE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %328
  %334 = load %struct.edid*, %struct.edid** %7, align 8
  %335 = getelementptr inbounds %struct.edid, %struct.edid* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 10
  %338 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %339 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %338, i32 0, i32 9
  store i32 %337, i32* %339, align 4
  %340 = load %struct.edid*, %struct.edid** %7, align 8
  %341 = getelementptr inbounds %struct.edid, %struct.edid* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %342, 10
  %344 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %345 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %344, i32 0, i32 10
  store i32 %343, i32* %345, align 4
  br label %346

346:                                              ; preds = %333, %328
  %347 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %348 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %349 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %348, i32 0, i32 12
  store i32 %347, i32* %349, align 4
  %350 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %351 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %350)
  %352 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %353 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %352, i32 0, i32 11
  store i32 %351, i32* %353, align 4
  %354 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %355 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %354)
  %356 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  store %struct.drm_display_mode* %356, %struct.drm_display_mode** %5, align 8
  br label %357

357:                                              ; preds = %346, %148, %141, %127, %110, %102
  %358 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  ret %struct.drm_display_mode* %358
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @drm_mode_do_interlace_quirk(%struct.drm_display_mode*, %struct.detailed_pixel_timing*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
