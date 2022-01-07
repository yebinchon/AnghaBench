; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdma_softc = type { i32, i32*, i32, i32, i32 }

@pdma_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pdma_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@PDMA_DMAC = common dso_local global i32 0, align 4
@DMAC_HLT = common dso_local global i32 0, align 4
@DMAC_AR = common dso_local global i32 0, align 4
@DMAC_DMAE = common dso_local global i32 0, align 4
@PDMA_DMACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pdma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pdma_softc* @device_get_softc(i32 %9)
  store %struct.pdma_softc* %10, %struct.pdma_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pdma_spec, align 4
  %16 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %1
  %26 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %27 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rman_get_bustag(i32 %30)
  %32 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %35 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rman_get_bushandle(i32 %38)
  %40 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %41 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INTR_TYPE_MISC, align 4
  %49 = load i32, i32* @INTR_MPSAFE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @pdma_intr, align 4
  %52 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %53 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %54 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %53, i32 0, i32 0
  %55 = call i32 @bus_setup_intr(i32 %42, i32 %47, i32 %50, i32* null, i32 %51, %struct.pdma_softc* %52, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %25
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %89

62:                                               ; preds = %25
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ofw_bus_get_node(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @OF_xref_from_node(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @OF_device_register_xref(i32 %67, i32 %68)
  %70 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %71 = load i32, i32* @PDMA_DMAC, align 4
  %72 = call i32 @READ4(%struct.pdma_softc* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @DMAC_HLT, align 4
  %74 = load i32, i32* @DMAC_AR, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @DMAC_DMAE, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %83 = load i32, i32* @PDMA_DMAC, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @WRITE4(%struct.pdma_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.pdma_softc*, %struct.pdma_softc** %4, align 8
  %87 = load i32, i32* @PDMA_DMACP, align 4
  %88 = call i32 @WRITE4(%struct.pdma_softc* %86, i32 %87, i32 0)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %62, %58, %21
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.pdma_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.pdma_softc*, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @READ4(%struct.pdma_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.pdma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
