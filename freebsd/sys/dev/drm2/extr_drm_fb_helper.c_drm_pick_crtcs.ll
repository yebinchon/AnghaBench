; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_pick_crtcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_pick_crtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_connector**, %struct.drm_device* }
%struct.drm_fb_helper_crtc = type { i32 }
%struct.drm_fb_helper_connector = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, %struct.drm_connector_helper_funcs* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_crtc**, %struct.drm_display_mode**, i32, i32, i32)* @drm_pick_crtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_pick_crtcs(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_crtc** %1, %struct.drm_display_mode** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_fb_helper*, align 8
  %9 = alloca %struct.drm_fb_helper_crtc**, align 8
  %10 = alloca %struct.drm_display_mode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_device*, align 8
  %17 = alloca %struct.drm_connector*, align 8
  %18 = alloca %struct.drm_connector_helper_funcs*, align 8
  %19 = alloca %struct.drm_encoder*, align 8
  %20 = alloca %struct.drm_fb_helper_crtc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.drm_fb_helper_crtc**, align 8
  %25 = alloca %struct.drm_fb_helper_crtc*, align 8
  %26 = alloca %struct.drm_fb_helper_connector*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %8, align 8
  store %struct.drm_fb_helper_crtc** %1, %struct.drm_fb_helper_crtc*** %9, align 8
  store %struct.drm_display_mode** %2, %struct.drm_display_mode*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 4
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %16, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %235

36:                                               ; preds = %6
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %38 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %37, i32 0, i32 3
  %39 = load %struct.drm_fb_helper_connector**, %struct.drm_fb_helper_connector*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %39, i64 %41
  %43 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %42, align 8
  store %struct.drm_fb_helper_connector* %43, %struct.drm_fb_helper_connector** %26, align 8
  %44 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %45 = getelementptr inbounds %struct.drm_fb_helper_connector, %struct.drm_fb_helper_connector* %44, i32 0, i32 0
  %46 = load %struct.drm_connector*, %struct.drm_connector** %45, align 8
  store %struct.drm_connector* %46, %struct.drm_connector** %17, align 8
  %47 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %47, i64 %49
  store %struct.drm_fb_helper_crtc* null, %struct.drm_fb_helper_crtc** %50, align 8
  store %struct.drm_fb_helper_crtc* null, %struct.drm_fb_helper_crtc** %20, align 8
  %51 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %52 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %53 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @drm_pick_crtcs(%struct.drm_fb_helper* %51, %struct.drm_fb_helper_crtc** %52, %struct.drm_display_mode** %53, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %22, align 4
  %59 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %59, i64 %61
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %62, align 8
  %64 = icmp eq %struct.drm_display_mode* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %36
  %66 = load i32, i32* %22, align 4
  store i32 %66, i32* %7, align 4
  br label %235

67:                                               ; preds = %36
  %68 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @DRM_MEM_KMS, align 4
  %76 = load i32, i32* @M_NOWAIT, align 4
  %77 = load i32, i32* @M_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.drm_fb_helper_crtc** @malloc(i32 %74, i32 %75, i32 %78)
  store %struct.drm_fb_helper_crtc** %79, %struct.drm_fb_helper_crtc*** %24, align 8
  %80 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %81 = icmp ne %struct.drm_fb_helper_crtc** %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %7, align 4
  br label %235

84:                                               ; preds = %67
  store i32 1, i32* %21, align 4
  %85 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %86 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @connector_status_connected, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %95 = call i64 @drm_has_cmdline_mode(%struct.drm_fb_helper_connector* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i64 @drm_has_preferred_mode(%struct.drm_fb_helper_connector* %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %21, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %111 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %110, i32 0, i32 1
  %112 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %111, align 8
  store %struct.drm_connector_helper_funcs* %112, %struct.drm_connector_helper_funcs** %18, align 8
  %113 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %18, align 8
  %114 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %113, i32 0, i32 0
  %115 = load %struct.drm_encoder* (%struct.drm_connector*)*, %struct.drm_encoder* (%struct.drm_connector*)** %114, align 8
  %116 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %117 = call %struct.drm_encoder* %115(%struct.drm_connector* %116)
  store %struct.drm_encoder* %117, %struct.drm_encoder** %19, align 8
  %118 = load %struct.drm_encoder*, %struct.drm_encoder** %19, align 8
  %119 = icmp ne %struct.drm_encoder* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %109
  br label %230

121:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %226, %121
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %125 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %229

128:                                              ; preds = %122
  %129 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %130 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %129, i32 0, i32 2
  %131 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.drm_fb_helper_crtc, %struct.drm_fb_helper_crtc* %131, i64 %133
  store %struct.drm_fb_helper_crtc* %134, %struct.drm_fb_helper_crtc** %25, align 8
  %135 = load %struct.drm_encoder*, %struct.drm_encoder** %19, align 8
  %136 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %226

143:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %158, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %149, i64 %151
  %153 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %152, align 8
  %154 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  %155 = icmp eq %struct.drm_fb_helper_crtc* %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %161

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %144

161:                                              ; preds = %156, %144
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %161
  %166 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %167 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %226

171:                                              ; preds = %165
  %172 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %172, i64 %174
  %176 = load %struct.drm_display_mode*, %struct.drm_display_mode** %175, align 8
  %177 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %177, i64 %179
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %180, align 8
  %182 = call i32 @drm_mode_equal(%struct.drm_display_mode* %176, %struct.drm_display_mode* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %171
  br label %226

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  %188 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %188, i64 %190
  store %struct.drm_fb_helper_crtc* %187, %struct.drm_fb_helper_crtc** %191, align 8
  %192 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %193 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memcpy(%struct.drm_fb_helper_crtc** %192, %struct.drm_fb_helper_crtc** %193, i32 %197)
  %199 = load i32, i32* %21, align 4
  %200 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %201 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %202 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @drm_pick_crtcs(%struct.drm_fb_helper* %200, %struct.drm_fb_helper_crtc** %201, %struct.drm_display_mode** %202, i32 %204, i32 %205, i32 %206)
  %208 = add nsw i32 %199, %207
  store i32 %208, i32* %23, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %22, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %186
  %213 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  store %struct.drm_fb_helper_crtc* %213, %struct.drm_fb_helper_crtc** %20, align 8
  %214 = load i32, i32* %23, align 4
  store i32 %214, i32* %22, align 4
  %215 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %216 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %217 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %218 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @memcpy(%struct.drm_fb_helper_crtc** %215, %struct.drm_fb_helper_crtc** %216, i32 %223)
  br label %225

225:                                              ; preds = %212, %186
  br label %226

226:                                              ; preds = %225, %184, %170, %142
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %122

229:                                              ; preds = %122
  br label %230

230:                                              ; preds = %229, %120
  %231 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %232 = load i32, i32* @DRM_MEM_KMS, align 4
  %233 = call i32 @free(%struct.drm_fb_helper_crtc** %231, i32 %232)
  %234 = load i32, i32* %22, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %230, %82, %65, %35
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local %struct.drm_fb_helper_crtc** @malloc(i32, i32, i32) #1

declare dso_local i64 @drm_has_cmdline_mode(%struct.drm_fb_helper_connector*) #1

declare dso_local i64 @drm_has_preferred_mode(%struct.drm_fb_helper_connector*, i32, i32) #1

declare dso_local i32 @drm_mode_equal(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @memcpy(%struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc**, i32) #1

declare dso_local i32 @free(%struct.drm_fb_helper_crtc**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
