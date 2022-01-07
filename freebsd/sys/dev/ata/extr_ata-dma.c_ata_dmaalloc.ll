; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.ata_dmaslot* }
%struct.ata_dmaslot = type { i32, i32, i32, i32, i32, i32 }
%struct.ata_dc_cb_args = type { i32, i64 }

@ATA_DMA_SLOTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FAILURE - create sg_tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"FAILURE - alloc sg_map\0A\00", align 1
@MAXTABSZ = common dso_local global i32 0, align 4
@ata_dmasetupc_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"FAILURE - load sg\0A\00", align 1
@ATA_DMA_ENTRIES = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"FAILURE - create data_tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"FAILURE - create data_map\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"WARNING - DMA allocation failed, disabling DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_dmaalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dmaalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca %struct.ata_dc_cb_args, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_dmaslot*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %3, align 8
  %9 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  %12 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %11, align 8
  %13 = load i32, i32* @ATA_DMA_SLOTS, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 24, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @bzero(%struct.ata_dmaslot* %12, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %150, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %18
  %26 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %29, i64 %31
  store %struct.ata_dmaslot* %32, %struct.ata_dmaslot** %6, align 8
  %33 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %34 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %47 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %46, i32 0, i32 5
  %48 = call i64 @bus_dma_tag_create(i32 %36, i32 %37, i32 %38, i32 %42, i32 %43, i32* null, i32* null, i32 %44, i32 1, i32 %45, i32 0, i32* null, i32* null, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %25
  %51 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %154

55:                                               ; preds = %25
  %56 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %57 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %60 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %59, i32 0, i32 3
  %61 = bitcast i32* %60 to i8**
  %62 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %63 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %64 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %63, i32 0, i32 4
  %65 = call i64 @bus_dmamem_alloc(i32 %58, i8** %61, i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %69 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %154

72:                                               ; preds = %55
  %73 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %74 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %77 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %80 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MAXTABSZ, align 4
  %83 = load i32, i32* @ata_dmasetupc_cb, align 4
  %84 = call i64 @bus_dmamap_load(i32 %75, i32 %78, i32 %81, i32 %82, i32 %83, %struct.ata_dc_cb_args* %4, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.ata_dc_cb_args, %struct.ata_dc_cb_args* %4, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %72
  %91 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %154

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.ata_dc_cb_args, %struct.ata_dc_cb_args* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %99 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %101 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %109 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %113 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %117 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %118 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ATA_DMA_ENTRIES, align 4
  %122 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %123 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %127 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %128 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %127, i32 0, i32 1
  %129 = call i64 @bus_dma_tag_create(i32 %103, i32 %107, i32 %111, i32 %115, i32 %116, i32* null, i32* null, i32 %120, i32 %121, i32 %125, i32 %126, i32* null, i32* null, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %95
  %132 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %133 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %154

136:                                              ; preds = %95
  %137 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %138 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ata_dmaslot*, %struct.ata_dmaslot** %6, align 8
  %141 = getelementptr inbounds %struct.ata_dmaslot, %struct.ata_dmaslot* %140, i32 0, i32 0
  %142 = call i64 @bus_dmamap_create(i32 %139, i32 0, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %154

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %18

153:                                              ; preds = %18
  br label %159

154:                                              ; preds = %144, %131, %90, %67, %50
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @ata_dmafree(i32 %157)
  br label %159

159:                                              ; preds = %154, %153
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_dmaslot*, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.ata_dc_cb_args*, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @ata_dmafree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
