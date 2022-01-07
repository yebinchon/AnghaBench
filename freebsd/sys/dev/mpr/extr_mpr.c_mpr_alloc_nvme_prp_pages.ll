; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_alloc_nvme_prp_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_alloc_nvme_prp_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, i32, i64, i64, %struct.mpr_prp_page*, i32, i32, i32 }
%struct.mpr_prp_page = type { i64, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PRP_ENTRY_SIZE = common dso_local global i32 0, align 4
@NVME_QDEPTH = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MPR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate NVMe PRP DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot allocate NVMe PRP memory\0A\00", align 1
@mpr_memaddr_cb = common dso_local global i32 0, align 4
@M_MPR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*)* @mpr_alloc_nvme_prp_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_alloc_nvme_prp_pages(%struct.mpr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpr_prp_page*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @PRP_ENTRY_SIZE, align 4
  %17 = sdiv i32 %15, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %19, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NVME_QDEPTH, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %40, i32 0, i32 7
  %42 = call i64 @bus_dma_tag_create(i32 %35, i32 4, i32 0, i32 %36, i32 %37, i32* null, i32* null, i32 %38, i32 1, i32 %39, i32 0, i32* null, i32* null, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %46 = load i32, i32* @MPR_ERROR, align 4
  %47 = call i32 @mpr_dprint(%struct.mpr_softc* %45, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %144

49:                                               ; preds = %1
  %50 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %53, i32 0, i32 4
  %55 = bitcast i64* %54 to i8**
  %56 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %57 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %57, i32 0, i32 6
  %59 = call i64 @bus_dmamem_alloc(i32 %52, i8** %55, i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %63 = load i32, i32* @MPR_ERROR, align 4
  %64 = call i32 @mpr_dprint(%struct.mpr_softc* %62, i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %2, align 4
  br label %144

66:                                               ; preds = %49
  %67 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bzero(i64 %69, i32 %70)
  %72 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @mpr_memaddr_cb, align 4
  %83 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %83, i32 0, i32 3
  %85 = call i32 @bus_dmamap_load(i32 %74, i32 %77, i64 %80, i32 %81, i32 %82, i64* %84, i32 0)
  %86 = load i32, i32* @NVME_QDEPTH, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 16, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @M_MPR, align 4
  %91 = load i32, i32* @M_WAITOK, align 4
  %92 = load i32, i32* @M_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = call %struct.mpr_prp_page* @malloc(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %95, i32 0, i32 5
  store %struct.mpr_prp_page* %94, %struct.mpr_prp_page** %96, align 8
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %140, %66
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @NVME_QDEPTH, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %97
  %102 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %102, i32 0, i32 5
  %104 = load %struct.mpr_prp_page*, %struct.mpr_prp_page** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mpr_prp_page, %struct.mpr_prp_page* %104, i64 %106
  store %struct.mpr_prp_page* %107, %struct.mpr_prp_page** %9, align 8
  %108 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %110, %116
  %118 = inttoptr i64 %117 to i64*
  %119 = load %struct.mpr_prp_page*, %struct.mpr_prp_page** %9, align 8
  %120 = getelementptr inbounds %struct.mpr_prp_page, %struct.mpr_prp_page* %119, i32 0, i32 1
  store i64* %118, i64** %120, align 8
  %121 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %122 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %126 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %123, %129
  %131 = load %struct.mpr_prp_page*, %struct.mpr_prp_page** %9, align 8
  %132 = getelementptr inbounds %struct.mpr_prp_page, %struct.mpr_prp_page* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %134 = load %struct.mpr_prp_page*, %struct.mpr_prp_page** %9, align 8
  %135 = call i32 @mpr_free_prp_page(%struct.mpr_softc* %133, %struct.mpr_prp_page* %134)
  %136 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %101
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %97

143:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %61, %44
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i64*, i32) #1

declare dso_local %struct.mpr_prp_page* @malloc(i32, i32, i32) #1

declare dso_local i32 @mpr_free_prp_page(%struct.mpr_softc*, %struct.mpr_prp_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
