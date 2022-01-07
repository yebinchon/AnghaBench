; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_isa.c_isa_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_isa.c_isa_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.isa_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@ISA_PNP_NPORT = common dso_local global i32 0, align 4
@ISA_PNP_NIRQ = common dso_local global i32 0, align 4
@ISA_PNP_NMEM = common dso_local global i32 0, align 4

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
  %18 = alloca %struct.isa_device*, align 8
  %19 = alloca %struct.resource_list*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.isa_device* @DEVTOISA(i32 %23)
  store %struct.isa_device* %24, %struct.isa_device** %18, align 8
  %25 = load %struct.isa_device*, %struct.isa_device** %18, align 8
  %26 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %25, i32 0, i32 0
  store %struct.resource_list* %26, %struct.resource_list** %19, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %8
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %41
  %45 = load %struct.resource_list*, %struct.resource_list** %19, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @resource_list_find(%struct.resource_list* %45, i32 %46, i32 %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %59 [
    i32 130, label %53
    i32 129, label %55
    i32 128, label %57
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* @ISA_PNP_NPORT, align 4
  store i32 %54, i32* %22, align 4
  br label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @ISA_PNP_NIRQ, align 4
  store i32 %56, i32* %22, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ISA_PNP_NMEM, align 4
  store i32 %58, i32* %22, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %22, align 4
  br label %60

60:                                               ; preds = %59, %57, %55, %53
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %60
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %90

70:                                               ; preds = %64
  %71 = load %struct.resource_list*, %struct.resource_list** %19, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @resource_list_add(%struct.resource_list* %71, i32 %72, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %44, %41, %8
  %80 = load %struct.resource_list*, %struct.resource_list** %19, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %80, i32 %81, i32 %82, i32 %83, i32* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store %struct.resource* %89, %struct.resource** %9, align 8
  br label %90

90:                                               ; preds = %79, %69
  %91 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %91
}

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
