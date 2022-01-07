; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_release_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_release_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32 (%struct.ttm_buffer_object*)*, %struct.TYPE_5__*, i64, i32, i32, %struct.TYPE_4__, i32*, i32, i32, i32, %struct.ttm_bo_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ttm_bo_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@M_TTM_BO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_release_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_release_list(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca i64, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 11
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  store %struct.ttm_bo_device* %7, %struct.ttm_bo_device** %3, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 10
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 9
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 8
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @MPASS(i32 %27)
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @MPASS(i32 %40)
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 5
  %44 = call i32 @list_empty(i32* %43)
  %45 = call i32 @MPASS(i32 %44)
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 4
  %48 = call i32 @list_empty(i32* %47)
  %49 = call i32 @MPASS(i32 %48)
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %1
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %56 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ttm_tt_destroy(i64 %57)
  br label %59

59:                                               ; preds = %54, %1
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %61 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @atomic_dec(i32* %63)
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %65, i32 0, i32 1
  %67 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %66, align 8
  %68 = icmp ne i32 (%struct.ttm_buffer_object*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %71 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %70, i32 0, i32 1
  %72 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %71, align 8
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %74 = call i32 %72(%struct.ttm_buffer_object* %73)
  br label %79

75:                                               ; preds = %59
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %77 = load i32, i32* @M_TTM_BO, align 4
  %78 = call i32 @free(%struct.ttm_buffer_object* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %81 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @ttm_mem_global_free(i32 %84, i64 %85)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ttm_tt_destroy(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @free(%struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @ttm_mem_global_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
