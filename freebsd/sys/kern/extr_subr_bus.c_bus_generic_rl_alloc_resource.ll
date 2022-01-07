; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_rl_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_rl_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @bus_generic_rl_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.resource_list* null, %struct.resource_list** %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %25, i32 %26, i32 %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store %struct.resource* %33, %struct.resource** %9, align 8
  br label %52

34:                                               ; preds = %8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %35, i32 %36)
  store %struct.resource_list* %37, %struct.resource_list** %18, align 8
  %38 = load %struct.resource_list*, %struct.resource_list** %18, align 8
  %39 = icmp ne %struct.resource_list* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.resource_list*, %struct.resource_list** %18, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %42, i32 %43, i32 %44, i32 %45, i32* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store %struct.resource* %51, %struct.resource** %9, align 8
  br label %52

52:                                               ; preds = %41, %40, %23
  %53 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %53
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
