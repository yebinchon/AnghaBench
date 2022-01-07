; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_calc_vbltimestamp_from_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_calc_vbltimestamp_from_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, i32, i32*, i32*)* }
%struct.timeval = type { i64, i64 }
%struct.drm_crtc = type { i64, i64, i64, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Called from driver w/o get_scanout_position()!?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"crtc %d: Noop due to uninitialized mode.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@DRM_TIMESTAMP_MAXRETRIES = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"crtc %d : scanoutpos query failed [%d].\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"crtc %d: Noisy timestamp %d us > %d us [%d reps].\0A\00", align 1
@DRM_SCANOUTPOS_INVBL = common dso_local global i32 0, align 4
@DRM_CALLED_FROM_VBLIRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"crtc %d : v %d p(%d,%d)@ %jd.%jd -> %jd.%jd [e %d us, %d rep]\0A\00", align 1
@DRM_VBLANKTIME_SCANOUTPOS_METHOD = common dso_local global i32 0, align 4
@DRM_VBLANKTIME_INVBL = common dso_local global i32 0, align 4
@drm_timestamp_monotonic = common dso_local global i32 0, align 4
@etime = common dso_local global i32 0, align 4
@mono_time_offset = common dso_local global i32 0, align 4
@tv_etime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device* %0, i32 %1, i32* %2, %struct.timeval* %3, i32 %4, %struct.drm_crtc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_crtc*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.drm_display_mode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.timeval, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.timeval* %3, %struct.timeval** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.drm_crtc* %5, %struct.drm_crtc** %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %6
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %222

43:                                               ; preds = %32
  %44 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.drm_device*, i32, i32*, i32*)*, i32 (%struct.drm_device*, i32, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.drm_device*, i32, i32*, i32*)* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %222

54:                                               ; preds = %43
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 3
  store %struct.drm_display_mode* %56, %struct.drm_display_mode** %16, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %23, align 8
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %67 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %24, align 8
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %70 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %25, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %19, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %23, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77, %74, %54
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %222

85:                                               ; preds = %77
  store i32 0, i32* %22, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @DRM_TIMESTAMP_MAXRETRIES, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  %91 = call i32 (...) @critical_enter()
  %92 = call i32 @getmicrouptime(%struct.timeval* %14)
  %93 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %94 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.drm_device*, i32, i32*, i32*)*, i32 (%struct.drm_device*, i32, i32*, i32*)** %96, align 8
  %98 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 %97(%struct.drm_device* %98, i32 %99, i32* %20, i32* %21)
  store i32 %100, i32* %17, align 4
  %101 = call i32 @getmicrouptime(%struct.timeval* %15)
  %102 = call i32 (...) @critical_exit()
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %222

113:                                              ; preds = %90
  %114 = call i64 @timeval_to_ns(%struct.timeval* %15)
  %115 = call i64 @timeval_to_ns(%struct.timeval* %14)
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %27, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp sle i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %127

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %22, align 4
  br label %86

127:                                              ; preds = %122, %86
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @DRM_TIMESTAMP_MAXRETRIES, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i64, i64* %27, align 8
  %134 = trunc i64 %133 to i32
  %135 = sdiv i32 %134, 1000
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 1000
  %139 = load i32, i32* %22, align 4
  %140 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %127
  %142 = load i64, i64* %27, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @DRM_SCANOUTPOS_INVBL, align 4
  %147 = and i32 %145, %146
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %24, align 8
  %151 = mul nsw i64 %149, %150
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %25, align 8
  %155 = mul nsw i64 %153, %154
  %156 = add nsw i64 %151, %155
  store i64 %156, i64* %26, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @DRM_CALLED_FROM_VBLIRQ, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %141
  %162 = load i32, i32* %28, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %20, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %18, align 4
  %169 = sdiv i32 %168, 100
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i64, i64* %26, align 8
  %173 = load i64, i64* %23, align 8
  %174 = sub nsw i64 %172, %173
  store i64 %174, i64* %26, align 8
  %175 = load i32, i32* %17, align 4
  %176 = or i32 %175, 8
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %171, %164, %161, %141
  %178 = load %struct.timeval*, %struct.timeval** %11, align 8
  %179 = call i64 @timeval_to_ns(%struct.timeval* %15)
  %180 = load i64, i64* %26, align 8
  %181 = sub nsw i64 %179, %180
  %182 = call { i64, i64 } @ns_to_timeval(i64 %181)
  %183 = bitcast %struct.timeval* %29 to { i64, i64 }*
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 0
  %185 = extractvalue { i64, i64 } %182, 0
  store i64 %185, i64* %184, align 8
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 1
  %187 = extractvalue { i64, i64 } %182, 1
  store i64 %187, i64* %186, align 8
  %188 = bitcast %struct.timeval* %178 to i8*
  %189 = bitcast %struct.timeval* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 16, i1 false)
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %20, align 4
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.timeval*, %struct.timeval** %11, align 8
  %201 = getelementptr inbounds %struct.timeval, %struct.timeval* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.timeval*, %struct.timeval** %11, align 8
  %205 = getelementptr inbounds %struct.timeval, %struct.timeval* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = load i64, i64* %27, align 8
  %209 = trunc i64 %208 to i32
  %210 = sdiv i32 %209, 1000
  %211 = load i32, i32* %22, align 4
  %212 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %190, i32 %191, i32 %192, i32 %193, i32 %196, i32 %199, i32 %203, i32 %207, i32 %210, i32 %211)
  %213 = load i32, i32* @DRM_VBLANKTIME_SCANOUTPOS_METHOD, align 4
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %28, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %177
  %217 = load i32, i32* @DRM_VBLANKTIME_INVBL, align 4
  %218 = load i32, i32* %17, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %216, %177
  %221 = load i32, i32* %17, align 4
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %220, %107, %80, %50, %38
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @getmicrouptime(%struct.timeval*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i64 @timeval_to_ns(%struct.timeval*) #1

declare dso_local { i64, i64 } @ns_to_timeval(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
