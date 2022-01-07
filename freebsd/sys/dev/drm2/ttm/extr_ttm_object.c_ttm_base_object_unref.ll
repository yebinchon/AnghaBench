; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_base_object_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_base_object_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_base_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttm_object_device* }
%struct.ttm_object_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_base_object_unref(%struct.ttm_base_object** %0) #0 {
  %2 = alloca %struct.ttm_base_object**, align 8
  %3 = alloca %struct.ttm_base_object*, align 8
  %4 = alloca %struct.ttm_object_device*, align 8
  store %struct.ttm_base_object** %0, %struct.ttm_base_object*** %2, align 8
  %5 = load %struct.ttm_base_object**, %struct.ttm_base_object*** %2, align 8
  %6 = load %struct.ttm_base_object*, %struct.ttm_base_object** %5, align 8
  store %struct.ttm_base_object* %6, %struct.ttm_base_object** %3, align 8
  %7 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ttm_object_device*, %struct.ttm_object_device** %10, align 8
  store %struct.ttm_object_device* %11, %struct.ttm_object_device** %4, align 8
  %12 = load %struct.ttm_base_object**, %struct.ttm_base_object*** %2, align 8
  store %struct.ttm_base_object* null, %struct.ttm_base_object** %12, align 8
  %13 = load %struct.ttm_object_device*, %struct.ttm_object_device** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %13, i32 0, i32 0
  %15 = call i32 @rw_wlock(i32* %14)
  %16 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %16, i32 0, i32 0
  %18 = call i64 @refcount_release(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %22 = call i32 @ttm_release_base(%struct.ttm_base_object* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.ttm_object_device*, %struct.ttm_object_device** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %24, i32 0, i32 0
  %26 = call i32 @rw_wunlock(i32* %25)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @ttm_release_base(%struct.ttm_base_object*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
