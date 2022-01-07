; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ttm_bo_device = type { i32 }
%struct.vm_object = type { i32 }
%struct.ttm_bo_driver = type { i32 (%struct.ttm_buffer_object*)* }
%struct.ttm_buffer_object = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.ttm_bo_driver* }

@.str = private unnamed_addr constant [43 x i8] c"[TTM] Could not find buffer object to map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@ttm_pager_ops = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_mmap_single(%struct.ttm_bo_device* %0, i64* %1, i64 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_bo_driver*, align 8
  %13 = alloca %struct.ttm_buffer_object*, align 8
  %14 = alloca %struct.vm_object*, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 0
  %18 = call i32 @rw_wlock(i32* %17)
  %19 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @OFF_TO_IDX(i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @OFF_TO_IDX(i64 %23)
  %25 = call %struct.ttm_buffer_object* @ttm_bo_vm_lookup_rb(%struct.ttm_bo_device* %19, i32 %22, i32 %24)
  store %struct.ttm_buffer_object* %25, %struct.ttm_buffer_object** %13, align 8
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %27 = icmp ne %struct.ttm_buffer_object* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 1
  %34 = call i32 @refcount_acquire(i32* %33)
  br label %35

35:                                               ; preds = %31, %5
  %36 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %37 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %36, i32 0, i32 0
  %38 = call i32 @rw_wunlock(i32* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %40 = icmp eq %struct.ttm_buffer_object* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %98

48:                                               ; preds = %35
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %52, align 8
  store %struct.ttm_bo_driver* %53, %struct.ttm_bo_driver** %12, align 8
  %54 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %12, align 8
  %55 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %54, i32 0, i32 0
  %56 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %55, align 8
  %57 = icmp ne i32 (%struct.ttm_buffer_object*)* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  br label %95

65:                                               ; preds = %48
  %66 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %12, align 8
  %67 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %66, i32 0, i32 0
  %68 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %67, align 8
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %70 = call i32 %68(%struct.ttm_buffer_object* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %95

77:                                               ; preds = %65
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %13, align 8
  %79 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.vm_object* @cdev_pager_allocate(%struct.ttm_buffer_object* %78, i32 %79, i32* @ttm_pager_ops, i64 %80, i32 %81, i32 0, i32 %84)
  store %struct.vm_object* %85, %struct.vm_object** %14, align 8
  %86 = load %struct.vm_object*, %struct.vm_object** %14, align 8
  %87 = icmp eq %struct.vm_object* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %95

91:                                               ; preds = %77
  %92 = load i64*, i64** %8, align 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.vm_object*, %struct.vm_object** %14, align 8
  %94 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  store %struct.vm_object* %93, %struct.vm_object** %94, align 8
  store i32 0, i32* %6, align 4
  br label %98

95:                                               ; preds = %88, %76, %62
  %96 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %13)
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %91, %44
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.ttm_buffer_object* @ttm_bo_vm_lookup_rb(%struct.ttm_bo_device*, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.vm_object* @cdev_pager_allocate(%struct.ttm_buffer_object*, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
