; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_move_ttm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_move_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, %struct.ttm_tt* }
%struct.ttm_mem_reg = type { i64, i32*, i32 }
%struct.ttm_tt = type { i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_tt*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 1
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %14, align 8
  store %struct.ttm_tt* %15, %struct.ttm_tt** %10, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 0
  store %struct.ttm_mem_reg* %17, %struct.ttm_mem_reg** %11, align 8
  %18 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %25 = call i32 @ttm_tt_unbind(%struct.ttm_tt* %24)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %27 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %26)
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %28, i32 0, i32 2
  %30 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %31 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %32 = call i32 @ttm_flag_masked(i32* %29, i32 %30, i32 %31)
  %33 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %23, %4
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %38 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %39 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ttm_tt_set_placement_caching(%struct.ttm_tt* %37, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %74

49:                                               ; preds = %36
  %50 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %57 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %58 = call i32 @ttm_tt_bind(%struct.ttm_tt* %56, %struct.ttm_mem_reg* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %74

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %69 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %70 = bitcast %struct.ttm_mem_reg* %68 to i8*
  %71 = bitcast %struct.ttm_mem_reg* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 24, i1 false)
  %72 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %73 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %64, %47
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @ttm_tt_unbind(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_flag_masked(i32*, i32, i32) #1

declare dso_local i32 @ttm_tt_set_placement_caching(%struct.ttm_tt*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_tt_bind(%struct.ttm_tt*, %struct.ttm_mem_reg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
