; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_lookup_rb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_lookup_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ttm_bo_device = type { i32 }

@vm_rb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_buffer_object* (%struct.ttm_bo_device*, i64, i64)* @ttm_bo_vm_lookup_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_buffer_object* @ttm_bo_vm_lookup_rb(%struct.ttm_bo_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ttm_buffer_object* null, %struct.ttm_buffer_object** %10, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 0
  %13 = call %struct.ttm_buffer_object* @RB_ROOT(i32* %12)
  store %struct.ttm_buffer_object* %13, %struct.ttm_buffer_object** %9, align 8
  br label %14

14:                                               ; preds = %40, %3
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %16 = icmp ne %struct.ttm_buffer_object* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  store %struct.ttm_buffer_object* %27, %struct.ttm_buffer_object** %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %34 = load i32, i32* @vm_rb, align 4
  %35 = call %struct.ttm_buffer_object* @RB_RIGHT(%struct.ttm_buffer_object* %33, i32 %34)
  store %struct.ttm_buffer_object* %35, %struct.ttm_buffer_object** %9, align 8
  br label %40

36:                                               ; preds = %17
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %38 = load i32, i32* @vm_rb, align 4
  %39 = call %struct.ttm_buffer_object* @RB_LEFT(%struct.ttm_buffer_object* %37, i32 %38)
  store %struct.ttm_buffer_object* %39, %struct.ttm_buffer_object** %9, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %14

41:                                               ; preds = %31, %14
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %43 = icmp eq %struct.ttm_buffer_object* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.ttm_buffer_object* null, %struct.ttm_buffer_object** %4, align 8
  br label %68

48:                                               ; preds = %41
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  store %struct.ttm_buffer_object* null, %struct.ttm_buffer_object** %4, align 8
  br label %68

66:                                               ; preds = %48
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %10, align 8
  store %struct.ttm_buffer_object* %67, %struct.ttm_buffer_object** %4, align 8
  br label %68

68:                                               ; preds = %66, %65, %47
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  ret %struct.ttm_buffer_object* %69
}

declare dso_local %struct.ttm_buffer_object* @RB_ROOT(i32*) #1

declare dso_local %struct.ttm_buffer_object* @RB_RIGHT(%struct.ttm_buffer_object*, i32) #1

declare dso_local %struct.ttm_buffer_object* @RB_LEFT(%struct.ttm_buffer_object*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
