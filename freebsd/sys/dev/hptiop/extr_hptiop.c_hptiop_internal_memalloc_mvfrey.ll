; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_internal_memalloc_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_internal_memalloc_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@inbound_conf_ctl = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"alloc ctlcfg_dmat failed\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bus_dmamem_alloc failed!\0A\00", align 1
@hptiop_mvfrey_map_ctlcfg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bus_dmamap_load failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_internal_memalloc_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_internal_memalloc_mvfrey(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  %5 = load i32, i32* @inbound_conf_ctl, align 4
  %6 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 16
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %121

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 2048, %20
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %21, %24
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %29 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %43 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %44 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %45 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %44, i32 0, i32 0
  %46 = call i64 @bus_dma_tag_create(i32 %34, i32 1, i32 0, i32 %35, i32 %36, i32* null, i32* null, i32 %41, i32 1, i32 %42, i32 %43, i32* null, i32* null, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %12
  %49 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %50 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %121

53:                                               ; preds = %12
  %54 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %58 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %57, i32 0, i32 2
  %59 = bitcast i32* %58 to i8**
  %60 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %61 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %63, i32 0, i32 1
  %65 = call i64 @bus_dmamem_alloc(i64 %56, i8** %59, i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %73 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bus_dma_tag_destroy(i64 %74)
  store i32 -1, i32* %2, align 4
  br label %121

76:                                               ; preds = %53
  %77 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %78 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %81 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %84 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %87 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @hptiop_mvfrey_map_ctlcfg, align 4
  %92 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %93 = call i64 @bus_dmamap_load(i64 %79, i32 %82, i32 %85, i32 %90, i32 %91, %struct.hpt_iop_hba* %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %76
  %96 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %97 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %101 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %95
  %105 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %106 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %109 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %112 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @bus_dmamem_free(i64 %107, i32 %110, i32 %113)
  %115 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %116 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @bus_dma_tag_destroy(i64 %117)
  br label %119

119:                                              ; preds = %104, %95
  store i32 -1, i32* %2, align 4
  br label %121

120:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %119, %67, %48, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @BUS_SPACE_RD4_MVFREY2(i32) #1

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
