; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_unreserve_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_unreserve_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_unreserve_locked(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %3 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %4 = call i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object* %3)
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 0
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %9 = call i32 @wakeup(%struct.ttm_buffer_object* %8)
  ret void
}

declare dso_local i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
