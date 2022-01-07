; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_init_fw_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_init_fw_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create firmware DMA tag\0A\00", align 1
@IWI_FW_HAVE_DMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not allocate firmware DMA memory\0A\00", align 1
@IWI_FW_HAVE_MAP = common dso_local global i32 0, align 4
@iwi_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not load firmware DMA map\0A\00", align 1
@IWI_FW_HAVE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, i32)* @iwi_init_fw_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_init_fw_dma(%struct.iwi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %7 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

12:                                               ; preds = %2
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_get_dma_tag(i32 %15)
  %17 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 6
  %23 = call i64 @bus_dma_tag_create(i32 %16, i32 4, i32 0, i32 %17, i32 %18, i32* null, i32* null, i32 %19, i32 1, i32 %20, i32 0, i32* null, i32* null, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %85

30:                                               ; preds = %12
  %31 = load i32, i32* @IWI_FW_HAVE_DMAT, align 4
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %39, i32 0, i32 4
  %41 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %41, i32 0, i32 5
  %43 = call i64 @bus_dmamem_alloc(i32 %38, i32* %40, i32 0, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %85

50:                                               ; preds = %30
  %51 = load i32, i32* @IWI_FW_HAVE_MAP, align 4
  %52 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %57 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %63 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @iwi_dma_map_addr, align 4
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %67, i32 0, i32 3
  %69 = call i64 @bus_dmamap_load(i32 %58, i32 %61, i32 %64, i32 %65, i32 %66, i32* %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %50
  %72 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %85

76:                                               ; preds = %50
  %77 = load i32, i32* @IWI_FW_HAVE_PHY, align 4
  %78 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %79 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %88

85:                                               ; preds = %71, %45, %25
  %86 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %87 = call i32 @iwi_release_fw_dma(%struct.iwi_softc* %86)
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %76, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iwi_release_fw_dma(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
