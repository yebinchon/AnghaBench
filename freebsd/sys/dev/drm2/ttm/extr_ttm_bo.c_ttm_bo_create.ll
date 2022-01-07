; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.vm_object = type { i32 }
%struct.ttm_buffer_object = type { i32 }

@M_TTM_BO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_create(%struct.ttm_bo_device* %0, i64 %1, i32 %2, %struct.ttm_placement* %3, i32 %4, i32 %5, %struct.vm_object* %6, %struct.ttm_buffer_object** %7) #0 {
  %9 = alloca %struct.ttm_bo_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_placement*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_object*, align 8
  %16 = alloca %struct.ttm_buffer_object**, align 8
  %17 = alloca %struct.ttm_buffer_object*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ttm_placement* %3, %struct.ttm_placement** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.vm_object* %6, %struct.vm_object** %15, align 8
  store %struct.ttm_buffer_object** %7, %struct.ttm_buffer_object*** %16, align 8
  %20 = load i32, i32* @M_TTM_BO, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.ttm_buffer_object* @malloc(i32 4, i32 %20, i32 %23)
  store %struct.ttm_buffer_object* %24, %struct.ttm_buffer_object** %17, align 8
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @ttm_bo_acc_size(%struct.ttm_bo_device* %25, i64 %26, i32 4)
  store i64 %27, i64* %18, align 8
  %28 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %17, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ttm_placement*, %struct.ttm_placement** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.vm_object*, %struct.vm_object** %15, align 8
  %36 = load i64, i64* %18, align 8
  %37 = call i32 @ttm_bo_init(%struct.ttm_bo_device* %28, %struct.ttm_buffer_object* %29, i64 %30, i32 %31, %struct.ttm_placement* %32, i32 %33, i32 %34, %struct.vm_object* %35, i64 %36, i32* null, i32* null)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %17, align 8
  %45 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %16, align 8
  store %struct.ttm_buffer_object* %44, %struct.ttm_buffer_object** %45, align 8
  br label %46

46:                                               ; preds = %43, %8
  %47 = load i32, i32* %19, align 4
  ret i32 %47
}

declare dso_local %struct.ttm_buffer_object* @malloc(i32, i32, i32) #1

declare dso_local i64 @ttm_bo_acc_size(%struct.ttm_bo_device*, i64, i32) #1

declare dso_local i32 @ttm_bo_init(%struct.ttm_bo_device*, %struct.ttm_buffer_object*, i64, i32, %struct.ttm_placement*, i32, i32, %struct.vm_object*, i64, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
