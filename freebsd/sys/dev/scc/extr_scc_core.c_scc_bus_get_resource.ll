; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_get_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list_entry = type { i32, i32 }
%struct.scc_chan = type { i32 }
%struct.scc_mode = type { %struct.scc_chan* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bus_get_resource(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.resource_list_entry*, align 8
  %15 = alloca %struct.scc_chan*, align 8
  %16 = alloca %struct.scc_mode*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @device_get_parent(i64 %17)
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %55

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = call %struct.scc_mode* @device_get_ivars(i64 %24)
  store %struct.scc_mode* %25, %struct.scc_mode** %16, align 8
  %26 = load %struct.scc_mode*, %struct.scc_mode** %16, align 8
  %27 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %26, i32 0, i32 0
  %28 = load %struct.scc_chan*, %struct.scc_chan** %27, align 8
  store %struct.scc_chan* %28, %struct.scc_chan** %15, align 8
  %29 = load %struct.scc_chan*, %struct.scc_chan** %15, align 8
  %30 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.resource_list_entry* @resource_list_find(i32* %30, i32 %31, i32 %32)
  store %struct.resource_list_entry* %33, %struct.resource_list_entry** %14, align 8
  %34 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %35 = icmp eq %struct.resource_list_entry* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %7, align 4
  br label %55

38:                                               ; preds = %23
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %43 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %51 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %36, %21
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.scc_mode* @device_get_ivars(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
