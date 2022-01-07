; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_and_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_cleanup_refs_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, %struct.ttm_bo_global*, %struct.ttm_bo_device* }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_bo_device = type { i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (i8*, i32, i32)*, i32 (i8**)*, i8* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32)* @ttm_bo_cleanup_refs_and_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_cleanup_refs_and_unlock(%struct.ttm_buffer_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca %struct.ttm_bo_driver*, align 8
  %10 = alloca %struct.ttm_bo_global*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 4
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %15, align 8
  store %struct.ttm_bo_device* %16, %struct.ttm_bo_device** %8, align 8
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %18 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %17, i32 0, i32 1
  %19 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %18, align 8
  store %struct.ttm_bo_driver* %19, %struct.ttm_bo_driver** %9, align 8
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %20, i32 0, i32 3
  %22 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %21, align 8
  store %struct.ttm_bo_global* %22, %struct.ttm_bo_global** %10, align 8
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %24 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %27 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %26, i32 0, i32 0, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %92

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %92, label %33

33:                                               ; preds = %30
  %34 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %34, i32 0, i32 2
  %36 = load i8* (i32)*, i8* (i32)** %35, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i8* %36(i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 1
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %48 = call i32 @wakeup(%struct.ttm_buffer_object* %47)
  %49 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %50 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %53 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %52, i32 0, i32 0
  %54 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %53, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %54(i8* %55, i32 0, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %59 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %58, i32 0, i32 1
  %60 = load i32 (i8**)*, i32 (i8**)** %59, align 8
  %61 = call i32 %60(i8** %13)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %33
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %131

66:                                               ; preds = %33
  %67 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %68 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %67, i32 0, i32 0
  %69 = call i32 @mtx_lock(i32* %68)
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %71 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %70, i32 0, i32 0, i32 1)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %73 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %131

79:                                               ; preds = %66
  %80 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %81 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %80, i32 0, i32 0
  %82 = call i32 @mtx_lock(i32* %81)
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %84 = call i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %83, i32 0, i32 1, i32 0, i32 0)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %89 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  store i32 0, i32* %4, align 4
  br label %131

91:                                               ; preds = %79
  br label %96

92:                                               ; preds = %30, %3
  %93 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %94 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %93, i32 0, i32 0
  %95 = call i32 @mtx_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %91
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %101 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %100, i32 0, i32 0
  %102 = call i32 @list_empty(i32* %101)
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %99, %96
  %106 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %107 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %106, i32 0, i32 1
  %108 = call i32 @atomic_set(i32* %107, i32 0)
  %109 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %110 = call i32 @wakeup(%struct.ttm_buffer_object* %109)
  %111 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %112 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %111, i32 0, i32 0
  %113 = call i32 @mtx_unlock(i32* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %131

115:                                              ; preds = %99
  %116 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %117 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %119 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %118, i32 0, i32 0
  %120 = call i32 @list_del_init(i32* %119)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %124 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %123, i32 0, i32 0
  %125 = call i32 @mtx_unlock(i32* %124)
  %126 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %127 = call i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %126)
  %128 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %128, i32 %129, i32 1)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %115, %105, %87, %77, %64
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
