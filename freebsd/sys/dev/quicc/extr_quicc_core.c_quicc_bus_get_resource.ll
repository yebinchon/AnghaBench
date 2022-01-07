; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_get_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc_device = type { i32 }
%struct.resource_list_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bus_get_resource(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.quicc_device*, align 8
  %15 = alloca %struct.resource_list_entry*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @device_get_parent(i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %51

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.quicc_device* @device_get_ivars(i64 %23)
  store %struct.quicc_device* %24, %struct.quicc_device** %14, align 8
  %25 = load %struct.quicc_device*, %struct.quicc_device** %14, align 8
  %26 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %25, i32 0, i32 0
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.resource_list_entry* @resource_list_find(i32* %26, i32 %27, i32 %28)
  store %struct.resource_list_entry* %29, %struct.resource_list_entry** %15, align 8
  %30 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %31 = icmp eq %struct.resource_list_entry* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %22
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %39 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %47 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %32, %20
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.quicc_device* @device_get_ivars(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
