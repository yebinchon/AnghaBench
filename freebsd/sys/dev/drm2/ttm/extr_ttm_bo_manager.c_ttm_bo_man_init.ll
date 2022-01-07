; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.ttm_range_manager* }
%struct.ttm_range_manager = type { i32, i32 }

@M_TTM_RMAN = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ttmrman\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i64)* @ttm_bo_man_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_man_init(%struct.ttm_mem_type_manager* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttm_range_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @M_TTM_RMAN, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.ttm_range_manager* @malloc(i32 8, i32 %8, i32 %11)
  store %struct.ttm_range_manager* %12, %struct.ttm_range_manager** %6, align 8
  %13 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @drm_mm_init(i32* %14, i32 0, i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %21 = load i32, i32* @M_TTM_RMAN, align 4
  %22 = call i32 @free(%struct.ttm_range_manager* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %25, i32 0, i32 0
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 0
  store %struct.ttm_range_manager* %29, %struct.ttm_range_manager** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ttm_range_manager* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i64) #1

declare dso_local i32 @free(%struct.ttm_range_manager*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
