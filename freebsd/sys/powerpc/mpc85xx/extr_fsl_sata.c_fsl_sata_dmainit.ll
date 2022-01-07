; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.fsl_sata_dc_cb_args = type { i32, i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@FSL_SATA_WORK_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@fsl_sata_dmasetupc_cb = common dso_local global i32 0, align 4
@FSL_SATA_MAX_XFER = common dso_local global i32 0, align 4
@FSL_SATA_SG_ENTRIES = common dso_local global i32 0, align 4
@FSL_SATA_PRD_MAX = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"work area: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"WARNING - DMA initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fsl_sata_dmainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca %struct.fsl_sata_dc_cb_args, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.fsl_sata_channel* @device_get_softc(i32 %5)
  store %struct.fsl_sata_channel* %6, %struct.fsl_sata_channel** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @bus_get_dma_tag(i32 %7)
  %9 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load i32, i32* @FSL_SATA_WORK_SIZE, align 4
  %12 = load i32, i32* @FSL_SATA_WORK_SIZE, align 4
  %13 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = call i64 @bus_dma_tag_create(i32 %8, i32 1024, i32 0, i32 %9, i32 %10, i32* null, i32* null, i32 %11, i32 1, i32 %12, i32 0, i32* null, i32* null, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8**
  %28 = load i32, i32* @BUS_DMA_ZERO, align 4
  %29 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = call i64 @bus_dmamem_alloc(i32 %23, i8** %27, i32 %28, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %104

35:                                               ; preds = %19
  %36 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FSL_SATA_WORK_SIZE, align 4
  %49 = load i32, i32* @fsl_sata_dmasetupc_cb, align 4
  %50 = call i64 @bus_dmamap_load(i32 %39, i32 %43, i32 %47, i32 %48, i32 %49, %struct.fsl_sata_dc_cb_args* %4, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.fsl_sata_dc_cb_args, %struct.fsl_sata_dc_cb_args* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52, %35
  %57 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %58 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %66 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_dmamem_free(i32 %60, i32 %64, i32 %68)
  br label %104

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.fsl_sata_dc_cb_args, %struct.fsl_sata_dc_cb_args* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %74 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @bus_get_dma_tag(i32 %76)
  %78 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %79 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %80 = load i32, i32* @FSL_SATA_MAX_XFER, align 4
  %81 = load i32, i32* @FSL_SATA_SG_ENTRIES, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @FSL_SATA_PRD_MAX, align 4
  %84 = load i32*, i32** @busdma_lock_mutex, align 8
  %85 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %86 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %85, i32 0, i32 1
  %87 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %88 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = call i64 @bus_dma_tag_create(i32 %77, i32 4, i32 0, i32 %78, i32 %79, i32* null, i32* null, i32 %80, i32 %82, i32 %83, i32 0, i32* %84, i32* %86, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %70
  br label %104

93:                                               ; preds = %70
  %94 = load i64, i64* @bootverbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %2, align 4
  %98 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %99 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %93
  br label %109

104:                                              ; preds = %92, %56, %34, %18
  %105 = load i32, i32* %2, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @fsl_sata_dmafini(i32 %107)
  br label %109

109:                                              ; preds = %104, %103
  ret void
}

declare dso_local %struct.fsl_sata_channel* @device_get_softc(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.fsl_sata_dc_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @fsl_sata_dmafini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
