; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_alloc_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_alloc_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { i32, i64, i64, %struct.rtwn_tx_data*, i32, i32 }
%struct.rtwn_tx_data = type { i32*, i32*, i32 }

@RTWN_PCI_TX_LIST_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create tx ring DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't map tx ring DMA memory\0A\00", align 1
@rtwn_pci_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"could not create tx buf DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"could not create tx buf DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, i32)* @rtwn_pci_alloc_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_pci_alloc_tx_list(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_pci_softc*, align 8
  %7 = alloca %struct.rtwn_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtwn_tx_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %15 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %14)
  store %struct.rtwn_pci_softc* %15, %struct.rtwn_pci_softc** %6, align 8
  %16 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %6, align 8
  %17 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %16, i32 0, i32 0
  %18 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %18, i64 %20
  store %struct.rtwn_tx_ring* %21, %struct.rtwn_tx_ring** %7, align 8
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_get_dma_tag(i32 %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %36, i32 0, i32 5
  %38 = call i32 @bus_dma_tag_create(i32 %30, i32 %31, i32 0, i32 %32, i32 %33, i32* null, i32* null, i32 %34, i32 1, i32 %35, i32 0, i32* null, i32* null, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %43 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %179

46:                                               ; preds = %2
  %47 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %48 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %51 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %50, i32 0, i32 2
  %52 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %53 = load i32, i32* @BUS_DMA_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %56 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %55, i32 0, i32 4
  %57 = call i32 @bus_dmamem_alloc(i32 %49, i64* %51, i32 %54, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %179

65:                                               ; preds = %46
  %66 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %67 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %70 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %73 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @rtwn_pci_dma_map_addr, align 4
  %77 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %78 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %80 = call i32 @bus_dmamap_load(i32 %68, i32 %71, i64 %74, i32 %75, i32 %76, i64* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %65
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %85 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %179

88:                                               ; preds = %65
  %89 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %90 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %93 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %96 = call i32 @bus_dmamap_sync(i32 %91, i32 %94, i32 %95)
  %97 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %98 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bus_get_dma_tag(i32 %99)
  %101 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %102 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %103 = load i32, i32* @MJUMPAGESIZE, align 4
  %104 = load i32, i32* @MJUMPAGESIZE, align 4
  %105 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %106 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %105, i32 0, i32 0
  %107 = call i32 @bus_dma_tag_create(i32 %100, i32 1, i32 0, i32 %101, i32 %102, i32* null, i32* null, i32 %103, i32 1, i32 %104, i32 0, i32* null, i32* null, i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %88
  %111 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %112 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %179

115:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %175, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %178

120:                                              ; preds = %116
  %121 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %122 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %121, i32 0, i32 3
  %123 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %123, i64 %125
  store %struct.rtwn_tx_data* %126, %struct.rtwn_tx_data** %11, align 8
  %127 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %128 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %132 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = bitcast i32* %137 to i8*
  store i8* %138, i8** %12, align 8
  %139 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %140 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %143 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %148 = srem i32 %146, %147
  %149 = mul nsw i32 %144, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %141, %150
  store i64 %151, i64* %13, align 8
  %152 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %6, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @rtwn_pci_setup_tx_desc(%struct.rtwn_pci_softc* %152, i8* %153, i64 %154)
  %156 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %7, align 8
  %157 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %160 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %159, i32 0, i32 2
  %161 = call i32 @bus_dmamap_create(i32 %158, i32 0, i32* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %120
  %165 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %166 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @device_printf(i32 %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %3, align 4
  br label %184

170:                                              ; preds = %120
  %171 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %172 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  %173 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %174 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %116

178:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %184

179:                                              ; preds = %110, %83, %60, %41
  %180 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @rtwn_pci_free_tx_list(%struct.rtwn_softc* %180, i32 %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %179, %178, %164
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i64*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @rtwn_pci_setup_tx_desc(%struct.rtwn_pci_softc*, i8*, i64) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @rtwn_pci_free_tx_list(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
