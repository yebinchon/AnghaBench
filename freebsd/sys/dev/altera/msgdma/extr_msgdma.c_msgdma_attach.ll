; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgdma_softc = type { i32, i32*, i8*, i8*, i8*, i8*, i32 }

@msgdma_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@msgdma_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@DMA_CONTROL = common dso_local global i32 0, align 4
@CONTROL_GIEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @msgdma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msgdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.msgdma_softc* @device_get_softc(i32 %8)
  store %struct.msgdma_softc* %9, %struct.msgdma_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %12 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @msgdma_spec, align 4
  %15 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @bus_alloc_resources(i32 %13, i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %1
  %25 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %26 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rman_get_bustag(i32 %29)
  %31 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %32 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %34 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rman_get_bushandle(i32 %37)
  %39 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %40 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %42 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @rman_get_bustag(i32 %45)
  %47 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %48 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %50 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @rman_get_bushandle(i32 %53)
  %55 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %56 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %59 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INTR_TYPE_MISC, align 4
  %64 = load i32, i32* @INTR_MPSAFE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @msgdma_intr, align 4
  %67 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %68 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %69 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %68, i32 0, i32 0
  %70 = call i32 @bus_setup_intr(i32 %57, i32 %62, i32 %65, i32* null, i32 %66, %struct.msgdma_softc* %67, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %24
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %94

77:                                               ; preds = %24
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @ofw_bus_get_node(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @OF_xref_from_node(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @OF_device_register_xref(i32 %82, i32 %83)
  %85 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %86 = call i64 @msgdma_reset(%struct.msgdma_softc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 -1, i32* %2, align 4
  br label %94

89:                                               ; preds = %77
  %90 = load %struct.msgdma_softc*, %struct.msgdma_softc** %4, align 8
  %91 = load i32, i32* @DMA_CONTROL, align 4
  %92 = load i32, i32* @CONTROL_GIEM, align 4
  %93 = call i32 @WRITE4(%struct.msgdma_softc* %90, i32 %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %88, %73, %20
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.msgdma_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.msgdma_softc*, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i64 @msgdma_reset(%struct.msgdma_softc*) #1

declare dso_local i32 @WRITE4(%struct.msgdma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
