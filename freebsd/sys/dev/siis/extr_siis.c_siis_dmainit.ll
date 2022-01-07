; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.siis_dc_cb_args = type { i32, i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@SIIS_WORK_SIZE = common dso_local global i32 0, align 4
@siis_dmasetupc_cb = common dso_local global i32 0, align 4
@SIIS_SG_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"WARNING - DMA initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_dmainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca %struct.siis_dc_cb_args, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.siis_channel* @device_get_softc(i32 %5)
  store %struct.siis_channel* %6, %struct.siis_channel** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @bus_get_dma_tag(i32 %7)
  %9 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load i32, i32* @SIIS_WORK_SIZE, align 4
  %12 = load i32, i32* @SIIS_WORK_SIZE, align 4
  %13 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %14 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = call i64 @bus_dma_tag_create(i32 %8, i32 1024, i32 0, i32 %9, i32 %10, i32* null, i32* null, i32 %11, i32 1, i32 %12, i32 0, i32* null, i32* null, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %21 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %25 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = bitcast i32* %26 to i8**
  %28 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i64 @bus_dmamem_alloc(i32 %23, i8** %27, i32 0, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %95

34:                                               ; preds = %19
  %35 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %36 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %40 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %44 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SIIS_WORK_SIZE, align 4
  %48 = load i32, i32* @siis_dmasetupc_cb, align 4
  %49 = call i64 @bus_dmamap_load(i32 %38, i32 %42, i32 %46, i32 %47, i32 %48, %struct.siis_dc_cb_args* %4, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.siis_dc_cb_args, %struct.siis_dc_cb_args* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51, %34
  %56 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %57 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %61 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %65 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_dmamem_free(i32 %59, i32 %63, i32 %67)
  br label %95

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.siis_dc_cb_args, %struct.siis_dc_cb_args* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %73 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @bus_get_dma_tag(i32 %75)
  %77 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %78 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %79 = load i32, i32* @SIIS_SG_ENTRIES, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @SIIS_SG_ENTRIES, align 4
  %85 = load i32*, i32** @busdma_lock_mutex, align 8
  %86 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %87 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %86, i32 0, i32 1
  %88 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %89 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i64 @bus_dma_tag_create(i32 %76, i32 1, i32 0, i32 %77, i32 %78, i32* null, i32* null, i32 %83, i32 %84, i32 -1, i32 0, i32* %85, i32* %87, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %69
  br label %95

94:                                               ; preds = %69
  br label %100

95:                                               ; preds = %93, %55, %33, %18
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @siis_dmafini(i32 %98)
  br label %100

100:                                              ; preds = %95, %94
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.siis_dc_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @siis_dmafini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
