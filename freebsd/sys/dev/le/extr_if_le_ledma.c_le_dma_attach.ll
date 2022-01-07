; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_dma_softc = type { i32, i32*, i32*, i32, i32, %struct.TYPE_3__, i32, %struct.lsi64854_softc* }
%struct.TYPE_3__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32*, i32, i32, i64, i32 }
%struct.lsi64854_softc = type { i32, %struct.le_dma_softc* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lsi64854_attach failed\0A\00", align 1
@LEDMA_MEMSIZE = common dso_local global i32 0, align 4
@LEDMA_ALIGNMENT = common dso_local global i32 0, align 4
@LEDMA_BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot allocate buffer DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot allocate DMA buffer memory\0A\00", align 1
@le_dma_dma_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot load DMA buffer map\0A\00", align 1
@LE_C3_BSWP = common dso_local global i32 0, align 4
@LE_C3_ACON = common dso_local global i32 0, align 4
@LE_C3_BCON = common dso_local global i32 0, align 4
@le_dma_supmediachange = common dso_local global i32 0, align 4
@le_dma_supmediastatus = common dso_local global i32 0, align 4
@le_dma_supmedia = common dso_local global i32* null, align 8
@lance_copytobuf_contig = common dso_local global i8* null, align 8
@lance_copyfrombuf_contig = common dso_local global i8* null, align 8
@lance_zerobuf_contig = common dso_local global i32 0, align 4
@le_dma_rdcsr = common dso_local global i32 0, align 4
@le_dma_wrcsr = common dso_local global i32 0, align 4
@le_dma_hwreset = common dso_local global i32 0, align 4
@le_dma_hwintr = common dso_local global i32 0, align 4
@le_dma_nocarrier = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"cannot attach Am7990\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@am7990_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"cannot set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_dma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_dma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.le_dma_softc*, align 8
  %5 = alloca %struct.lsi64854_softc*, align 8
  %6 = alloca %struct.lance_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.le_dma_softc* @device_get_softc(i32 %9)
  store %struct.le_dma_softc* %10, %struct.le_dma_softc** %4, align 8
  %11 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %12 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.lance_softc* %13, %struct.lance_softc** %6, align 8
  %14 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = call i32 @LE_LOCK_INIT(%struct.lance_softc* %14, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = call %struct.le_dma_softc* @device_get_softc(i32 %19)
  %21 = bitcast %struct.le_dma_softc* %20 to %struct.lsi64854_softc*
  store %struct.lsi64854_softc* %21, %struct.lsi64854_softc** %5, align 8
  %22 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %23 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %24 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %23, i32 0, i32 7
  store %struct.lsi64854_softc* %22, %struct.lsi64854_softc** %24, align 8
  %25 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %26 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %27 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %26, i32 0, i32 7
  %28 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %27, align 8
  %29 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %28, i32 0, i32 1
  store %struct.le_dma_softc* %25, %struct.le_dma_softc** %29, align 8
  store i32 0, i32* %8, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %8, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %36 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %38 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %7, align 4
  br label %292

45:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load i32, i32* @RF_SHAREABLE, align 4
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @bus_alloc_resource_any(i32 %46, i32 %47, i32* %8, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %54 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %7, align 4
  br label %281

60:                                               ; preds = %45
  %61 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %62 = call i32 @lsi64854_attach(%struct.lsi64854_softc* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %270

68:                                               ; preds = %60
  %69 = load i32, i32* @LEDMA_MEMSIZE, align 4
  %70 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %71 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %70, i32 0, i32 20
  store i32 %69, i32* %71, align 8
  %72 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %73 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LEDMA_ALIGNMENT, align 4
  %76 = load i32, i32* @LEDMA_BOUNDARY, align 4
  %77 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %78 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %79 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %80 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %79, i32 0, i32 20
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %83 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %86 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %85, i32 0, i32 3
  %87 = call i32 @bus_dma_tag_create(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32* null, i32* null, i32 %81, i32 1, i32 %84, i32 0, i32* null, i32* null, i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %267

93:                                               ; preds = %68
  %94 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %95 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %98 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %97, i32 0, i32 2
  %99 = bitcast i32* %98 to i8**
  %100 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %101 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %104 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %103, i32 0, i32 4
  %105 = call i32 @bus_dmamem_alloc(i32 %96, i8** %99, i32 %102, i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %262

111:                                              ; preds = %93
  %112 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %113 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %115 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %118 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %121 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %124 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %123, i32 0, i32 20
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @le_dma_dma_callback, align 4
  %127 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %128 = call i32 @bus_dmamap_load(i32 %116, i32 %119, i32 %122, i32 %125, i32 %126, %struct.le_dma_softc* %127, i32 0)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %111
  %132 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %133 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131, %111
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @device_printf(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %251

139:                                              ; preds = %131
  %140 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %141 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 16777215
  %144 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %145 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %147 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %146, i32 0, i32 19
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @LE_C3_BSWP, align 4
  %149 = load i32, i32* @LE_C3_ACON, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @LE_C3_BCON, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %154 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @le_dma_supmediachange, align 4
  %156 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %157 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %156, i32 0, i32 18
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @le_dma_supmediastatus, align 4
  %159 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %160 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %159, i32 0, i32 17
  store i32 %158, i32* %160, align 8
  %161 = load i32*, i32** @le_dma_supmedia, align 8
  %162 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %163 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %162, i32 0, i32 16
  store i32* %161, i32** %163, align 8
  %164 = load i32*, i32** @le_dma_supmedia, align 8
  %165 = call i32 @nitems(i32* %164)
  %166 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %167 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %166, i32 0, i32 15
  store i32 %165, i32* %167, align 8
  %168 = load i32*, i32** @le_dma_supmedia, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %172 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %171, i32 0, i32 14
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %175 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %174, i32 0, i32 13
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @OF_getetheraddr(i32 %173, i32 %176)
  %178 = load i8*, i8** @lance_copytobuf_contig, align 8
  %179 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %180 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %179, i32 0, i32 12
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @lance_copyfrombuf_contig, align 8
  %182 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %183 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %182, i32 0, i32 11
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @lance_copytobuf_contig, align 8
  %185 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %186 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %185, i32 0, i32 10
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @lance_copyfrombuf_contig, align 8
  %188 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %189 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %188, i32 0, i32 9
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* @lance_zerobuf_contig, align 4
  %191 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %192 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @le_dma_rdcsr, align 4
  %194 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %195 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @le_dma_wrcsr, align 4
  %197 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %198 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @le_dma_hwreset, align 4
  %200 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %201 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @le_dma_hwintr, align 4
  %203 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %204 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @le_dma_nocarrier, align 4
  %206 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %207 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %209 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %208, i32 0, i32 5
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @device_get_name(i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @device_get_unit(i32 %212)
  %214 = call i32 @am7990_config(%struct.TYPE_3__* %209, i32 %211, i32 %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %139
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @device_printf(i32 %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %243

220:                                              ; preds = %139
  %221 = load i32, i32* %3, align 4
  %222 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %223 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* @INTR_TYPE_NET, align 4
  %226 = load i32, i32* @INTR_MPSAFE, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @am7990_intr, align 4
  %229 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %230 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %231 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %230, i32 0, i32 6
  %232 = call i32 @bus_setup_intr(i32 %221, i32* %224, i32 %227, i32* null, i32 %228, %struct.lance_softc* %229, i32* %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %220
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %239

238:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %296

239:                                              ; preds = %235
  %240 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %241 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %240, i32 0, i32 5
  %242 = call i32 @am7990_detach(%struct.TYPE_3__* %241)
  br label %243

243:                                              ; preds = %239, %217
  %244 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %245 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %248 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @bus_dmamap_unload(i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %243, %136
  %252 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %253 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %256 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %259 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @bus_dmamem_free(i32 %254, i32 %257, i32 %260)
  br label %262

262:                                              ; preds = %251, %108
  %263 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %264 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @bus_dma_tag_destroy(i32 %265)
  br label %267

267:                                              ; preds = %262, %90
  %268 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %269 = call i32 @lsi64854_detach(%struct.lsi64854_softc* %268)
  br label %270

270:                                              ; preds = %267, %65
  %271 = load i32, i32* %3, align 4
  %272 = load i32, i32* @SYS_RES_IRQ, align 4
  %273 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %274 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @rman_get_rid(i32* %275)
  %277 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %278 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @bus_release_resource(i32 %271, i32 %272, i32 %276, i32* %279)
  br label %281

281:                                              ; preds = %270, %56
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* @SYS_RES_MEMORY, align 4
  %284 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %285 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @rman_get_rid(i32* %286)
  %288 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %289 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @bus_release_resource(i32 %282, i32 %283, i32 %287, i32* %290)
  br label %292

292:                                              ; preds = %281, %41
  %293 = load %struct.lance_softc*, %struct.lance_softc** %6, align 8
  %294 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %293)
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %292, %238
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.le_dma_softc* @device_get_softc(i32) #1

declare dso_local i32 @LE_LOCK_INIT(%struct.lance_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @lsi64854_attach(%struct.lsi64854_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.le_dma_softc*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @OF_getetheraddr(i32, i32) #1

declare dso_local i32 @am7990_config(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.lance_softc*, i32*) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @lsi64854_detach(%struct.lsi64854_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
