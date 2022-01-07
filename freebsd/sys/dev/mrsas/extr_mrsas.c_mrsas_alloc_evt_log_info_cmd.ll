; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_evt_log_info_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_evt_log_info_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot allocate event log info tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot allocate event log info cmd mem\0A\00", align 1
@mrsas_addr_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot load event log info cmd mem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_alloc_evt_log_info_cmd(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 4, i32* %4, align 4
  %5 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %9 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 4
  %15 = call i64 @bus_dma_tag_create(i32 %7, i32 1, i32 0, i32 %8, i32 %9, i32* null, i32* null, i32 %10, i32 1, i32 %11, i32 %12, i32* null, i32* null, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i8**
  %30 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  %33 = call i64 @bus_dmamem_alloc(i32 %26, i8** %29, i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %23
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @mrsas_addr_cb, align 4
  %53 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %53, i32 0, i32 2
  %55 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %56 = call i64 @bus_dmamap_load(i32 %44, i32 %47, i32 %50, i32 %51, i32 %52, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %60 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %41
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @memset(i32 %67, i32 0, i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %58, %35, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
