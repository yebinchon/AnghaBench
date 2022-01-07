; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_cancel_fill_in_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_cancel_fill_in_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.drm_driver* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_driver = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@DRM_MTRR_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mtrr_del=%d\0A\00", align 1
@DRM_MEM_AGPLISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_cancel_fill_in_dev(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 8
  %7 = load %struct.drm_driver*, %struct.drm_driver** %6, align 8
  store %struct.drm_driver* %7, %struct.drm_driver** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @drm_sysctl_cleanup(%struct.drm_device* %8)
  %10 = load %struct.drm_driver*, %struct.drm_driver** %3, align 8
  %11 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DRIVER_GEM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i32 @drm_gem_destroy(%struct.drm_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @drm_ctxbitmap_cleanup(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i64 @drm_core_has_MTRR(%struct.drm_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i64 @drm_core_has_AGP(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 7
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 7
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 7
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 7
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 7
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DRM_MTRR_WC, align 4
  %60 = call i32 @drm_mtrr_del(i64 %46, i32 %52, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %41, %34, %29, %25, %19
  %64 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 7
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @DRM_MEM_AGPLISTS, align 4
  %68 = call i32 @free(%struct.TYPE_4__* %66, i32 %67)
  %69 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 6
  %73 = call i32 @drm_ht_remove(i32* %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 5
  %76 = call i32 @mtx_destroy(i32* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 4
  %79 = call i32 @mtx_destroy(i32* %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 3
  %82 = call i32 @mtx_destroy(i32* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 2
  %85 = call i32 @sx_destroy(i32* %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 1
  %88 = call i32 @mtx_destroy(i32* %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = call i32 @mtx_destroy(i32* %90)
  ret void
}

declare dso_local i32 @drm_sysctl_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_ctxbitmap_cleanup(%struct.drm_device*) #1

declare dso_local i64 @drm_core_has_MTRR(%struct.drm_device*) #1

declare dso_local i64 @drm_core_has_AGP(%struct.drm_device*) #1

declare dso_local i32 @drm_mtrr_del(i64, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @drm_ht_remove(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
