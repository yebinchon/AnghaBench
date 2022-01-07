; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"resource_list_reserve() should only be called for direct children\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"resource_list_reserve() should only reserve inactive resources\00", align 1
@RLE_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @resource_list_reserve(%struct.resource_list* %0, i64 %1, i64 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.resource_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.resource*, align 8
  store %struct.resource_list* %0, %struct.resource_list** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %19, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @device_get_parent(i64 %22)
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %9
  %30 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.resource_list*, %struct.resource_list** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %39, i64 %40, i64 %41, i32 %42, i32* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct.resource* %48, %struct.resource** %21, align 8
  %49 = load %struct.resource*, %struct.resource** %21, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load %struct.resource_list*, %struct.resource_list** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %52, i32 %53, i32 %55)
  store %struct.resource_list_entry* %56, %struct.resource_list_entry** %19, align 8
  %57 = load i32, i32* @RLE_RESERVED, align 4
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %59 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %51, %38
  %63 = load %struct.resource*, %struct.resource** %21, align 8
  ret %struct.resource* %63
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i64, i64, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
