; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource = type { i32 }
%struct.resource_list_entry = type { i32, i32* }

@.str = private unnamed_addr constant [43 x i8] c"resource_list_release: can't find resource\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"resource_list_release: resource entry is not busy\00", align 1
@RLE_RESERVED = common dso_local global i32 0, align 4
@RLE_ALLOCATED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_list_release(%struct.resource_list* %0, i64 %1, i64 %2, i32 %3, i32 %4, %struct.resource* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.resource_list_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.resource* %5, %struct.resource** %13, align 8
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @device_get_parent(i64 %17)
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @device_get_parent(i64 %25)
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.resource*, %struct.resource** %13, align 8
  %31 = call i32 @BUS_RELEASE_RESOURCE(i64 %26, i64 %27, i32 %28, i32 %29, %struct.resource* %30)
  store i32 %31, i32* %7, align 4
  br label %103

32:                                               ; preds = %6
  %33 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %33, i32 %34, i32 %35)
  store %struct.resource_list_entry* %36, %struct.resource_list_entry** %14, align 8
  %37 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %38 = icmp ne %struct.resource_list_entry* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %43 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %50 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RLE_RESERVED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %48
  %56 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %57 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RLE_ALLOCATED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load %struct.resource*, %struct.resource** %13, align 8
  %64 = call i32 @rman_get_flags(%struct.resource* %63)
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.resource*, %struct.resource** %13, align 8
  %73 = call i32 @bus_deactivate_resource(i64 %69, i32 %70, i32 %71, %struct.resource* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %7, align 4
  br label %103

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* @RLE_ALLOCATED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %83 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 0, i32* %7, align 4
  br label %103

86:                                               ; preds = %55
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %7, align 4
  br label %103

88:                                               ; preds = %48
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @device_get_parent(i64 %89)
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.resource*, %struct.resource** %13, align 8
  %95 = call i32 @BUS_RELEASE_RESOURCE(i64 %90, i64 %91, i32 %92, i32 %93, %struct.resource* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %7, align 4
  br label %103

100:                                              ; preds = %88
  %101 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %102 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %98, %86, %79, %76, %24
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bus_deactivate_resource(i64, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
