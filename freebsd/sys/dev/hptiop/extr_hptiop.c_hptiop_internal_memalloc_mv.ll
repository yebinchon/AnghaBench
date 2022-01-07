; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_internal_memalloc_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_internal_memalloc_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i64, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"alloc ctlcfg_dmat failed\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bus_dmamem_alloc failed!\0A\00", align 1
@MVIOP_IOCTLCFG_SIZE = common dso_local global i32 0, align 4
@hptiop_mv_map_ctlcfg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bus_dmamap_load failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_internal_memalloc_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_internal_memalloc_mv(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  %4 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %5 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %8 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %9 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %10 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %11 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %12 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %11, i32 0, i32 0
  %13 = call i64 @bus_dma_tag_create(i32 %6, i32 1, i32 0, i32 %7, i32 %8, i32* null, i32* null, i32 2040, i32 1, i32 %9, i32 %10, i32* null, i32* null, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %22 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %25 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to i8**
  %27 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %28 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %31 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %30, i32 0, i32 1
  %32 = call i64 @bus_dmamem_alloc(i64 %23, i8** %26, i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %40 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bus_dma_tag_destroy(i64 %41)
  store i32 -1, i32* %2, align 4
  br label %84

43:                                               ; preds = %20
  %44 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %45 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %48 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %51 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MVIOP_IOCTLCFG_SIZE, align 4
  %54 = load i32, i32* @hptiop_mv_map_ctlcfg, align 4
  %55 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %56 = call i64 @bus_dmamap_load(i64 %46, i32 %49, i32 %52, i32 %53, i32 %54, %struct.hpt_iop_hba* %55, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %43
  %59 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %60 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %58
  %68 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %72 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %75 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bus_dmamem_free(i64 %70, i32 %73, i32 %76)
  %78 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %79 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @bus_dma_tag_destroy(i64 %80)
  br label %82

82:                                               ; preds = %67, %58
  store i32 -1, i32* %2, align 4
  br label %84

83:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %82, %34, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i64, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i64 @bus_dmamap_load(i64, i32, i32, i32, i32, %struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
