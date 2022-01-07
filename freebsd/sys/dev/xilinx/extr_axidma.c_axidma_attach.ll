; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axidma_softc = type { i32*, i32*, i32, i32, i32 }

@axidma_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not allocate resources.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@axidma_intr_tx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@axidma_intr_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axidma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axidma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.axidma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.axidma_softc* @device_get_softc(i32 %8)
  store %struct.axidma_softc* %9, %struct.axidma_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %12 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @axidma_spec, align 4
  %15 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @bus_alloc_resources(i32 %13, i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %1
  %25 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %26 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rman_get_bustag(i32 %29)
  %31 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %32 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %34 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rman_get_bushandle(i32 %37)
  %39 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %40 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %43 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTR_TYPE_MISC, align 4
  %48 = load i32, i32* @INTR_MPSAFE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @axidma_intr_tx, align 4
  %51 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %52 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %53 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @bus_setup_intr(i32 %41, i32 %46, i32 %49, i32* null, i32 %50, %struct.axidma_softc* %51, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %24
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %94

63:                                               ; preds = %24
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %66 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INTR_TYPE_MISC, align 4
  %71 = load i32, i32* @INTR_MPSAFE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @axidma_intr_rx, align 4
  %74 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %75 = load %struct.axidma_softc*, %struct.axidma_softc** %4, align 8
  %76 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = call i32 @bus_setup_intr(i32 %64, i32 %69, i32 %72, i32* null, i32 %73, %struct.axidma_softc* %74, i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %63
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %94

86:                                               ; preds = %63
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @ofw_bus_get_node(i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @OF_xref_from_node(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @OF_device_register_xref(i32 %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %82, %59, %20
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.axidma_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.axidma_softc*, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
