; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list_entry = type { i32 }
%struct.scc_chan = type { i32 }
%struct.scc_mode = type { %struct.scc_chan* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bus_release_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource_list_entry*, align 8
  %13 = alloca %struct.scc_chan*, align 8
  %14 = alloca %struct.scc_mode*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.scc_mode* @device_get_ivars(i64 %22)
  store %struct.scc_mode* %23, %struct.scc_mode** %14, align 8
  %24 = load %struct.scc_mode*, %struct.scc_mode** %14, align 8
  %25 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %24, i32 0, i32 0
  %26 = load %struct.scc_chan*, %struct.scc_chan** %25, align 8
  store %struct.scc_chan* %26, %struct.scc_chan** %13, align 8
  %27 = load %struct.scc_chan*, %struct.scc_chan** %13, align 8
  %28 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.resource_list_entry* @resource_list_find(i32* %28, i32 %29, i32 %30)
  store %struct.resource_list_entry* %31, %struct.resource_list_entry** %12, align 8
  %32 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %33 = icmp eq %struct.resource_list_entry* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
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
