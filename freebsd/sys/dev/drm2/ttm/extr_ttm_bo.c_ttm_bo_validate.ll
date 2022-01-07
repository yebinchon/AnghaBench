; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ttm_placement = type { i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEMTYPE = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %12 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %11)
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18, %4
  %24 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %25 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %33 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %36 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31, %23
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %100

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 2
  %51 = call i32 @ttm_bo_mem_compat(%struct.ttm_placement* %48, %struct.TYPE_2__* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %56 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %55, %struct.ttm_placement* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %100

64:                                               ; preds = %54
  br label %79

65:                                               ; preds = %47
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %67 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %70 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %77 = xor i32 %76, -1
  %78 = call i32 @ttm_flag_masked(i32* %68, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %65, %64
  %80 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %81 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %88 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %93 = call i32 @ttm_bo_add_ttm(%struct.ttm_buffer_object* %92, i32 1)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %86, %79
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %96, %62, %43
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement*, %struct.TYPE_2__*) #1

declare dso_local i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object*, %struct.ttm_placement*, i32, i32) #1

declare dso_local i32 @ttm_flag_masked(i32*, i32, i32) #1

declare dso_local i32 @ttm_bo_add_ttm(%struct.ttm_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
