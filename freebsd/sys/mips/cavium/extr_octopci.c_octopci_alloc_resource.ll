; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.octopci_softc = type { i64, i64, %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@octopci_bus_space = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @octopci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @octopci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.octopci_softc*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.rman*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.octopci_softc* @device_get_softc(i32 %22)
  store %struct.octopci_softc* %23, %struct.octopci_softc** %18, align 8
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %46 [
    i32 129, label %25
    i32 128, label %40
    i32 130, label %43
  ]

25:                                               ; preds = %8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call %struct.resource* @bus_generic_alloc_resource(i32 %26, i32 %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store %struct.resource* %34, %struct.resource** %19, align 8
  %35 = load %struct.resource*, %struct.resource** %19, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %38, %struct.resource** %9, align 8
  br label %107

39:                                               ; preds = %25
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

40:                                               ; preds = %8
  %41 = load %struct.octopci_softc*, %struct.octopci_softc** %18, align 8
  %42 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %41, i32 0, i32 3
  store %struct.rman* %42, %struct.rman** %20, align 8
  br label %47

43:                                               ; preds = %8
  %44 = load %struct.octopci_softc*, %struct.octopci_softc** %18, align 8
  %45 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %44, i32 0, i32 2
  store %struct.rman* %45, %struct.rman** %20, align 8
  br label %47

46:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

47:                                               ; preds = %43, %40
  %48 = load %struct.rman*, %struct.rman** %20, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.resource* @rman_reserve_resource(%struct.rman* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  store %struct.resource* %54, %struct.resource** %19, align 8
  %55 = load %struct.resource*, %struct.resource** %19, align 8
  %56 = icmp eq %struct.resource* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

58:                                               ; preds = %47
  %59 = load %struct.resource*, %struct.resource** %19, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rman_set_rid(%struct.resource* %59, i32 %61)
  %63 = load %struct.resource*, %struct.resource** %19, align 8
  %64 = load i32, i32* @octopci_bus_space, align 4
  %65 = call i32 @rman_set_bustag(%struct.resource* %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  switch i32 %66, label %87 [
    i32 128, label %67
    i32 130, label %76
  ]

67:                                               ; preds = %58
  %68 = load %struct.resource*, %struct.resource** %19, align 8
  %69 = load %struct.octopci_softc*, %struct.octopci_softc** %18, align 8
  %70 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.resource*, %struct.resource** %19, align 8
  %73 = call i64 @rman_get_start(%struct.resource* %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @rman_set_bushandle(%struct.resource* %68, i64 %74)
  br label %87

76:                                               ; preds = %58
  %77 = load %struct.resource*, %struct.resource** %19, align 8
  %78 = load %struct.octopci_softc*, %struct.octopci_softc** %18, align 8
  %79 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.resource*, %struct.resource** %19, align 8
  %82 = call i64 @rman_get_start(%struct.resource* %81)
  %83 = add nsw i64 %80, %82
  %84 = call i32 @rman_set_bushandle(%struct.resource* %77, i64 %83)
  %85 = load %struct.resource*, %struct.resource** %19, align 8
  %86 = call i32 @rman_set_virtual(%struct.resource* %85, i8* null)
  br label %87

87:                                               ; preds = %58, %76, %67
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @RF_ACTIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.resource*, %struct.resource** %19, align 8
  %98 = call i32 @bus_activate_resource(i32 %93, i32 %94, i32 %96, %struct.resource* %97)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.resource*, %struct.resource** %19, align 8
  %103 = call i32 @rman_release_resource(%struct.resource* %102)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %106, %struct.resource** %9, align 8
  br label %107

107:                                              ; preds = %105, %101, %57, %46, %39, %37
  %108 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %108
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
