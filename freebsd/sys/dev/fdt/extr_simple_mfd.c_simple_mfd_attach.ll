; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_mfd_softc = type { i32*, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Cannot allocate memory resource\0A\00", align 1
@simple_mfd_syscon_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to create/register syscon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @simple_mfd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_mfd_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.simple_mfd_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.simple_mfd_softc* @device_get_softc(i32* %9)
  store %struct.simple_mfd_softc* %10, %struct.simple_mfd_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @ofw_bus_get_node(i32* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %15 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  store i32 0, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %18 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @OF_getencprop(i64 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %19, i32 4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @OF_parent(i64 %23)
  %25 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %26 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @OF_getencprop(i64 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %27, i32 4)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %32 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %38 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @OF_getencprop(i64 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32 4)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @OF_parent(i64 %43)
  %45 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %46 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @OF_getencprop(i64 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %47, i32 4)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %52 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @OF_hasprop(i64 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %62 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %61, i32 0, i32 2
  %63 = call i64 @simplebus_fill_ranges(i64 %60, %struct.TYPE_2__* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @device_printf(i32* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %129

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @OF_child(i64 %71)
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %86, %70
  %74 = load i64, i64* %6, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32*, i32** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32* @simple_mfd_add_device(i32* %77, i64 %78, i32 0, i32* null, i32 -1, i32* null)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @device_probe_and_attach(i32* %83)
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @OF_peer(i64 %87)
  store i64 %88, i64* %6, align 8
  br label %73

89:                                               ; preds = %73
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @ofw_bus_is_compatible(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @SYS_RES_MEMORY, align 4
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = call i32* @bus_alloc_resource_any(i32* %94, i32 %95, i32* %8, i32 %96)
  %98 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %99 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @device_printf(i32* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %129

108:                                              ; preds = %93
  %109 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %110 = call i32 @SYSCON_LOCK_INIT(%struct.simple_mfd_softc* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @ofw_bus_get_node(i32* %112)
  %114 = call i32* @syscon_create_ofw_node(i32* %111, i32* @simple_mfd_syscon_class, i64 %113)
  %115 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %116 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %115, i32 0, i32 0
  store i32* %114, i32** %116, align 8
  %117 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %108
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @device_printf(i32* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %2, align 4
  br label %129

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %89
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @bus_generic_attach(i32* %127)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %121, %104, %65
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.simple_mfd_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @simplebus_fill_ranges(i64, %struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32* @simple_mfd_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @ofw_bus_is_compatible(i32*, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @SYSCON_LOCK_INIT(%struct.simple_mfd_softc*) #1

declare dso_local i32* @syscon_create_ofw_node(i32*, i32*, i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
