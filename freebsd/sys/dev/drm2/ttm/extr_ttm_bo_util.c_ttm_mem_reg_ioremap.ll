; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_reg_ioremap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_mem_reg_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i8*, i32 }

@TTM_PL_FLAG_WC = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8**)* @ttm_mem_reg_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ttm_mem_type_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 0
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i64 %16
  store %struct.ttm_mem_type_manager* %17, %struct.ttm_mem_type_manager** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %20 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %19, i32 0)
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %23 = call i32 @ttm_mem_io_reserve(%struct.ttm_bo_device* %21, %struct.ttm_mem_reg* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %25 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %28
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  br label %87

47:                                               ; preds = %36
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %53 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TTM_PL_FLAG_WC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  br label %71

69:                                               ; preds = %47
  %70 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i8* @pmap_mapdev_attr(i64 %56, i32 %60, i32 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %78 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %77, i32 0)
  %79 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %80 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %81 = call i32 @ttm_mem_io_free(%struct.ttm_bo_device* %79, %struct.ttm_mem_reg* %80)
  %82 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %83 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %42
  %88 = load i8*, i8** %10, align 8
  %89 = load i8**, i8*** %7, align 8
  store i8* %88, i8** %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %76, %34
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.ttm_bo_device*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i8* @pmap_mapdev_attr(i64, i32, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.ttm_bo_device*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
