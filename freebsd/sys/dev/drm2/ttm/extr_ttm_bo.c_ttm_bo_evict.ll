; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_evict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.ttm_mem_reg = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ttm_bo_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)* }
%struct.ttm_placement = type { i64, i64, i64, i64 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"[TTM] Failed to expire sync object before buffer eviction\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"[TTM] Failed to find memory space for buffer 0x%p eviction\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[TTM] Buffer eviction failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32)* @ttm_bo_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_evict(%struct.ttm_buffer_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_mem_reg, align 8
  %9 = alloca %struct.ttm_placement, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 2
  %13 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  store %struct.ttm_bo_device* %13, %struct.ttm_bo_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %17, i32 0, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 1
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  br label %98

37:                                               ; preds = %3
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %39 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %38)
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %42 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %41, i32 0, i32 1
  %43 = bitcast %struct.ttm_mem_reg* %8 to i8*
  %44 = bitcast %struct.ttm_mem_reg* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %55 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)*, i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)** %57, align 8
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %60 = call i32 %58(%struct.ttm_buffer_object* %59, %struct.ttm_placement* %9)
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %61, %struct.ttm_placement* %9, %struct.ttm_mem_reg* %8, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %37
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ERESTARTSYS, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.ttm_buffer_object* %73)
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %76 = call i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object* %75, %struct.ttm_placement* %9)
  br label %77

77:                                               ; preds = %72, %67
  br label %98

78:                                               ; preds = %37
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %79, %struct.ttm_mem_reg* %8, i32 1, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @ERESTARTSYS, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %94 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %93, %struct.ttm_mem_reg* %8)
  br label %98

95:                                               ; preds = %78
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %97 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92, %77, %36
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object*, %struct.ttm_placement*) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
