; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.nexus_device = type { i32 }
%struct.resource_list_entry = type { i32, i32, i32 }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i32, i32*, i32, i32, i32, i32)* @nexus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @nexus_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nexus_device*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca %struct.rman*, align 8
  %22 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i64, i64* %11, align 8
  %24 = call %struct.nexus_device* @DEVTONX(i64 %23)
  store %struct.nexus_device* %24, %struct.nexus_device** %18, align 8
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %8
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @device_get_parent(i64 %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.nexus_device*, %struct.nexus_device** %18, align 8
  %42 = icmp eq %struct.nexus_device* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %35
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %106

44:                                               ; preds = %40
  %45 = load %struct.nexus_device*, %struct.nexus_device** %18, align 8
  %46 = getelementptr inbounds %struct.nexus_device, %struct.nexus_device* %45, i32 0, i32 0
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.resource_list_entry* @resource_list_find(i32* %46, i32 %47, i32 %49)
  store %struct.resource_list_entry* %50, %struct.resource_list_entry** %20, align 8
  %51 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %52 = icmp eq %struct.resource_list_entry* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %106

54:                                               ; preds = %44
  %55 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %56 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %59 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %62 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %54, %32, %8
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call %struct.rman* @nexus_rman(i32 %69)
  store %struct.rman* %70, %struct.rman** %21, align 8
  %71 = load %struct.rman*, %struct.rman** %21, align 8
  %72 = icmp eq %struct.rman* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %106

74:                                               ; preds = %64
  %75 = load %struct.rman*, %struct.rman** %21, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* %11, align 8
  %81 = call %struct.resource* @rman_reserve_resource(%struct.rman* %75, i32 %76, i32 %77, i32 %78, i32 %79, i64 %80)
  store %struct.resource* %81, %struct.resource** %19, align 8
  %82 = load %struct.resource*, %struct.resource** %19, align 8
  %83 = icmp eq %struct.resource* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %106

85:                                               ; preds = %74
  %86 = load %struct.resource*, %struct.resource** %19, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rman_set_rid(%struct.resource* %86, i32 %88)
  %90 = load i32, i32* %22, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.resource*, %struct.resource** %19, align 8
  %98 = call i64 @bus_activate_resource(i64 %93, i32 %94, i32 %96, %struct.resource* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.resource*, %struct.resource** %19, align 8
  %102 = call i32 @rman_release_resource(%struct.resource* %101)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %106

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %105, %struct.resource** %9, align 8
  br label %106

106:                                              ; preds = %104, %100, %84, %73, %53, %43
  %107 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %107
}

declare dso_local %struct.nexus_device* @DEVTONX(i64) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.rman* @nexus_rman(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
