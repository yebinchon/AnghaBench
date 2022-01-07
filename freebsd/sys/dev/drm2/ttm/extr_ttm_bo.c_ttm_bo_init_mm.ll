; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_init_mm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_init_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_3__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)* }
%struct.ttm_mem_type_manager = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.ttm_bo_device*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ttm_mem_type_manager*, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ttmman\00", align 1
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init_mm(%struct.ttm_bo_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  %14 = icmp ult i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %17, i32 0, i32 1
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %19, i64 %21
  store %struct.ttm_mem_type_manager* %22, %struct.ttm_mem_type_manager** %9, align 8
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %33 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %34, i32 0, i32 9
  %36 = call i32 @sx_init(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %37, i32 0, i32 8
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %41 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)*, i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)** %43, align 8
  %45 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %48 = call i32 %44(%struct.ttm_bo_device* %45, i32 %46, %struct.ttm_mem_type_manager* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %3
  %54 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %55 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %55, i32 0, i32 7
  store %struct.ttm_bo_device* %54, %struct.ttm_bo_device** %56, align 8
  store i32 0, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ttm_mem_type_manager*, i64)*, i32 (%struct.ttm_mem_type_manager*, i64)** %64, align 8
  %66 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 %65(%struct.ttm_mem_type_manager* %66, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %85

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %76 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %78 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %81 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %83 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %82, i32 0, i32 5
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %74, %71, %51
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
