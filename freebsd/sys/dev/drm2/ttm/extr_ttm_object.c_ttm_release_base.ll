; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_release_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_release_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_base_object = type { i32 (%struct.ttm_base_object**)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ttm_object_device* }
%struct.ttm_object_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_base_object*)* @ttm_release_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_release_base(%struct.ttm_base_object* %0) #0 {
  %2 = alloca %struct.ttm_base_object*, align 8
  %3 = alloca %struct.ttm_object_device*, align 8
  store %struct.ttm_base_object* %0, %struct.ttm_base_object** %2, align 8
  %4 = load %struct.ttm_base_object*, %struct.ttm_base_object** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ttm_object_device*, %struct.ttm_object_device** %7, align 8
  store %struct.ttm_object_device* %8, %struct.ttm_object_device** %3, align 8
  %9 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %9, i32 0, i32 1
  %11 = load %struct.ttm_base_object*, %struct.ttm_base_object** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %11, i32 0, i32 2
  %13 = call i32 @drm_ht_remove_item(i32* %10, i32* %12)
  %14 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %14, i32 0, i32 0
  %16 = call i32 @rw_wunlock(i32* %15)
  %17 = load %struct.ttm_base_object*, %struct.ttm_base_object** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %17, i32 0, i32 0
  %19 = load i32 (%struct.ttm_base_object**)*, i32 (%struct.ttm_base_object**)** %18, align 8
  %20 = icmp ne i32 (%struct.ttm_base_object**)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.ttm_base_object*, %struct.ttm_base_object** %2, align 8
  %23 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %22, i32 0, i32 1
  %24 = call i32 @ttm_object_file_unref(%struct.TYPE_2__** %23)
  %25 = load %struct.ttm_base_object*, %struct.ttm_base_object** %2, align 8
  %26 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %25, i32 0, i32 0
  %27 = load i32 (%struct.ttm_base_object**)*, i32 (%struct.ttm_base_object**)** %26, align 8
  %28 = call i32 %27(%struct.ttm_base_object** %2)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %31 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %30, i32 0, i32 0
  %32 = call i32 @rw_wlock(i32* %31)
  ret void
}

declare dso_local i32 @drm_ht_remove_item(i32*, i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @ttm_object_file_unref(%struct.TYPE_2__**) #1

declare dso_local i32 @rw_wlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
