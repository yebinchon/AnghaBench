; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* }
%struct.ttm_mem_reg = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_mem_put(%struct.ttm_buffer_object* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i64 %13
  store %struct.ttm_mem_type_manager* %14, %struct.ttm_mem_type_manager** %5, align 8
  %15 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)** %23, align 8
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %26 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %27 = call i32 %24(%struct.ttm_mem_type_manager* %25, %struct.ttm_mem_reg* %26)
  br label %28

28:                                               ; preds = %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
