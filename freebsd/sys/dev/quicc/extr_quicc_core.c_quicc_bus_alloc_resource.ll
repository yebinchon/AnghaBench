; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.quicc_device = type { i32, i32 }
%struct.resource_list_entry = type { %struct.resource*, i64, i64 }

@bs_be_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @quicc_bus_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.quicc_device*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @device_get_parent(i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %92

25:                                               ; preds = %8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @RMAN_IS_DEFAULT_RANGE(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %92

31:                                               ; preds = %25
  %32 = load i64, i64* %11, align 8
  %33 = call %struct.quicc_device* @device_get_ivars(i64 %32)
  store %struct.quicc_device* %33, %struct.quicc_device** %18, align 8
  %34 = load %struct.quicc_device*, %struct.quicc_device** %18, align 8
  %35 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %34, i32 0, i32 1
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.resource_list_entry* @resource_list_find(i32* %35, i32 %36, i32 %38)
  store %struct.resource_list_entry* %39, %struct.resource_list_entry** %19, align 8
  %40 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %41 = icmp eq %struct.resource_list_entry* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %92

43:                                               ; preds = %31
  %44 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %45 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  %47 = icmp eq %struct.resource* %46, null
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load %struct.quicc_device*, %struct.quicc_device** %18, align 8
  %50 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %53 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %56 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %59 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %64 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i64, i64* %11, align 8
  %68 = call %struct.resource* @rman_reserve_resource(i32 %51, i64 %54, i64 %62, i64 %65, i32 %66, i64 %67)
  %69 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %70 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %69, i32 0, i32 0
  store %struct.resource* %68, %struct.resource** %70, align 8
  %71 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %72 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %71, i32 0, i32 0
  %73 = load %struct.resource*, %struct.resource** %72, align 8
  %74 = icmp ne %struct.resource* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %48
  %76 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %77 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %76, i32 0, i32 0
  %78 = load %struct.resource*, %struct.resource** %77, align 8
  %79 = call i32 @rman_set_bustag(%struct.resource* %78, i32* @bs_be_tag)
  %80 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %81 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  %83 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %84 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @rman_set_bushandle(%struct.resource* %82, i64 %85)
  br label %87

87:                                               ; preds = %75, %48
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %90 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %89, i32 0, i32 0
  %91 = load %struct.resource*, %struct.resource** %90, align 8
  store %struct.resource* %91, %struct.resource** %9, align 8
  br label %92

92:                                               ; preds = %88, %42, %30, %24
  %93 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %93
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.quicc_device* @device_get_ivars(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32, i64, i64, i64, i32, i64) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
