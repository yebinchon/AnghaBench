; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_private_object_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_private_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32, i64, i32, i32*, %struct.drm_device* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_private_object_init(%struct.drm_device* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = and i64 %7, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 4
  store %struct.drm_device* %15, %struct.drm_device** %17, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %21 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %23 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %22, i32 0, i32 2
  %24 = call i32 @atomic_store_rel_int(i32* %23, i32 0)
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret i32 0
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
