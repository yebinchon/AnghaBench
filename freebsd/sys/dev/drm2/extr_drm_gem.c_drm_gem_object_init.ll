; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_object_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32, i64, i64, i32, %struct.drm_device* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Bad size %ju\00", align 1
@OBJT_DEFAULT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_object_init(%struct.drm_device* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
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
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %13, i8* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %21 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %20, i32 0, i32 4
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load i32, i32* @OBJT_DEFAULT, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @VM_PROT_READ, align 4
  %25 = load i32, i32* @VM_PROT_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vm_pager_allocate(i32 %22, i32* null, i64 %23, i32 %26, i32 0, i32 %29)
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %34 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_pager_allocate(i32, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
