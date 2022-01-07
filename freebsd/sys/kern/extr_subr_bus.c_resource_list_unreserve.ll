; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_unreserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_unreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"resource_list_unreserve() should only be called for direct children\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"resource_list_unreserve: can't find resource\00", align 1
@RLE_RESERVED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RLE_ALLOCATED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_list_unreserve(%struct.resource_list* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource_list*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource_list_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @device_get_parent(i64 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = call i32 @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %5
  %24 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %24, i32 %25, i32 %26)
  store %struct.resource_list_entry* %27, %struct.resource_list_entry** %12, align 8
  %28 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %29 = icmp ne %struct.resource_list_entry* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %34 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RLE_RESERVED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %43 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RLE_ALLOCATED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %41
  %51 = load i32, i32* @RLE_RESERVED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %54 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %63 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @resource_list_release(%struct.resource_list* %57, i64 %58, i64 %59, i32 %60, i32 %61, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %50, %48, %39
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_release(%struct.resource_list*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
