; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi_softc = type { i32, i32, i8*, i8*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fsl_espi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"fsl,espi-num-chipselects\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fsl_espi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ESPI_SPMODE = common dso_local global i32 0, align 4
@ESPI_SPMODE_EN = common dso_local global i32 0, align 4
@ESPI_SPMODE_TXTHR_S = common dso_local global i32 0, align 4
@ESPI_SPMODE_RXTHR_S = common dso_local global i32 0, align 4
@ESPI_SPIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_espi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_espi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_espi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.fsl_espi_softc* @device_get_softc(i32 %7)
  store %struct.fsl_espi_softc* %8, %struct.fsl_espi_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %5, i32 %16)
  %18 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %110

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IRQ, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %5, i32 %31)
  %33 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %36 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 0, i8* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %110

49:                                               ; preds = %28
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @INTR_TYPE_MISC, align 4
  %55 = load i32, i32* @INTR_MPSAFE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @fsl_espi_intr, align 4
  %58 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %59 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %59, i32 0, i32 4
  %61 = call i64 @bus_setup_intr(i32 %50, i8* %53, i32 %56, i32* null, i32 %57, %struct.fsl_espi_softc* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %49
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 0, i8* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SYS_RES_MEMORY, align 4
  %72 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 0, i8* %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %110

79:                                               ; preds = %49
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %82 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %81, i32 0, i32 0
  %83 = call i64 @OF_getencprop(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %82, i32 4)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %87 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %86, i32 0, i32 0
  store i32 4, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %90 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %89, i32 0, i32 1
  %91 = load i32, i32* @MTX_DEF, align 4
  %92 = call i32 @mtx_init(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %91)
  %93 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %94 = load i32, i32* @ESPI_SPMODE, align 4
  %95 = load i32, i32* @ESPI_SPMODE_EN, align 4
  %96 = load i32, i32* @ESPI_SPMODE_TXTHR_S, align 4
  %97 = shl i32 16, %96
  %98 = or i32 %95, %97
  %99 = load i32, i32* @ESPI_SPMODE_RXTHR_S, align 4
  %100 = shl i32 15, %99
  %101 = or i32 %98, %100
  %102 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %93, i32 %94, i32 %101)
  %103 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %4, align 8
  %104 = load i32, i32* @ESPI_SPIM, align 4
  %105 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %103, i32 %104, i32 0)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @device_add_child(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @bus_generic_attach(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %88, %63, %39, %24
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.fsl_espi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.fsl_espi_softc*, i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
