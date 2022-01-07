; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list_entry = type { %struct.resource* }
%struct.scc_chan = type { i32 }
%struct.scc_mode = type { %struct.scc_chan* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @scc_bus_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource_list_entry*, align 8
  %19 = alloca %struct.scc_chan*, align 8
  %20 = alloca %struct.scc_mode*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @device_get_parent(i64 %21)
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %50

26:                                               ; preds = %8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @RMAN_IS_DEFAULT_RANGE(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %50

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.scc_mode* @device_get_ivars(i64 %33)
  store %struct.scc_mode* %34, %struct.scc_mode** %20, align 8
  %35 = load %struct.scc_mode*, %struct.scc_mode** %20, align 8
  %36 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %35, i32 0, i32 0
  %37 = load %struct.scc_chan*, %struct.scc_chan** %36, align 8
  store %struct.scc_chan* %37, %struct.scc_chan** %19, align 8
  %38 = load %struct.scc_chan*, %struct.scc_chan** %19, align 8
  %39 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.resource_list_entry* @resource_list_find(i32* %39, i32 %40, i32 0)
  store %struct.resource_list_entry* %41, %struct.resource_list_entry** %18, align 8
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %18, align 8
  %43 = icmp eq %struct.resource_list_entry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load i32*, i32** %13, align 8
  store i32 0, i32* %46, align 4
  %47 = load %struct.resource_list_entry*, %struct.resource_list_entry** %18, align 8
  %48 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %48, align 8
  store %struct.resource* %49, %struct.resource** %9, align 8
  br label %50

50:                                               ; preds = %45, %44, %31, %25
  %51 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %51
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.scc_mode* @device_get_ivars(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
