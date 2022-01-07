; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_zones_above_swap_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_zones_above_swap_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i64, i64, i64, i64 }

@curthread = common dso_local global i32 0, align 4
@PRIV_VM_MLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, i32, i64)* @ttm_zones_above_swap_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_zones_above_swap_target(%struct.ttm_mem_global* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_zone*, align 8
  %10 = alloca i64, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %61, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %18, i32 0, i32 1
  %20 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %20, i64 %22
  %24 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %23, align 8
  store %struct.ttm_mem_zone* %24, %struct.ttm_mem_zone** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  br label %45

31:                                               ; preds = %17
  %32 = load i32, i32* @curthread, align 4
  %33 = load i32, i32* @PRIV_VM_MLOCK, align 4
  %34 = call i64 @priv_check(i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i64 [ 0, %49 ], [ %51, %50 ]
  store i64 %53, i64* %10, align 8
  %54 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %55 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %65

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %11

64:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @priv_check(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
