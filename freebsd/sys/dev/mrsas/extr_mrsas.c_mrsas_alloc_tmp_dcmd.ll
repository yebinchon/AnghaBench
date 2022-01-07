; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_tmp_dcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_tmp_dcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32 }
%struct.mrsas_tmp_dcmd = type { i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot allocate tmp dcmd tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot allocate tmp dcmd mem\0A\00", align 1
@mrsas_addr_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot load tmp dcmd mem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_alloc_tmp_dcmd(%struct.mrsas_softc* %0, %struct.mrsas_tmp_dcmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca %struct.mrsas_tmp_dcmd*, align 8
  %7 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store %struct.mrsas_tmp_dcmd* %1, %struct.mrsas_tmp_dcmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %16 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %17 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %16, i32 0, i32 3
  %18 = call i64 @bus_dma_tag_create(i32 %10, i32 1, i32 0, i32 %11, i32 %12, i32* null, i32* null, i32 %13, i32 1, i32 %14, i32 %15, i32* null, i32* null, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %3
  %27 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %28 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %31 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i8**
  %33 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %34 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %35 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %34, i32 0, i32 2
  %36 = call i64 @bus_dmamem_alloc(i32 %29, i8** %32, i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %26
  %45 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %46 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %49 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %52 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @mrsas_addr_cb, align 4
  %56 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %57 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %56, i32 0, i32 1
  %58 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %59 = call i64 @bus_dmamap_load(i32 %47, i32 %50, i32 %53, i32 %54, i32 %55, i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %44
  %68 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %6, align 8
  %69 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @memset(i32 %70, i32 0, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %61, %38, %20
  %74 = load i32, i32* %4, align 4
  ret i32 %74
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
