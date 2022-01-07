; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_getsareactx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_getsareactx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, %struct.drm_local_map** }
%struct.drm_local_map = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_ctx_priv_map = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getsareactx(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_ctx_priv_map*, align 8
  %9 = alloca %struct.drm_local_map*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_ctx_priv_map*
  store %struct.drm_ctx_priv_map* %11, %struct.drm_ctx_priv_map** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call i32 @DRM_LOCK(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.drm_ctx_priv_map*, %struct.drm_ctx_priv_map** %8, align 8
  %20 = getelementptr inbounds %struct.drm_ctx_priv_map, %struct.drm_ctx_priv_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18, %3
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = call i32 @DRM_UNLOCK(%struct.drm_device* %28)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %18
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 1
  %34 = load %struct.drm_local_map**, %struct.drm_local_map*** %33, align 8
  %35 = load %struct.drm_ctx_priv_map*, %struct.drm_ctx_priv_map** %8, align 8
  %36 = getelementptr inbounds %struct.drm_ctx_priv_map, %struct.drm_ctx_priv_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.drm_local_map*, %struct.drm_local_map** %34, i64 %38
  %40 = load %struct.drm_local_map*, %struct.drm_local_map** %39, align 8
  store %struct.drm_local_map* %40, %struct.drm_local_map** %9, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i32 @DRM_UNLOCK(%struct.drm_device* %41)
  %43 = load %struct.drm_local_map*, %struct.drm_local_map** %9, align 8
  %44 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.drm_ctx_priv_map*, %struct.drm_ctx_priv_map** %8, align 8
  %48 = getelementptr inbounds %struct.drm_ctx_priv_map, %struct.drm_ctx_priv_map* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %31, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
