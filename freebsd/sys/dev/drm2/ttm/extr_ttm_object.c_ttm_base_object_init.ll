; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_base_object_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_base_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_file = type { %struct.ttm_object_device* }
%struct.ttm_object_device = type { i32, i32 }
%struct.ttm_base_object = type { i32, void (%struct.ttm_base_object**)*, void (%struct.ttm_base_object*, i32)*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ttmbao\00", align 1
@TTM_REF_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_base_object_init(%struct.ttm_object_file* %0, %struct.ttm_base_object* %1, i32 %2, i32 %3, void (%struct.ttm_base_object**)* %4, {}* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_object_file*, align 8
  %9 = alloca %struct.ttm_base_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.ttm_base_object**)*, align 8
  %13 = alloca {}*, align 8
  %14 = alloca %struct.ttm_object_device*, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_object_file* %0, %struct.ttm_object_file** %8, align 8
  store %struct.ttm_base_object* %1, %struct.ttm_base_object** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store void (%struct.ttm_base_object**)* %4, void (%struct.ttm_base_object**)** %12, align 8
  store {}* %5, {}** %13, align 8
  %16 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %17 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %16, i32 0, i32 0
  %18 = load %struct.ttm_object_device*, %struct.ttm_object_device** %17, align 8
  store %struct.ttm_object_device* %18, %struct.ttm_object_device** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %21 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %23 = call i32 @ttm_object_file_ref(%struct.ttm_object_file* %22)
  %24 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load void (%struct.ttm_base_object**)*, void (%struct.ttm_base_object**)** %12, align 8
  %27 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %28 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %27, i32 0, i32 1
  store void (%struct.ttm_base_object**)* %26, void (%struct.ttm_base_object**)** %28, align 8
  %29 = load {}*, {}** %13, align 8
  %30 = bitcast {}* %29 to void (%struct.ttm_base_object*, i32)*
  %31 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %31, i32 0, i32 2
  store void (%struct.ttm_base_object*, i32)* %30, void (%struct.ttm_base_object*, i32)** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %37 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %36, i32 0, i32 5
  %38 = call i32 @refcount_init(i32* %37, i32 1)
  %39 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %40 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %39, i32 0, i32 0
  %41 = call i32 @rw_init(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %43 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %42, i32 0, i32 0
  %44 = call i32 @rw_wlock(i32* %43)
  %45 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %46 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %45, i32 0, i32 1
  %47 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %48 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %47, i32 0, i32 4
  %49 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %50 = ptrtoint %struct.ttm_base_object* %49 to i64
  %51 = call i32 @drm_ht_just_insert_please(i32* %46, i32* %48, i64 %50, i32 31, i32 0, i32 0)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %53 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %52, i32 0, i32 0
  %54 = call i32 @rw_wunlock(i32* %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %6
  br label %86

61:                                               ; preds = %6
  %62 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %63 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %64 = load i32, i32* @TTM_REF_USAGE, align 4
  %65 = call i32 @ttm_ref_object_add(%struct.ttm_object_file* %62, %struct.ttm_base_object* %63, i32 %64, i32* null)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %74

72:                                               ; preds = %61
  %73 = call i32 @ttm_base_object_unref(%struct.ttm_base_object** %9)
  store i32 0, i32* %7, align 4
  br label %88

74:                                               ; preds = %71
  %75 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %76 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %75, i32 0, i32 0
  %77 = call i32 @rw_wlock(i32* %76)
  %78 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %79 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %78, i32 0, i32 1
  %80 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %81 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %80, i32 0, i32 4
  %82 = call i32 @drm_ht_remove_item(i32* %79, i32* %81)
  %83 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %84 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %83, i32 0, i32 0
  %85 = call i32 @rw_wunlock(i32* %84)
  br label %86

86:                                               ; preds = %74, %60
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %72
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @ttm_object_file_ref(%struct.ttm_object_file*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @drm_ht_just_insert_please(i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_ref_object_add(%struct.ttm_object_file*, %struct.ttm_base_object*, i32, i32*) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object**) #1

declare dso_local i32 @drm_ht_remove_item(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
