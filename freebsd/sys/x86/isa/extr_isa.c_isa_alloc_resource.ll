; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa.c_isa_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa.c_isa_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.isa_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32 }

@ISA_NIRQ = common dso_local global i32 0, align 4
@ISA_NDRQ = common dso_local global i32 0, align 4
@ISA_NMEM = common dso_local global i32 0, align 4
@ISA_NPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @isa_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.isa_device*, align 8
  %21 = alloca %struct.resource_list*, align 8
  %22 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @RMAN_IS_DEFAULT_RANGE(i32 %28, i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.isa_device* @DEVTOISA(i32 %31)
  store %struct.isa_device* %32, %struct.isa_device** %20, align 8
  %33 = load %struct.isa_device*, %struct.isa_device** %20, align 8
  %34 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %33, i32 0, i32 0
  store %struct.resource_list* %34, %struct.resource_list** %21, align 8
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %94, label %40

40:                                               ; preds = %37
  %41 = load %struct.resource_list*, %struct.resource_list** %21, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %41, i32 %42, i32 %44)
  store %struct.resource_list_entry* %45, %struct.resource_list_entry** %22, align 8
  %46 = load %struct.resource_list_entry*, %struct.resource_list_entry** %22, align 8
  %47 = icmp ne %struct.resource_list_entry* %46, null
  br i1 %47, label %93, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %83 [
    i32 129, label %55
    i32 131, label %62
    i32 128, label %69
    i32 130, label %76
  ]

55:                                               ; preds = %53
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ISA_NIRQ, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

61:                                               ; preds = %55
  br label %84

62:                                               ; preds = %53
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISA_NDRQ, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

68:                                               ; preds = %62
  br label %84

69:                                               ; preds = %53
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISA_NMEM, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

75:                                               ; preds = %69
  br label %84

76:                                               ; preds = %53
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISA_NPORT, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

82:                                               ; preds = %76
  br label %84

83:                                               ; preds = %53
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %105

84:                                               ; preds = %82, %75, %68, %61
  %85 = load %struct.resource_list*, %struct.resource_list** %21, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @resource_list_add(%struct.resource_list* %85, i32 %86, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %40
  br label %94

94:                                               ; preds = %93, %37, %8
  %95 = load %struct.resource_list*, %struct.resource_list** %21, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %95, i32 %96, i32 %97, i32 %98, i32* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  store %struct.resource* %104, %struct.resource** %9, align 8
  br label %105

105:                                              ; preds = %94, %83, %81, %74, %67, %60, %52
  %106 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %106
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
