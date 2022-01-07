; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_device = type { i32, i32, i32, %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }

@M_TTM_OBJ_DEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttmdo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_object_device* @ttm_object_device_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_object_device*, align 8
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_object_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @M_TTM_OBJ_DEV, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.ttm_object_device* @malloc(i32 24, i32 %8, i32 %9)
  store %struct.ttm_object_device* %10, %struct.ttm_object_device** %6, align 8
  %11 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %12 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %12, i32 0, i32 3
  store %struct.ttm_mem_global* %11, %struct.ttm_mem_global** %13, align 8
  %14 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %14, i32 0, i32 2
  %16 = call i32 @rw_init(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %17, i32 0, i32 1
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %21 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @drm_ht_create(i32* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  store %struct.ttm_object_device* %27, %struct.ttm_object_device** %3, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.ttm_object_device*, %struct.ttm_object_device** %6, align 8
  %30 = load i32, i32* @M_TTM_OBJ_DEV, align 4
  %31 = call i32 @free(%struct.ttm_object_device* %29, i32 %30)
  store %struct.ttm_object_device* null, %struct.ttm_object_device** %3, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  ret %struct.ttm_object_device* %33
}

declare dso_local %struct.ttm_object_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @free(%struct.ttm_object_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
