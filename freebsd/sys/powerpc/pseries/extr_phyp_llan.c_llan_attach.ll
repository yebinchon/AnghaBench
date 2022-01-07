; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llan_softc = type { %struct.TYPE_9__*, i32*, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i32, i32, i32, i64, i64, i64, i32, %struct.llan_softc* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"llan\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@llan_intr = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@LLAN_RX_BUF_LEN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@llan_rx_load_cb = common dso_local global i32 0, align 4
@LLAN_MAX_RX_PACKETS = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@llan_start = common dso_local global i32 0, align 4
@llan_ioctl = common dso_local global i32 0, align 4
@llan_init = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@llan_media_change = common dso_local global i32 0, align 4
@llan_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@LLAN_MAX_TX_PACKETS = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @llan_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llan_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.llan_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.llan_softc* @device_get_softc(i32 %9)
  store %struct.llan_softc* %10, %struct.llan_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %13 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %12, i32 0, i32 15
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %18 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @OF_getprop(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %19, i32 8)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %26 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %29 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @bcopy(i32* %27, i32* %31, i64 %32)
  %34 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %35 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bzero(i32* %36, i32 2)
  br label %38

38:                                               ; preds = %24, %1
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %41 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %40, i32 0, i32 14
  %42 = call i32 @OF_getencprop(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %41, i32 4)
  %43 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %44 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %43, i32 0, i32 10
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %45)
  %47 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %48 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %47, i32 0, i32 13
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_IRQ, align 4
  %51 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %52 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %51, i32 0, i32 13
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i32 @bus_alloc_resource_any(i32 %49, i32 %50, i64* %52, i32 %53)
  %55 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %56 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %58 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %38
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %65 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %64, i32 0, i32 10
  %66 = call i32 @mtx_destroy(i32* %65)
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %2, align 4
  br label %277

68:                                               ; preds = %38
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %71 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @INTR_TYPE_MISC, align 4
  %74 = load i32, i32* @INTR_MPSAFE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @INTR_ENTROPY, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @llan_intr, align 4
  %79 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %80 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %81 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %80, i32 0, i32 11
  %82 = call i32 @bus_setup_intr(i32 %69, i32 %72, i32 %77, i32* null, i32 %78, %struct.llan_softc* %79, i32* %81)
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @bus_get_dma_tag(i32 %83)
  %85 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load i32, i32* @LLAN_RX_BUF_LEN, align 4
  %88 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %89 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %90 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %89, i32 0, i32 9
  %91 = call i32 @bus_dma_tag_create(i32 %84, i32 16, i32 0, i32 %85, i32 %86, i32* null, i32* null, i32 %87, i32 1, i32 %88, i32 0, i32* null, i32* null, i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @bus_get_dma_tag(i32 %92)
  %94 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %97 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %98 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %99 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %98, i32 0, i32 4
  %100 = call i32 @bus_dma_tag_create(i32 %93, i32 4, i32 0, i32 %94, i32 %95, i32* null, i32* null, i32 %96, i32 1, i32 %97, i32 0, i32* null, i32* null, i32* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @bus_get_dma_tag(i32 %101)
  %103 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %104 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %105 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %106 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %107 = load i32*, i32** @busdma_lock_mutex, align 8
  %108 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %109 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %108, i32 0, i32 10
  %110 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %111 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %110, i32 0, i32 6
  %112 = call i32 @bus_dma_tag_create(i32 %102, i32 1, i32 0, i32 %103, i32 %104, i32* null, i32* null, i32 %105, i32 6, i32 %106, i32 0, i32* %107, i32* %109, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %114 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %117 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %116, i32 0, i32 7
  %118 = bitcast i32* %117 to i8**
  %119 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %120 = load i32, i32* @BUS_DMA_ZERO, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %123 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %122, i32 0, i32 8
  %124 = call i32 @bus_dmamem_alloc(i32 %115, i8** %118, i32 %121, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %126 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %129 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %132 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @LLAN_RX_BUF_LEN, align 4
  %135 = load i32, i32* @llan_rx_load_cb, align 4
  %136 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %137 = call i32 @bus_dmamap_load(i32 %127, i32 %130, i32 %133, i32 %134, i32 %135, %struct.llan_softc* %136, i32 0)
  store i32 %137, i32* %6, align 4
  %138 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %139 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %142 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %141, i32 0, i32 5
  %143 = call i32 @bus_dmamap_create(i32 %140, i32 0, i32* %142)
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %167, %68
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @LLAN_MAX_RX_PACKETS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %144
  %149 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %150 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %153 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = call i32 @bus_dmamap_create(i32 %151, i32 0, i32* %158)
  store i32 %159, i32* %6, align 4
  %160 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %161 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %144

170:                                              ; preds = %144
  %171 = load i32, i32* @IFT_ETHER, align 4
  %172 = call %struct.TYPE_9__* @if_alloc(i32 %171)
  %173 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %174 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %173, i32 0, i32 0
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %174, align 8
  %175 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %176 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %177 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 9
  store %struct.llan_softc* %175, %struct.llan_softc** %179, align 8
  %180 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %181 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %180, i32 0, i32 0
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_get_name(i32 %183)
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @device_get_unit(i32 %185)
  %187 = call i32 @if_initname(%struct.TYPE_9__* %182, i32 %184, i32 %186)
  %188 = load i32, i32* @ETHERMTU, align 4
  %189 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %190 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 8
  store i32 %188, i32* %192, align 8
  %193 = load i32, i32* @IFF_BROADCAST, align 4
  %194 = load i32, i32* @IFF_SIMPLEX, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @IFF_MULTICAST, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %199 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %198, i32 0, i32 0
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 8
  %202 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %203 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %202, i32 0, i32 0
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 7
  store i64 0, i64* %205, align 8
  %206 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %207 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 6
  store i64 0, i64* %209, align 8
  %210 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %211 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* @llan_start, align 4
  %215 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %216 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %215, i32 0, i32 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  store i32 %214, i32* %218, align 8
  %219 = load i32, i32* @llan_ioctl, align 4
  %220 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %221 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* @llan_init, align 4
  %225 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %226 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %225, i32 0, i32 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  store i32 %224, i32* %228, align 8
  %229 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %230 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %229, i32 0, i32 2
  %231 = load i32, i32* @IFM_IMASK, align 4
  %232 = load i32, i32* @llan_media_change, align 4
  %233 = load i32, i32* @llan_media_status, align 4
  %234 = call i32 @ifmedia_init(i32* %230, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %236 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %235, i32 0, i32 2
  %237 = load i32, i32* @IFM_ETHER, align 4
  %238 = load i32, i32* @IFM_AUTO, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @ifmedia_add(i32* %236, i32 %239, i32 0, i32* null)
  %241 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %242 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %241, i32 0, i32 2
  %243 = load i32, i32* @IFM_ETHER, align 4
  %244 = load i32, i32* @IFM_AUTO, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @ifmedia_set(i32* %242, i32 %245)
  %247 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %248 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load i32, i32* @LLAN_MAX_TX_PACKETS, align 4
  %252 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_10__* %250, i32 %251)
  %253 = load i32, i32* @LLAN_MAX_TX_PACKETS, align 4
  %254 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %255 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %254, i32 0, i32 0
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 4
  %259 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %260 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %259, i32 0, i32 0
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = call i32 @IFQ_SET_READY(%struct.TYPE_10__* %262)
  %264 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %265 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %264, i32 0, i32 0
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %268 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 2
  %271 = call i32 @ether_ifattach(%struct.TYPE_9__* %266, i32* %270)
  %272 = load %struct.llan_softc*, %struct.llan_softc** %4, align 8
  %273 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %272, i32 0, i32 0
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = load i32, i32* @LINK_STATE_UP, align 4
  %276 = call i32 @if_link_state_change(%struct.TYPE_9__* %274, i32 %275)
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %170, %61
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local %struct.llan_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.llan_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.llan_softc*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_10__*) #1

declare dso_local i32 @ether_ifattach(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
