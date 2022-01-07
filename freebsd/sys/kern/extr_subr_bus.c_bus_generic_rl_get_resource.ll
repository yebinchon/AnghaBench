; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_rl_get_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_rl_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_generic_rl_get_resource(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.resource_list*, align 8
  %15 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.resource_list* null, %struct.resource_list** %14, align 8
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %16, i32 %17)
  store %struct.resource_list* %18, %struct.resource_list** %14, align 8
  %19 = load %struct.resource_list*, %struct.resource_list** %14, align 8
  %20 = icmp ne %struct.resource_list* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %49

23:                                               ; preds = %6
  %24 = load %struct.resource_list*, %struct.resource_list** %14, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %24, i32 %25, i32 %26)
  store %struct.resource_list_entry* %27, %struct.resource_list_entry** %15, align 8
  %28 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %29 = icmp ne %struct.resource_list_entry* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %7, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %37 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %12, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.resource_list_entry*, %struct.resource_list_entry** %15, align 8
  %45 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %40
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %30, %21
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
