; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_plane_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_plane = type { i32, i64, i32, i32, %struct.TYPE_5__, %struct.drm_plane_funcs*, %struct.drm_device*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.drm_plane_funcs = type { i32 }

@DRM_MODE_OBJECT_PLANE = common dso_local global i32 0, align 4
@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"out of memory when allocating plane\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_init(%struct.drm_device* %0, %struct.drm_plane* %1, i64 %2, %struct.drm_plane_funcs* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_plane_funcs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.drm_plane_funcs* %3, %struct.drm_plane_funcs** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @sx_xlock(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %21 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 4
  %23 = load i32, i32* @DRM_MODE_OBJECT_PLANE, align 4
  %24 = call i32 @drm_mode_object_get(%struct.drm_device* %20, %struct.TYPE_5__* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %96

28:                                               ; preds = %7
  %29 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 7
  %31 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %35 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %36 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 6
  store %struct.drm_device* %34, %struct.drm_device** %36, align 8
  %37 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %11, align 8
  %38 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 5
  store %struct.drm_plane_funcs* %37, %struct.drm_plane_funcs** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @DRM_MEM_KMS, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i32 @malloc(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %48 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %50 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %28
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %56 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %57 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %56, i32 0, i32 4
  %58 = call i32 @drm_mode_object_put(%struct.drm_device* %55, %struct.TYPE_5__* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %15, align 4
  br label %96

61:                                               ; preds = %28
  %62 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %63 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i32 %64, i32* %65, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %76 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %61
  %80 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %81 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %80, i32 0, i32 2
  %82 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = call i32 @list_add_tail(i32* %81, i32* %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %95

91:                                               ; preds = %61
  %92 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %93 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %92, i32 0, i32 2
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  br label %95

95:                                               ; preds = %91, %79
  br label %96

96:                                               ; preds = %95, %53, %27
  %97 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @sx_xunlock(i32* %99)
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
