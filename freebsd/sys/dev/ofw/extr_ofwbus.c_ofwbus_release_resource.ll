; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwbus.c_ofwbus_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwbus.c_ofwbus_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list_entry = type { i32* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, %struct.resource*)* @ofwbus_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwbus_release_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource_list_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @BUS_GET_RESOURCE_LIST(i64 %23, i64 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.resource_list_entry* @resource_list_find(i32 %25, i32 %26, i32 %27)
  store %struct.resource_list_entry* %28, %struct.resource_list_entry** %12, align 8
  %29 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %30 = icmp ne %struct.resource_list_entry* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %33 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %5
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = call i32 @rman_get_flags(%struct.resource* %36)
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.resource*, %struct.resource** %11, align 8
  %46 = call i32 @bus_deactivate_resource(i64 %42, i32 %43, i32 %44, %struct.resource* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.resource*, %struct.resource** %11, align 8
  %54 = call i32 @rman_release_resource(%struct.resource* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i64, i64) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bus_deactivate_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
