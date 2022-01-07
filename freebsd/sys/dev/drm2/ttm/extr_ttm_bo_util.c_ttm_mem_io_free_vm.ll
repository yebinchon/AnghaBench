; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_io_free_vm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_io_free_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_mem_io_free_vm(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %4 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %4, i32 0, i32 2
  store %struct.ttm_mem_reg* %5, %struct.ttm_mem_reg** %3, align 8
  %6 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %3, align 8
  %22 = call i32 @ttm_mem_io_free(i32 %20, %struct.ttm_mem_reg* %21)
  br label %23

23:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ttm_mem_io_free(i32, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
