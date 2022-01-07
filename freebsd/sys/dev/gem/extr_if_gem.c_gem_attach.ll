; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gem_txsoft*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.gem_txsoft = type { i32*, i64, i32* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.gem_softc* }
%struct.TYPE_5__ = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"flags=0x%x\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GEM_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@gem_start = common dso_local global i32 0, align 4
@gem_ioctl = common dso_local global i32 0, align 4
@gem_init = common dso_local global i32 0, align 4
@GEM_TXQUEUELEN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@GEM_NTXSEGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to allocate control data, error = %d\0A\00", align 1
@gem_cddma_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to load control data DMA map, error = %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"unable to create TX DMA map %d, error = %d\0A\00", align 1
@txs_q = common dso_local global i32 0, align 4
@GEM_NRXDESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"unable to create RX DMA map %d, error = %d\0A\00", align 1
@GEM_SERDES = common dso_local global i32 0, align 4
@GEM_MII_DATAPATH_MODE = common dso_local global i32 0, align 4
@GEM_MII_DATAPATH_MII = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GEM_MIF_CONFIG = common dso_local global i32 0, align 4
@GEM_MIF_CONFIG_MDI1 = common dso_local global i32 0, align 4
@GEM_MIF_CONFIG_PHY_SEL = common dso_local global i32 0, align 4
@GEM_PHYAD_EXTERNAL = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@gem_mediachange = common dso_local global i32 0, align 4
@gem_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@GEM_MIF_CONFIG_MDI0 = common dso_local global i32 0, align 4
@GEM_PHYAD_INTERNAL = common dso_local global i32 0, align 4
@GEM_SUN_GEM = common dso_local global i32 0, align 4
@GEM_MII_DATAPATH_SERDES = common dso_local global i32 0, align 4
@GEM_MII_SLINK_CONTROL = common dso_local global i32 0, align 4
@GEM_MII_SLINK_LOOPBACK = common dso_local global i32 0, align 4
@GEM_MII_SLINK_EN_SYNC_D = common dso_local global i32 0, align 4
@GEM_MII_CONFIG = common dso_local global i32 0, align 4
@GEM_MII_CONFIG_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@GEM_RX_FIFO_SIZE = common dso_local global i32 0, align 4
@GEM_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%ukB RX FIFO, %ukB TX FIFO\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gem_attach(%struct.gem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem_softc*, align 8
  %4 = alloca %struct.gem_txsoft*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %3, align 8
  %10 = load i64, i64* @bootverbose, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %17 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i32, i32* @IFT_ETHER, align 4
  %22 = call %struct.ifnet* @if_alloc(i32 %21)
  %23 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %23, i32 0, i32 22
  store %struct.ifnet* %22, %struct.ifnet** %24, align 8
  store %struct.ifnet* %22, %struct.ifnet** %5, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = icmp eq %struct.ifnet* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOSPC, align 4
  store i32 %28, i32* %2, align 4
  br label %616

29:                                               ; preds = %20
  %30 = load i32, i32* @GEM_CSUM_FEATURES, align 4
  %31 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %32 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 9
  store %struct.gem_softc* %33, %struct.gem_softc** %35, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %38 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %42 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_get_unit(i32 %43)
  %45 = call i32 @if_initname(%struct.ifnet* %36, i32 %40, i32 %44)
  %46 = load i32, i32* @IFF_BROADCAST, align 4
  %47 = load i32, i32* @IFF_SIMPLEX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IFF_MULTICAST, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @gem_start, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @gem_ioctl, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @gem_init, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 5
  %64 = load i32, i32* @GEM_TXQUEUELEN, align 4
  %65 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %63, i32 %64)
  %66 = load i32, i32* @GEM_TXQUEUELEN, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 5
  %72 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %71)
  %73 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %74 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %73, i32 0, i32 21
  %75 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %76 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %75, i32 0, i32 19
  %77 = call i32 @callout_init_mtx(i32* %74, i32* %76, i32 0)
  %78 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %79 = call i32 @gem_reset(%struct.gem_softc* %78)
  %80 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %81 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_get_dma_tag(i32 %82)
  %84 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %85 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %87 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %88 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %89 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %88, i32 0, i32 4
  %90 = call i32 @bus_dma_tag_create(i32 %83, i32 1, i32 0, i32 %84, i32 %85, i32* null, i32* null, i32 %86, i32 0, i32 %87, i32 0, i32* null, i32* null, i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %29
  br label %612

94:                                               ; preds = %29
  %95 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %96 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i32, i32* @MCLBYTES, align 4
  %101 = load i32, i32* @MCLBYTES, align 4
  %102 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %103 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %104 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %103, i32 0, i32 5
  %105 = call i32 @bus_dma_tag_create(i32 %97, i32 1, i32 0, i32 %98, i32 %99, i32* null, i32* null, i32 %100, i32 1, i32 %101, i32 %102, i32* null, i32* null, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %607

109:                                              ; preds = %94
  %110 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %111 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %114 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %115 = load i32, i32* @MCLBYTES, align 4
  %116 = load i32, i32* @GEM_NTXSEGS, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* @GEM_NTXSEGS, align 4
  %119 = load i32, i32* @MCLBYTES, align 4
  %120 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %121 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %122 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %121, i32 0, i32 6
  %123 = call i32 @bus_dma_tag_create(i32 %112, i32 1, i32 0, i32 %113, i32 %114, i32* null, i32* null, i32 %117, i32 %118, i32 %119, i32 %120, i32* null, i32* null, i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  br label %602

127:                                              ; preds = %109
  %128 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %129 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %133 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %134 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %135 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %134, i32 0, i32 7
  %136 = call i32 @bus_dma_tag_create(i32 %130, i32 %131, i32 0, i32 %132, i32 %133, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32* null, i32* null, i32* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %597

140:                                              ; preds = %127
  %141 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %142 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %145 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %144, i32 0, i32 9
  %146 = bitcast i32* %145 to i8**
  %147 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %148 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @BUS_DMA_ZERO, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %153 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %152, i32 0, i32 8
  %154 = call i32 @bus_dmamem_alloc(i32 %143, i8** %146, i32 %151, i32* %153)
  store i32 %154, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %140
  %157 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %158 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  br label %592

162:                                              ; preds = %140
  %163 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %164 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %166 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %169 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %172 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @gem_cddma_callback, align 4
  %175 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %176 = call i32 @bus_dmamap_load(i32 %167, i32 %170, i32 %173, i32 4, i32 %174, %struct.gem_softc* %175, i32 0)
  store i32 %176, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %162
  %179 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %180 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178, %162
  %184 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %185 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %184, i32 0, i32 14
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  br label %581

189:                                              ; preds = %178
  %190 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %191 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %190, i32 0, i32 17
  %192 = call i32 @STAILQ_INIT(i32* %191)
  %193 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %194 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %193, i32 0, i32 18
  %195 = call i32 @STAILQ_INIT(i32* %194)
  %196 = load i32, i32* @ENOMEM, align 4
  store i32 %196, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %232, %189
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @GEM_TXQUEUELEN, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %235

201:                                              ; preds = %197
  %202 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %203 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %202, i32 0, i32 10
  %204 = load %struct.gem_txsoft*, %struct.gem_txsoft** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %204, i64 %206
  store %struct.gem_txsoft* %207, %struct.gem_txsoft** %4, align 8
  %208 = load %struct.gem_txsoft*, %struct.gem_txsoft** %4, align 8
  %209 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %208, i32 0, i32 2
  store i32* null, i32** %209, align 8
  %210 = load %struct.gem_txsoft*, %struct.gem_txsoft** %4, align 8
  %211 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %213 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.gem_txsoft*, %struct.gem_txsoft** %4, align 8
  %216 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %215, i32 0, i32 0
  %217 = call i32 @bus_dmamap_create(i32 %214, i32 0, i32** %216)
  store i32 %217, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %201
  %220 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %221 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %220, i32 0, i32 14
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %6, align 4
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %223, i32 %224)
  br label %541

226:                                              ; preds = %201
  %227 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %228 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %227, i32 0, i32 17
  %229 = load %struct.gem_txsoft*, %struct.gem_txsoft** %4, align 8
  %230 = load i32, i32* @txs_q, align 4
  %231 = call i32 @STAILQ_INSERT_TAIL(i32* %228, %struct.gem_txsoft* %229, i32 %230)
  br label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %197

235:                                              ; preds = %197
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %268, %235
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @GEM_NRXDESC, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %271

240:                                              ; preds = %236
  %241 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %242 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %245 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %244, i32 0, i32 11
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = call i32 @bus_dmamap_create(i32 %243, i32 0, i32** %250)
  store i32 %251, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %240
  %254 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %255 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %254, i32 0, i32 14
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (i32, i8*, ...) @device_printf(i32 %256, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %258)
  br label %508

260:                                              ; preds = %240
  %261 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %262 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %261, i32 0, i32 11
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  store i32* null, i32** %267, align 8
  br label %268

268:                                              ; preds = %260
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %236

271:                                              ; preds = %236
  %272 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %273 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @GEM_SERDES, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %401

279:                                              ; preds = %271
  %280 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %281 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 128
  br i1 %283, label %284, label %295

284:                                              ; preds = %279
  %285 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %286 = load i32, i32* @GEM_MII_DATAPATH_MODE, align 4
  %287 = load i32, i32* @GEM_MII_DATAPATH_MII, align 4
  %288 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %285, i32 %286, i32 %287)
  %289 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %290 = load i32, i32* @GEM_MII_DATAPATH_MODE, align 4
  %291 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %292 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %289, i32 %290, i32 4, i32 %293)
  br label %295

295:                                              ; preds = %284, %279
  %296 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %297 = call i32 @gem_mifinit(%struct.gem_softc* %296)
  %298 = load i32, i32* @ENXIO, align 4
  store i32 %298, i32* %6, align 4
  %299 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %300 = load i32, i32* @GEM_MIF_CONFIG, align 4
  %301 = call i32 @GEM_BANK1_READ_4(%struct.gem_softc* %299, i32 %300)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @GEM_MIF_CONFIG_MDI1, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %341

306:                                              ; preds = %295
  %307 = load i32, i32* @GEM_MIF_CONFIG_PHY_SEL, align 4
  %308 = load i32, i32* %9, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %9, align 4
  %310 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %311 = load i32, i32* @GEM_MIF_CONFIG, align 4
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %310, i32 %311, i32 %312)
  %314 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %315 = load i32, i32* @GEM_MIF_CONFIG, align 4
  %316 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %317 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %318 = or i32 %316, %317
  %319 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %314, i32 %315, i32 4, i32 %318)
  %320 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %321 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  switch i32 %322, label %325 [
    i32 128, label %323
  ]

323:                                              ; preds = %306
  %324 = load i32, i32* @GEM_PHYAD_EXTERNAL, align 4
  store i32 %324, i32* %8, align 4
  br label %327

325:                                              ; preds = %306
  %326 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %329 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %328, i32 0, i32 14
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %332 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %331, i32 0, i32 15
  %333 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %334 = load i32, i32* @gem_mediachange, align 4
  %335 = load i32, i32* @gem_mediastatus, align 4
  %336 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @MII_OFFSET_ANY, align 4
  %339 = load i32, i32* @MIIF_DOPAUSE, align 4
  %340 = call i32 @mii_attach(i32 %330, i32* %332, %struct.ifnet* %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %6, align 4
  br label %341

341:                                              ; preds = %327, %295
  %342 = load i32, i32* %6, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %391

344:                                              ; preds = %341
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* @GEM_MIF_CONFIG_MDI0, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %344
  %350 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %351 = call i64 @GEM_IS_APPLE(%struct.gem_softc* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %391

353:                                              ; preds = %349, %344
  %354 = load i32, i32* @GEM_MIF_CONFIG_PHY_SEL, align 4
  %355 = xor i32 %354, -1
  %356 = load i32, i32* %9, align 4
  %357 = and i32 %356, %355
  store i32 %357, i32* %9, align 4
  %358 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %359 = load i32, i32* @GEM_MIF_CONFIG, align 4
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %358, i32 %359, i32 %360)
  %362 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %363 = load i32, i32* @GEM_MIF_CONFIG, align 4
  %364 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %365 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %366 = or i32 %364, %365
  %367 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %362, i32 %363, i32 4, i32 %366)
  %368 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %369 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  switch i32 %370, label %375 [
    i32 128, label %371
    i32 129, label %371
    i32 130, label %373
  ]

371:                                              ; preds = %353, %353
  %372 = load i32, i32* @GEM_PHYAD_INTERNAL, align 4
  store i32 %372, i32* %8, align 4
  br label %377

373:                                              ; preds = %353
  %374 = load i32, i32* @GEM_PHYAD_EXTERNAL, align 4
  store i32 %374, i32* %8, align 4
  br label %377

375:                                              ; preds = %353
  %376 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %376, i32* %8, align 4
  br label %377

377:                                              ; preds = %375, %373, %371
  %378 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %379 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %378, i32 0, i32 14
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %382 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %381, i32 0, i32 15
  %383 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %384 = load i32, i32* @gem_mediachange, align 4
  %385 = load i32, i32* @gem_mediastatus, align 4
  %386 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @MII_OFFSET_ANY, align 4
  %389 = load i32, i32* @MIIF_DOPAUSE, align 4
  %390 = call i32 @mii_attach(i32 %380, i32* %382, %struct.ifnet* %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389)
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %377, %349, %341
  %392 = load i32, i32* %6, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %446

394:                                              ; preds = %391
  %395 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %396 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @GEM_SUN_GEM, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %446

400:                                              ; preds = %394
  br label %401

401:                                              ; preds = %400, %278
  %402 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %403 = load i32, i32* @GEM_MII_DATAPATH_MODE, align 4
  %404 = load i32, i32* @GEM_MII_DATAPATH_SERDES, align 4
  %405 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %402, i32 %403, i32 %404)
  %406 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %407 = load i32, i32* @GEM_MII_DATAPATH_MODE, align 4
  %408 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %409 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %406, i32 %407, i32 4, i32 %408)
  %410 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %411 = load i32, i32* @GEM_MII_SLINK_CONTROL, align 4
  %412 = load i32, i32* @GEM_MII_SLINK_LOOPBACK, align 4
  %413 = load i32, i32* @GEM_MII_SLINK_EN_SYNC_D, align 4
  %414 = or i32 %412, %413
  %415 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %410, i32 %411, i32 %414)
  %416 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %417 = load i32, i32* @GEM_MII_SLINK_CONTROL, align 4
  %418 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %419 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %416, i32 %417, i32 4, i32 %418)
  %420 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %421 = load i32, i32* @GEM_MII_CONFIG, align 4
  %422 = load i32, i32* @GEM_MII_CONFIG_ENABLE, align 4
  %423 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %420, i32 %421, i32 %422)
  %424 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %425 = load i32, i32* @GEM_MII_CONFIG, align 4
  %426 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %427 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %424, i32 %425, i32 4, i32 %426)
  %428 = load i32, i32* @GEM_SERDES, align 4
  %429 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %430 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = or i32 %431, %428
  store i32 %432, i32* %430, align 8
  %433 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %434 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %433, i32 0, i32 14
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %437 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %436, i32 0, i32 15
  %438 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %439 = load i32, i32* @gem_mediachange, align 4
  %440 = load i32, i32* @gem_mediastatus, align 4
  %441 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %442 = load i32, i32* @GEM_PHYAD_EXTERNAL, align 4
  %443 = load i32, i32* @MII_OFFSET_ANY, align 4
  %444 = load i32, i32* @MIIF_DOPAUSE, align 4
  %445 = call i32 @mii_attach(i32 %435, i32* %437, %struct.ifnet* %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443, i32 %444)
  store i32 %445, i32* %6, align 4
  br label %446

446:                                              ; preds = %401, %394, %391
  %447 = load i32, i32* %6, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %446
  %450 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %451 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %450, i32 0, i32 14
  %452 = load i32, i32* %451, align 8
  %453 = call i32 (i32, i8*, ...) @device_printf(i32 %452, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %508

454:                                              ; preds = %446
  %455 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %456 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %455, i32 0, i32 15
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @device_get_softc(i32 %457)
  %459 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %460 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %459, i32 0, i32 16
  store i32 %458, i32* %460, align 8
  %461 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %462 = load i32, i32* @GEM_RX_FIFO_SIZE, align 4
  %463 = call i32 @GEM_BANK1_READ_4(%struct.gem_softc* %461, i32 %462)
  %464 = mul nsw i32 64, %463
  %465 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %466 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %465, i32 0, i32 3
  store i32 %464, i32* %466, align 4
  %467 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %468 = load i32, i32* @GEM_TX_FIFO_SIZE, align 4
  %469 = call i32 @GEM_BANK1_READ_4(%struct.gem_softc* %467, i32 %468)
  store i32 %469, i32* %9, align 4
  %470 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %471 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %470, i32 0, i32 14
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %474 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = sdiv i32 %475, 1024
  %477 = load i32, i32* %9, align 4
  %478 = sdiv i32 %477, 16
  %479 = call i32 (i32, i8*, ...) @device_printf(i32 %472, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %476, i32 %478)
  %480 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %481 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %482 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %481, i32 0, i32 13
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @ether_ifattach(%struct.ifnet* %480, i32 %483)
  %485 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %486 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %485, i32 0, i32 1
  store i32 4, i32* %486, align 4
  %487 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %488 = load i32, i32* @IFCAP_HWCSUM, align 4
  %489 = or i32 %487, %488
  %490 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %491 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %489
  store i32 %493, i32* %491, align 8
  %494 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %495 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %494, i32 0, i32 12
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %498 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %496
  store i32 %500, i32* %498, align 8
  %501 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %502 = load i32, i32* @IFCAP_HWCSUM, align 4
  %503 = or i32 %501, %502
  %504 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %505 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 4
  %507 = or i32 %506, %503
  store i32 %507, i32* %505, align 4
  store i32 0, i32* %2, align 4
  br label %616

508:                                              ; preds = %449, %253
  store i32 0, i32* %7, align 4
  br label %509

509:                                              ; preds = %537, %508
  %510 = load i32, i32* %7, align 4
  %511 = load i32, i32* @GEM_NRXDESC, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %540

513:                                              ; preds = %509
  %514 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %515 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %514, i32 0, i32 11
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %515, align 8
  %517 = load i32, i32* %7, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = icmp ne i32* %521, null
  br i1 %522, label %523, label %536

523:                                              ; preds = %513
  %524 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %525 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %524, i32 0, i32 5
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %528 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %527, i32 0, i32 11
  %529 = load %struct.TYPE_4__*, %struct.TYPE_4__** %528, align 8
  %530 = load i32, i32* %7, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 0
  %534 = load i32*, i32** %533, align 8
  %535 = call i32 @bus_dmamap_destroy(i32 %526, i32* %534)
  br label %536

536:                                              ; preds = %523, %513
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %7, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %7, align 4
  br label %509

540:                                              ; preds = %509
  br label %541

541:                                              ; preds = %540, %219
  store i32 0, i32* %7, align 4
  br label %542

542:                                              ; preds = %570, %541
  %543 = load i32, i32* %7, align 4
  %544 = load i32, i32* @GEM_TXQUEUELEN, align 4
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %546, label %573

546:                                              ; preds = %542
  %547 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %548 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %547, i32 0, i32 10
  %549 = load %struct.gem_txsoft*, %struct.gem_txsoft** %548, align 8
  %550 = load i32, i32* %7, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %549, i64 %551
  %553 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %552, i32 0, i32 0
  %554 = load i32*, i32** %553, align 8
  %555 = icmp ne i32* %554, null
  br i1 %555, label %556, label %569

556:                                              ; preds = %546
  %557 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %558 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %557, i32 0, i32 6
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %561 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %560, i32 0, i32 10
  %562 = load %struct.gem_txsoft*, %struct.gem_txsoft** %561, align 8
  %563 = load i32, i32* %7, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %562, i64 %564
  %566 = getelementptr inbounds %struct.gem_txsoft, %struct.gem_txsoft* %565, i32 0, i32 0
  %567 = load i32*, i32** %566, align 8
  %568 = call i32 @bus_dmamap_destroy(i32 %559, i32* %567)
  br label %569

569:                                              ; preds = %556, %546
  br label %570

570:                                              ; preds = %569
  %571 = load i32, i32* %7, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %7, align 4
  br label %542

573:                                              ; preds = %542
  %574 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %575 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %574, i32 0, i32 7
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %578 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %577, i32 0, i32 8
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @bus_dmamap_unload(i32 %576, i32 %579)
  br label %581

581:                                              ; preds = %573, %183
  %582 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %583 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %582, i32 0, i32 7
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %586 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %585, i32 0, i32 9
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %589 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %588, i32 0, i32 8
  %590 = load i32, i32* %589, align 8
  %591 = call i32 @bus_dmamem_free(i32 %584, i32 %587, i32 %590)
  br label %592

592:                                              ; preds = %581, %156
  %593 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %594 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %593, i32 0, i32 7
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @bus_dma_tag_destroy(i32 %595)
  br label %597

597:                                              ; preds = %592, %139
  %598 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %599 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %598, i32 0, i32 6
  %600 = load i32, i32* %599, align 8
  %601 = call i32 @bus_dma_tag_destroy(i32 %600)
  br label %602

602:                                              ; preds = %597, %126
  %603 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %604 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @bus_dma_tag_destroy(i32 %605)
  br label %607

607:                                              ; preds = %602, %108
  %608 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %609 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %608, i32 0, i32 4
  %610 = load i32, i32* %609, align 8
  %611 = call i32 @bus_dma_tag_destroy(i32 %610)
  br label %612

612:                                              ; preds = %607, %93
  %613 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %614 = call i32 @if_free(%struct.ifnet* %613)
  %615 = load i32, i32* %6, align 4
  store i32 %615, i32* %2, align 4
  br label %616

616:                                              ; preds = %612, %454, %27
  %617 = load i32, i32* %2, align 4
  ret i32 %617
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @gem_reset(%struct.gem_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.gem_softc*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gem_txsoft*, i32) #1

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_BANK1_BARRIER(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @gem_mifinit(%struct.gem_softc*) #1

declare dso_local i32 @GEM_BANK1_READ_4(%struct.gem_softc*, i32) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GEM_IS_APPLE(%struct.gem_softc*) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
