; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_local_map = type { i32 }
%struct.drm_map_list = type { %struct.drm_local_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_addmap(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.drm_local_map** %5) #0 {
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_local_map**, align 8
  %13 = alloca %struct.drm_map_list*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_local_map** %5, %struct.drm_local_map*** %12, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @drm_addmap_core(%struct.drm_device* %15, i32 %16, i32 %17, i32 %18, i32 %19, %struct.drm_map_list** %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %6
  %24 = load %struct.drm_map_list*, %struct.drm_map_list** %13, align 8
  %25 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %24, i32 0, i32 0
  %26 = load %struct.drm_local_map*, %struct.drm_local_map** %25, align 8
  %27 = load %struct.drm_local_map**, %struct.drm_local_map*** %12, align 8
  store %struct.drm_local_map* %26, %struct.drm_local_map** %27, align 8
  br label %28

28:                                               ; preds = %23, %6
  %29 = load i32, i32* %14, align 4
  ret i32 %29
}

declare dso_local i32 @drm_addmap_core(%struct.drm_device*, i32, i32, i32, i32, %struct.drm_map_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
