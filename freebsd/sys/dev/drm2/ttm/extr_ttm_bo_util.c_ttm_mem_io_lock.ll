; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_io_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_io_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %16, i32 0, i32 0
  %18 = call i64 @sx_xlock_sig(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %25, i32 0, i32 0
  %27 = call i32 @sx_xlock(i32* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %23, %20, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sx_xlock_sig(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
