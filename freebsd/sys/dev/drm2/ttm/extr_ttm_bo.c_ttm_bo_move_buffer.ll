; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_3__, %struct.ttm_bo_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_bo_device = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*, i32, i32)* @ttm_bo_move_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg, align 8
  %12 = alloca %struct.ttm_bo_device*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 2
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %14, align 8
  store %struct.ttm_bo_device* %15, %struct.ttm_bo_device** %12, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %16)
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %20 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %22, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %27 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %77

33:                                               ; preds = %4
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %53 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %52, %struct.ttm_placement* %53, %struct.ttm_mem_reg* %11, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %33
  br label %65

60:                                               ; preds = %33
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %61, %struct.ttm_mem_reg* %11, i32 0, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %74 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %73, %struct.ttm_mem_reg* %11)
  br label %75

75:                                               ; preds = %72, %68, %65
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %31
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
