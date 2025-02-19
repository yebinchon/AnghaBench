; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mt_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mt_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }

@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i32, i32, i32*)* @ttm_bo_mt_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ttm_bo_type_flags(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %27, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ttm_bo_type_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
