; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_device_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_device = type { i32, i32 }

@M_TTM_OBJ_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_object_device_release(%struct.ttm_object_device** %0) #0 {
  %2 = alloca %struct.ttm_object_device**, align 8
  %3 = alloca %struct.ttm_object_device*, align 8
  store %struct.ttm_object_device** %0, %struct.ttm_object_device*** %2, align 8
  %4 = load %struct.ttm_object_device**, %struct.ttm_object_device*** %2, align 8
  %5 = load %struct.ttm_object_device*, %struct.ttm_object_device** %4, align 8
  store %struct.ttm_object_device* %5, %struct.ttm_object_device** %3, align 8
  %6 = load %struct.ttm_object_device**, %struct.ttm_object_device*** %2, align 8
  store %struct.ttm_object_device* null, %struct.ttm_object_device** %6, align 8
  %7 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %7, i32 0, i32 0
  %9 = call i32 @rw_wlock(i32* %8)
  %10 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %10, i32 0, i32 1
  %12 = call i32 @drm_ht_remove(i32* %11)
  %13 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %13, i32 0, i32 0
  %15 = call i32 @rw_wunlock(i32* %14)
  %16 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %17 = load i32, i32* @M_TTM_OBJ_DEV, align 4
  %18 = call i32 @free(%struct.ttm_object_device* %16, i32 %17)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @drm_ht_remove(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @free(%struct.ttm_object_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
