; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.generic_pcie_core_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to activate %s resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"IOPORT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @generic_pcie_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.generic_pcie_core_softc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.generic_pcie_core_softc* @device_get_softc(i32 %19)
  store %struct.generic_pcie_core_softc* %20, %struct.generic_pcie_core_softc** %12, align 8
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = call i32 @rman_activate_resource(%struct.resource* %21)
  store i32 %22, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %6, align 4
  br label %121

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %118 [
    i32 130, label %28
    i32 128, label %28
    i32 129, label %110
  ]

28:                                               ; preds = %26, %26
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %12, align 8
  %35 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %12, align 8
  %43 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %12, align 8
  %51 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.resource*, %struct.resource** %11, align 8
  %59 = call i64 @rman_get_start(%struct.resource* %58)
  %60 = load i64, i64* %14, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %33
  %63 = load %struct.resource*, %struct.resource** %11, align 8
  %64 = call i64 @rman_get_start(%struct.resource* %63)
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %16, align 4
  br label %74

70:                                               ; preds = %62, %33
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %29

74:                                               ; preds = %69, %29
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load %struct.resource*, %struct.resource** %11, align 8
  %79 = load %struct.resource*, %struct.resource** %11, align 8
  %80 = call i64 @rman_get_start(%struct.resource* %79)
  %81 = load i64, i64* %14, align 8
  %82 = sub nsw i64 %80, %81
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @rman_set_start(%struct.resource* %78, i64 %84)
  %86 = load %struct.resource*, %struct.resource** %11, align 8
  %87 = load %struct.resource*, %struct.resource** %11, align 8
  %88 = call i64 @rman_get_end(%struct.resource* %87)
  %89 = load i64, i64* %14, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @rman_set_end(%struct.resource* %86, i64 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @device_get_parent(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.resource*, %struct.resource** %11, align 8
  %100 = call i32 @BUS_ACTIVATE_RESOURCE(i32 %95, i32 %96, i32 %97, i32 %98, %struct.resource* %99)
  store i32 %100, i32* %17, align 4
  br label %109

101:                                              ; preds = %74
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 130
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %107 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %101, %77
  br label %119

110:                                              ; preds = %26
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @device_get_parent(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.resource*, %struct.resource** %11, align 8
  %117 = call i32 @BUS_ACTIVATE_RESOURCE(i32 %112, i32 %113, i32 %114, i32 %115, %struct.resource* %116)
  store i32 %117, i32* %17, align 4
  br label %119

118:                                              ; preds = %26
  br label %119

119:                                              ; preds = %118, %110, %109
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %24
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.generic_pcie_core_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_set_start(%struct.resource*, i64) #1

declare dso_local i32 @rman_set_end(%struct.resource*, i64) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @BUS_ACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
