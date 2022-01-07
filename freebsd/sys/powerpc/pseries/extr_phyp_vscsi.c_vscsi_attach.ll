; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_softc = type { i32, i32, i32*, i32*, i32, i32, %struct.vscsi_xfer*, i32, i32, i32, i64, i64, %struct.vscsi_xfer, i32, i32, i32, i64, i32, i32 }
%struct.vscsi_xfer = type { i32, %struct.vscsi_softc* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vscsi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@vscsi_intr = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@queue = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@vscsi_crq_load_cb = common dso_local global i32 0, align 4
@M_VSCSI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not create DMA map (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vscsi_cam_action = common dso_local global i32 0, align 4
@vscsi_cam_poll = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"CAM SIM attach failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"XPT bus registration failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vscsi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vscsi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vscsi_softc*, align 8
  %5 = alloca %struct.vscsi_xfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.vscsi_softc* @device_get_softc(i32 %8)
  store %struct.vscsi_softc* %9, %struct.vscsi_softc** %4, align 8
  %10 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %11 = icmp eq %struct.vscsi_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %273

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ofw_bus_get_node(i32 %22)
  %24 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %24, i32 0, i32 17
  %26 = call i32 @OF_getencprop(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 4)
  %27 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %27, i32 0, i32 16
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IRQ, align 4
  %31 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %31, i32 0, i32 16
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i32 @bus_alloc_resource_any(i32 %29, i32 %30, i64* %32, i32 %33)
  %35 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %44, i32 0, i32 1
  %46 = call i32 @mtx_destroy(i32* %45)
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %273

48:                                               ; preds = %14
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @INTR_TYPE_CAM, align 4
  %54 = load i32, i32* @INTR_MPSAFE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @INTR_ENTROPY, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @vscsi_intr, align 4
  %59 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %60 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %61 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %60, i32 0, i32 14
  %62 = call i32 @bus_setup_intr(i32 %49, i32 %52, i32 %57, i32* null, i32 %58, %struct.vscsi_softc* %59, i32* %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @bus_get_dma_tag(i32 %63)
  %65 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %69 = load i32*, i32** @busdma_lock_mutex, align 8
  %70 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %70, i32 0, i32 1
  %72 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %72, i32 0, i32 5
  %74 = call i32 @bus_dma_tag_create(i32 %64, i32 1, i32 0, i32 %65, i32 %66, i32* null, i32* null, i32 %67, i32 256, i32 %68, i32 0, i32* %69, i32* %71, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %76 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %75, i32 0, i32 13
  %77 = call i32 @TAILQ_INIT(i32* %76)
  %78 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %79 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %78, i32 0, i32 4
  %80 = call i32 @TAILQ_INIT(i32* %79)
  %81 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %82 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %83 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %82, i32 0, i32 12
  %84 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %83, i32 0, i32 1
  store %struct.vscsi_softc* %81, %struct.vscsi_softc** %84, align 8
  %85 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %89, i32 0, i32 0
  %91 = call i32 @bus_dmamap_create(i32 %87, i32 0, i32* %90)
  %92 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %93 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %92, i32 0, i32 4
  %94 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %94, i32 0, i32 12
  %96 = load i32, i32* @queue, align 4
  %97 = call i32 @TAILQ_INSERT_TAIL(i32* %93, %struct.vscsi_xfer* %95, i32 %96)
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @bus_get_dma_tag(i32 %98)
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %102 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = mul nsw i32 8, %103
  %105 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %106 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %107 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %106, i32 0, i32 9
  %108 = call i32 @bus_dma_tag_create(i32 %99, i32 %100, i32 0, i32 %101, i32 %102, i32* null, i32* null, i32 %104, i32 1, i32 %105, i32 0, i32* null, i32* null, i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %110 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %113 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %112, i32 0, i32 7
  %114 = bitcast i32* %113 to i8**
  %115 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %116 = load i32, i32* @BUS_DMA_ZERO, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %119 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %118, i32 0, i32 8
  %120 = call i32 @bus_dmamem_alloc(i32 %111, i8** %114, i32 %117, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %122 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %121, i32 0, i32 11
  store i64 0, i64* %122, align 8
  %123 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %124 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %123, i32 0, i32 10
  store i64 0, i64* %124, align 8
  %125 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %126 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %129 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %132 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = mul nsw i32 8, %134
  %136 = load i32, i32* @vscsi_crq_load_cb, align 4
  %137 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %138 = call i32 @bus_dmamap_load(i32 %127, i32 %130, i32 %133, i32 %135, i32 %136, %struct.vscsi_softc* %137, i32 0)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %140 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %139, i32 0, i32 1
  %141 = call i32 @mtx_lock(i32* %140)
  %142 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %143 = call i32 @vscsi_setup_bus(%struct.vscsi_softc* %142)
  %144 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %145 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 16, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @M_VSCSI, align 4
  %151 = load i32, i32* @M_NOWAIT, align 4
  %152 = call %struct.vscsi_xfer* @malloc(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %154 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %153, i32 0, i32 6
  store %struct.vscsi_xfer* %152, %struct.vscsi_xfer** %154, align 8
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %189, %48
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %158 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %192

161:                                              ; preds = %155
  %162 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %163 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %162, i32 0, i32 6
  %164 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %164, i64 %166
  store %struct.vscsi_xfer* %167, %struct.vscsi_xfer** %5, align 8
  %168 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %169 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %5, align 8
  %170 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %169, i32 0, i32 1
  store %struct.vscsi_softc* %168, %struct.vscsi_softc** %170, align 8
  %171 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %172 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %5, align 8
  %175 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %174, i32 0, i32 0
  %176 = call i32 @bus_dmamap_create(i32 %173, i32 0, i32* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %161
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  br label %192

183:                                              ; preds = %161
  %184 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %185 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %184, i32 0, i32 4
  %186 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %5, align 8
  %187 = load i32, i32* @queue, align 4
  %188 = call i32 @TAILQ_INSERT_TAIL(i32* %185, %struct.vscsi_xfer* %186, i32 %187)
  br label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %155

192:                                              ; preds = %179, %155
  %193 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %194 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %193, i32 0, i32 1
  %195 = call i32 @mtx_unlock(i32* %194)
  %196 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %197 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32* @cam_simq_alloc(i32 %198)
  %200 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %201 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %200, i32 0, i32 2
  store i32* %199, i32** %201, align 8
  %202 = icmp eq i32* %199, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = load i32, i32* @ENOMEM, align 4
  store i32 %204, i32* %2, align 4
  br label %273

205:                                              ; preds = %192
  %206 = load i32, i32* @vscsi_cam_action, align 4
  %207 = load i32, i32* @vscsi_cam_poll, align 4
  %208 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @device_get_unit(i32 %209)
  %211 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %212 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %211, i32 0, i32 1
  %213 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %214 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %217 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %220 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = call i32* @cam_sim_alloc(i32 %206, i32 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.vscsi_softc* %208, i32 %210, i32* %212, i32 %215, i32 %218, i32* %221)
  %223 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %224 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %223, i32 0, i32 3
  store i32* %222, i32** %224, align 8
  %225 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %226 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %239

229:                                              ; preds = %205
  %230 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %231 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @cam_simq_free(i32* %232)
  %234 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %235 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %234, i32 0, i32 2
  store i32* null, i32** %235, align 8
  %236 = load i32, i32* %3, align 4
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %238 = load i32, i32* @EINVAL, align 4
  store i32 %238, i32* %2, align 4
  br label %273

239:                                              ; preds = %205
  %240 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %241 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %240, i32 0, i32 1
  %242 = call i32 @mtx_lock(i32* %241)
  %243 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %244 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = call i64 @xpt_bus_register(i32* %245, i32 %246, i32 0)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %239
  %250 = load i32, i32* %3, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %252 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %253 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @FALSE, align 4
  %256 = call i32 @cam_sim_free(i32* %254, i32 %255)
  %257 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %258 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %257, i32 0, i32 3
  store i32* null, i32** %258, align 8
  %259 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %260 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @cam_simq_free(i32* %261)
  %263 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %264 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %263, i32 0, i32 2
  store i32* null, i32** %264, align 8
  %265 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %266 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %265, i32 0, i32 1
  %267 = call i32 @mtx_unlock(i32* %266)
  %268 = load i32, i32* @EINVAL, align 4
  store i32 %268, i32* %2, align 4
  br label %273

269:                                              ; preds = %239
  %270 = load %struct.vscsi_softc*, %struct.vscsi_softc** %4, align 8
  %271 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %270, i32 0, i32 1
  %272 = call i32 @mtx_unlock(i32* %271)
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %269, %249, %229, %203, %41, %12
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local %struct.vscsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.vscsi_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vscsi_xfer*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.vscsi_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vscsi_setup_bus(%struct.vscsi_softc*) #1

declare dso_local %struct.vscsi_xfer* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.vscsi_softc*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
