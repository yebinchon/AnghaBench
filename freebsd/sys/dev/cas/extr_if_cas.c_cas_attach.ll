; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i8*, i64, i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32, %struct.cas_txsoft*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.cas_softc*, %struct.cas_softc* }
%struct.cas_txsoft = type { i32*, i64, i32* }
%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32, i8*, i64, i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32, %struct.cas_txsoft*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.ifnet*, %struct.ifnet* }

@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@cas_start = common dso_local global i32 0, align 4
@cas_ioctl = common dso_local global i32 0, align 4
@cas_init = common dso_local global i32 0, align 4
@CAS_TXQUEUELEN = common dso_local global i32 0, align 4
@cas_intr_task = common dso_local global i32 0, align 4
@cas_tx_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cas_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not create taskqueue\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"could not start threads\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@CAS_PAGE_SIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@CAS_NTXSEGS = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@CAS_TX_DESC_ALIGN = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"unable to allocate control data, error = %d\0A\00", align 1
@cas_cddma_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"unable to load control data DMA map, error = %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"unable to create TX DMA map %d, error = %d\0A\00", align 1
@txs_q = common dso_local global i32 0, align 4
@CAS_NRXDESC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"unable to allocate RX buffer %d, error = %d\0A\00", align 1
@cas_rxdma_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"unable to load RX DMA map %d, error = %d\0A\00", align 1
@CAS_SERDES = common dso_local global i32 0, align 4
@CAS_PCS_DATAPATH = common dso_local global i32 0, align 4
@CAS_PCS_DATAPATH_MII = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@CAS_MIF_CONF = common dso_local global i32 0, align 4
@CAS_MIF_CONF_MDI1 = common dso_local global i32 0, align 4
@CAS_MIF_CONF_PHY_SELECT = common dso_local global i32 0, align 4
@CAS_SATURN = common dso_local global i64 0, align 8
@CAS_SATURN_PCFG = common dso_local global i32 0, align 4
@CAS_SATURN_PCFG_FSI = common dso_local global i32 0, align 4
@cas_mediachange = common dso_local global i32 0, align 4
@cas_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@CAS_MIF_CONF_MDI0 = common dso_local global i32 0, align 4
@CAS_PCS_DATAPATH_SERDES = common dso_local global i32 0, align 4
@CAS_PCS_SERDES_CTRL = common dso_local global i32 0, align 4
@CAS_PCS_SERDES_CTRL_ESD = common dso_local global i32 0, align 4
@CAS_PCS_CONF = common dso_local global i32 0, align 4
@CAS_PCS_CONF_EN = common dso_local global i32 0, align 4
@CAS_PHYAD_EXTERNAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@CAS_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"%ukB RX FIFO, %ukB TX FIFO\0A\00", align 1
@CAS_RX_FIFO_SIZE = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@CAS_NO_CSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@CAS_CSUM_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas_softc*)* @cas_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_attach(%struct.cas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas_softc*, align 8
  %4 = alloca %struct.cas_txsoft*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cas_softc* %0, %struct.cas_softc** %3, align 8
  %9 = load i32, i32* @IFT_ETHER, align 4
  %10 = call %struct.ifnet* @if_alloc(i32 %9)
  %11 = bitcast %struct.ifnet* %10 to %struct.cas_softc*
  %12 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %13 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %12, i32 0, i32 34
  store %struct.cas_softc* %11, %struct.cas_softc** %13, align 8
  %14 = bitcast %struct.cas_softc* %11 to %struct.ifnet*
  store %struct.ifnet* %14, %struct.ifnet** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = icmp eq %struct.ifnet* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOSPC, align 4
  store i32 %18, i32* %2, align 4
  br label %788

19:                                               ; preds = %1
  %20 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %21 = bitcast %struct.cas_softc* %20 to %struct.ifnet*
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 33
  store %struct.ifnet* %21, %struct.ifnet** %23, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %25, i32 0, i32 19
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_get_name(i32 %27)
  %29 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %29, i32 0, i32 19
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_get_unit(i32 %31)
  %33 = call i32 @if_initname(%struct.ifnet* %24, i32 %28, i32 %32)
  %34 = load i32, i32* @IFF_BROADCAST, align 4
  %35 = load i32, i32* @IFF_SIMPLEX, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IFF_MULTICAST, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @cas_start, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 32
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @cas_ioctl, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 31
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @cas_init, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 30
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 29
  %52 = load i32, i32* @CAS_TXQUEUELEN, align 4
  %53 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %51, i32 %52)
  %54 = load i32, i32* @CAS_TXQUEUELEN, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 29
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 29
  %60 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %59)
  %61 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %61, i32 0, i32 28
  %63 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %64 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %63, i32 0, i32 26
  %65 = call i32 @callout_init_mtx(i32* %62, i32* %64, i32 0)
  %66 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %67 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %66, i32 0, i32 27
  %68 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %69 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %68, i32 0, i32 26
  %70 = call i32 @callout_init_mtx(i32* %67, i32* %69, i32 0)
  %71 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %72 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %71, i32 0, i32 25
  %73 = load i32, i32* @cas_intr_task, align 4
  %74 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %75 = bitcast %struct.cas_softc* %74 to %struct.ifnet*
  %76 = call i32 @TASK_INIT(i32* %72, i32 0, i32 %73, %struct.ifnet* %75)
  %77 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %78 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %77, i32 0, i32 24
  %79 = load i32, i32* @cas_tx_task, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = call i32 @TASK_INIT(i32* %78, i32 1, i32 %79, %struct.ifnet* %80)
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %84 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %85 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %84, i32 0, i32 7
  %86 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32** %85)
  %87 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %88 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %87, i32 0, i32 7
  store i32* %86, i32** %88, align 8
  %89 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %90 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %19
  %94 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %95 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %94, i32 0, i32 19
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %6, align 4
  br label %784

99:                                               ; preds = %19
  %100 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %101 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %100, i32 0, i32 7
  %102 = load i32, i32* @PI_NET, align 4
  %103 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %104 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %103, i32 0, i32 19
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_get_nameunit(i32 %105)
  %107 = call i32 @taskqueue_start_threads(i32** %101, i32 1, i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %112 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %111, i32 0, i32 19
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %779

115:                                              ; preds = %99
  %116 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %117 = bitcast %struct.cas_softc* %116 to %struct.ifnet*
  %118 = call i32 @cas_reset(%struct.ifnet* %117)
  %119 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %120 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %119, i32 0, i32 19
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @bus_get_dma_tag(i32 %121)
  %123 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %124 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %125 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %126 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %127 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %128 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %127, i32 0, i32 8
  %129 = call i32 @bus_dma_tag_create(i32 %122, i32 1, i32 0, i32 %123, i32 %124, i32* null, i32* null, i32 %125, i32 0, i32 %126, i32 0, i32* null, i32* null, i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %115
  br label %779

133:                                              ; preds = %115
  %134 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %135 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %138 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %139 = load i32, i32* @CAS_PAGE_SIZE, align 4
  %140 = load i32, i32* @CAS_PAGE_SIZE, align 4
  %141 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %142 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %141, i32 0, i32 9
  %143 = call i32 @bus_dma_tag_create(i32 %136, i32 1, i32 0, i32 %137, i32 %138, i32* null, i32* null, i32 %139, i32 1, i32 %140, i32 0, i32* null, i32* null, i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %774

147:                                              ; preds = %133
  %148 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %149 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %152 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %153 = load i32, i32* @MCLBYTES, align 4
  %154 = load i32, i32* @CAS_NTXSEGS, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* @CAS_NTXSEGS, align 4
  %157 = load i32, i32* @MCLBYTES, align 4
  %158 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %159 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %160 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %159, i32 0, i32 10
  %161 = call i32 @bus_dma_tag_create(i32 %150, i32 1, i32 0, i32 %151, i32 %152, i32* null, i32* null, i32 %155, i32 %156, i32 %157, i32 %158, i32* null, i32* null, i32* %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  br label %769

165:                                              ; preds = %147
  %166 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %167 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CAS_TX_DESC_ALIGN, align 4
  %170 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %171 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %172 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %173 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %172, i32 0, i32 11
  %174 = call i32 @bus_dma_tag_create(i32 %168, i32 %169, i32 0, i32 %170, i32 %171, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32* null, i32* null, i32* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %764

178:                                              ; preds = %165
  %179 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %180 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %183 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %182, i32 0, i32 1
  %184 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %185 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @BUS_DMA_ZERO, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %190 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %189, i32 0, i32 12
  %191 = call i32 @bus_dmamem_alloc(i32 %181, i8** %183, i32 %188, i32* %190)
  store i32 %191, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178
  %194 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %195 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %194, i32 0, i32 19
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (i32, i8*, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  br label %759

199:                                              ; preds = %178
  %200 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %201 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %200, i32 0, i32 2
  store i64 0, i64* %201, align 8
  %202 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %203 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %206 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %209 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* @cas_cddma_callback, align 4
  %212 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %213 = bitcast %struct.cas_softc* %212 to %struct.ifnet*
  %214 = call i32 @bus_dmamap_load(i32 %204, i32 %207, i8* %210, i32 4, i32 %211, %struct.ifnet* %213, i32 0)
  store i32 %214, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %199
  %217 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %218 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216, %199
  %222 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %223 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %222, i32 0, i32 19
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 (i32, i8*, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  br label %748

227:                                              ; preds = %216
  %228 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %229 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %228, i32 0, i32 22
  %230 = call i32 @STAILQ_INIT(i32* %229)
  %231 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %232 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %231, i32 0, i32 23
  %233 = call i32 @STAILQ_INIT(i32* %232)
  %234 = load i32, i32* @ENOMEM, align 4
  store i32 %234, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %270, %227
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @CAS_TXQUEUELEN, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %273

239:                                              ; preds = %235
  %240 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %241 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %240, i32 0, i32 13
  %242 = load %struct.cas_txsoft*, %struct.cas_txsoft** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %242, i64 %244
  store %struct.cas_txsoft* %245, %struct.cas_txsoft** %4, align 8
  %246 = load %struct.cas_txsoft*, %struct.cas_txsoft** %4, align 8
  %247 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %246, i32 0, i32 2
  store i32* null, i32** %247, align 8
  %248 = load %struct.cas_txsoft*, %struct.cas_txsoft** %4, align 8
  %249 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %248, i32 0, i32 1
  store i64 0, i64* %249, align 8
  %250 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %251 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %250, i32 0, i32 10
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.cas_txsoft*, %struct.cas_txsoft** %4, align 8
  %254 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %253, i32 0, i32 0
  %255 = call i32 @bus_dmamap_create(i32 %252, i32 0, i32** %254)
  store i32 %255, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %239
  %258 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %259 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %258, i32 0, i32 19
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 (i32, i8*, ...) @device_printf(i32 %260, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %261, i32 %262)
  br label %708

264:                                              ; preds = %239
  %265 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %266 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %265, i32 0, i32 22
  %267 = load %struct.cas_txsoft*, %struct.cas_txsoft** %4, align 8
  %268 = load i32, i32* @txs_q, align 4
  %269 = call i32 @STAILQ_INSERT_TAIL(i32* %266, %struct.cas_txsoft* %267, i32 %268)
  br label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %235

273:                                              ; preds = %235
  store i32 0, i32* %7, align 4
  br label %274

274:                                              ; preds = %360, %273
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @CAS_NRXDESC, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %363

278:                                              ; preds = %274
  %279 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %280 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %283 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %282, i32 0, i32 14
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %290 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %291 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %290, i32 0, i32 14
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 2
  %297 = call i32 @bus_dmamem_alloc(i32 %281, i8** %288, i32 %289, i32* %296)
  store i32 %297, i32* %6, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %278
  %300 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %301 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %300, i32 0, i32 19
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %6, align 4
  %305 = call i32 (i32, i8*, ...) @device_printf(i32 %302, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %303, i32 %304)
  br label %667

306:                                              ; preds = %278
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %309 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  %310 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %311 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %310, i32 0, i32 14
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  store i64 0, i64* %316, align 8
  %317 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %318 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %321 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %320, i32 0, i32 14
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %329 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %328, i32 0, i32 14
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = load i32, i32* @CAS_PAGE_SIZE, align 4
  %337 = load i32, i32* @cas_rxdma_callback, align 4
  %338 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %339 = bitcast %struct.cas_softc* %338 to %struct.ifnet*
  %340 = call i32 @bus_dmamap_load(i32 %319, i32 %327, i8* %335, i32 %336, i32 %337, %struct.ifnet* %339, i32 0)
  store i32 %340, i32* %6, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %352, label %342

342:                                              ; preds = %306
  %343 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %344 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %343, i32 0, i32 14
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %342, %306
  %353 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %354 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %353, i32 0, i32 19
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* %6, align 4
  %358 = call i32 (i32, i8*, ...) @device_printf(i32 %355, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %356, i32 %357)
  br label %634

359:                                              ; preds = %342
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %7, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %7, align 4
  br label %274

363:                                              ; preds = %274
  %364 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %365 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @CAS_SERDES, align 4
  %368 = and i32 %366, %367
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %514

370:                                              ; preds = %363
  %371 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %372 = bitcast %struct.cas_softc* %371 to %struct.ifnet*
  %373 = load i32, i32* @CAS_PCS_DATAPATH, align 4
  %374 = load i32, i32* @CAS_PCS_DATAPATH_MII, align 4
  %375 = call i32 @CAS_WRITE_4(%struct.ifnet* %372, i32 %373, i32 %374)
  %376 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %377 = bitcast %struct.cas_softc* %376 to %struct.ifnet*
  %378 = load i32, i32* @CAS_PCS_DATAPATH, align 4
  %379 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %380 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %381 = or i32 %379, %380
  %382 = call i32 @CAS_BARRIER(%struct.ifnet* %377, i32 %378, i32 4, i32 %381)
  %383 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %384 = bitcast %struct.cas_softc* %383 to %struct.ifnet*
  %385 = call i32 @cas_mifinit(%struct.ifnet* %384)
  %386 = load i32, i32* @ENXIO, align 4
  store i32 %386, i32* %6, align 4
  %387 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %388 = bitcast %struct.cas_softc* %387 to %struct.ifnet*
  %389 = load i32, i32* @CAS_MIF_CONF, align 4
  %390 = call i32 @CAS_READ_4(%struct.ifnet* %388, i32 %389)
  store i32 %390, i32* %8, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @CAS_MIF_CONF_MDI1, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %450

395:                                              ; preds = %370
  %396 = load i32, i32* @CAS_MIF_CONF_PHY_SELECT, align 4
  %397 = load i32, i32* %8, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %8, align 4
  %399 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %400 = bitcast %struct.cas_softc* %399 to %struct.ifnet*
  %401 = load i32, i32* @CAS_MIF_CONF, align 4
  %402 = load i32, i32* %8, align 4
  %403 = call i32 @CAS_WRITE_4(%struct.ifnet* %400, i32 %401, i32 %402)
  %404 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %405 = bitcast %struct.cas_softc* %404 to %struct.ifnet*
  %406 = load i32, i32* @CAS_MIF_CONF, align 4
  %407 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %408 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %409 = or i32 %407, %408
  %410 = call i32 @CAS_BARRIER(%struct.ifnet* %405, i32 %406, i32 4, i32 %409)
  %411 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %412 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %411, i32 0, i32 5
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @CAS_SATURN, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %436

416:                                              ; preds = %395
  %417 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %418 = bitcast %struct.cas_softc* %417 to %struct.ifnet*
  %419 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %420 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %421 = bitcast %struct.cas_softc* %420 to %struct.ifnet*
  %422 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %423 = call i32 @CAS_READ_4(%struct.ifnet* %421, i32 %422)
  %424 = load i32, i32* @CAS_SATURN_PCFG_FSI, align 4
  %425 = xor i32 %424, -1
  %426 = and i32 %423, %425
  %427 = call i32 @CAS_WRITE_4(%struct.ifnet* %418, i32 %419, i32 %426)
  %428 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %429 = bitcast %struct.cas_softc* %428 to %struct.ifnet*
  %430 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %431 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %432 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %433 = or i32 %431, %432
  %434 = call i32 @CAS_BARRIER(%struct.ifnet* %429, i32 %430, i32 4, i32 %433)
  %435 = call i32 @DELAY(i32 10000)
  br label %436

436:                                              ; preds = %416, %395
  %437 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %438 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %437, i32 0, i32 19
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %441 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %440, i32 0, i32 20
  %442 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %443 = load i32, i32* @cas_mediachange, align 4
  %444 = load i32, i32* @cas_mediastatus, align 4
  %445 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %446 = load i32, i32* @MII_PHY_ANY, align 4
  %447 = load i32, i32* @MII_OFFSET_ANY, align 4
  %448 = load i32, i32* @MIIF_DOPAUSE, align 4
  %449 = call i32 @mii_attach(i32 %439, i32* %441, %struct.ifnet* %442, i32 %443, i32 %444, i32 %445, i32 %446, i32 %447, i32 %448)
  store i32 %449, i32* %6, align 4
  br label %450

450:                                              ; preds = %436, %370
  %451 = load i32, i32* %6, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %513

453:                                              ; preds = %450
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* @CAS_MIF_CONF_MDI0, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %513

458:                                              ; preds = %453
  %459 = load i32, i32* @CAS_MIF_CONF_PHY_SELECT, align 4
  %460 = xor i32 %459, -1
  %461 = load i32, i32* %8, align 4
  %462 = and i32 %461, %460
  store i32 %462, i32* %8, align 4
  %463 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %464 = bitcast %struct.cas_softc* %463 to %struct.ifnet*
  %465 = load i32, i32* @CAS_MIF_CONF, align 4
  %466 = load i32, i32* %8, align 4
  %467 = call i32 @CAS_WRITE_4(%struct.ifnet* %464, i32 %465, i32 %466)
  %468 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %469 = bitcast %struct.cas_softc* %468 to %struct.ifnet*
  %470 = load i32, i32* @CAS_MIF_CONF, align 4
  %471 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %472 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %473 = or i32 %471, %472
  %474 = call i32 @CAS_BARRIER(%struct.ifnet* %469, i32 %470, i32 4, i32 %473)
  %475 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %476 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @CAS_SATURN, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %499

480:                                              ; preds = %458
  %481 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %482 = bitcast %struct.cas_softc* %481 to %struct.ifnet*
  %483 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %484 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %485 = bitcast %struct.cas_softc* %484 to %struct.ifnet*
  %486 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %487 = call i32 @CAS_READ_4(%struct.ifnet* %485, i32 %486)
  %488 = load i32, i32* @CAS_SATURN_PCFG_FSI, align 4
  %489 = or i32 %487, %488
  %490 = call i32 @CAS_WRITE_4(%struct.ifnet* %482, i32 %483, i32 %489)
  %491 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %492 = bitcast %struct.cas_softc* %491 to %struct.ifnet*
  %493 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %494 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %495 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %496 = or i32 %494, %495
  %497 = call i32 @CAS_BARRIER(%struct.ifnet* %492, i32 %493, i32 4, i32 %496)
  %498 = call i32 @DELAY(i32 10000)
  br label %499

499:                                              ; preds = %480, %458
  %500 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %501 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %500, i32 0, i32 19
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %504 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %503, i32 0, i32 20
  %505 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %506 = load i32, i32* @cas_mediachange, align 4
  %507 = load i32, i32* @cas_mediastatus, align 4
  %508 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %509 = load i32, i32* @MII_PHY_ANY, align 4
  %510 = load i32, i32* @MII_OFFSET_ANY, align 4
  %511 = load i32, i32* @MIIF_DOPAUSE, align 4
  %512 = call i32 @mii_attach(i32 %502, i32* %504, %struct.ifnet* %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510, i32 %511)
  store i32 %512, i32* %6, align 4
  br label %513

513:                                              ; preds = %499, %453, %450
  br label %576

514:                                              ; preds = %363
  %515 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %516 = bitcast %struct.cas_softc* %515 to %struct.ifnet*
  %517 = load i32, i32* @CAS_PCS_DATAPATH, align 4
  %518 = load i32, i32* @CAS_PCS_DATAPATH_SERDES, align 4
  %519 = call i32 @CAS_WRITE_4(%struct.ifnet* %516, i32 %517, i32 %518)
  %520 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %521 = bitcast %struct.cas_softc* %520 to %struct.ifnet*
  %522 = load i32, i32* @CAS_PCS_DATAPATH, align 4
  %523 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %524 = call i32 @CAS_BARRIER(%struct.ifnet* %521, i32 %522, i32 4, i32 %523)
  %525 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %526 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %525, i32 0, i32 5
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @CAS_SATURN, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %540

530:                                              ; preds = %514
  %531 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %532 = bitcast %struct.cas_softc* %531 to %struct.ifnet*
  %533 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %534 = call i32 @CAS_WRITE_4(%struct.ifnet* %532, i32 %533, i32 0)
  %535 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %536 = bitcast %struct.cas_softc* %535 to %struct.ifnet*
  %537 = load i32, i32* @CAS_SATURN_PCFG, align 4
  %538 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %539 = call i32 @CAS_BARRIER(%struct.ifnet* %536, i32 %537, i32 4, i32 %538)
  br label %540

540:                                              ; preds = %530, %514
  %541 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %542 = bitcast %struct.cas_softc* %541 to %struct.ifnet*
  %543 = load i32, i32* @CAS_PCS_SERDES_CTRL, align 4
  %544 = load i32, i32* @CAS_PCS_SERDES_CTRL_ESD, align 4
  %545 = call i32 @CAS_WRITE_4(%struct.ifnet* %542, i32 %543, i32 %544)
  %546 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %547 = bitcast %struct.cas_softc* %546 to %struct.ifnet*
  %548 = load i32, i32* @CAS_PCS_SERDES_CTRL, align 4
  %549 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %550 = call i32 @CAS_BARRIER(%struct.ifnet* %547, i32 %548, i32 4, i32 %549)
  %551 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %552 = bitcast %struct.cas_softc* %551 to %struct.ifnet*
  %553 = load i32, i32* @CAS_PCS_CONF, align 4
  %554 = load i32, i32* @CAS_PCS_CONF_EN, align 4
  %555 = call i32 @CAS_WRITE_4(%struct.ifnet* %552, i32 %553, i32 %554)
  %556 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %557 = bitcast %struct.cas_softc* %556 to %struct.ifnet*
  %558 = load i32, i32* @CAS_PCS_CONF, align 4
  %559 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %560 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %561 = or i32 %559, %560
  %562 = call i32 @CAS_BARRIER(%struct.ifnet* %557, i32 %558, i32 4, i32 %561)
  %563 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %564 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %563, i32 0, i32 19
  %565 = load i32, i32* %564, align 8
  %566 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %567 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %566, i32 0, i32 20
  %568 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %569 = load i32, i32* @cas_mediachange, align 4
  %570 = load i32, i32* @cas_mediastatus, align 4
  %571 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %572 = load i32, i32* @CAS_PHYAD_EXTERNAL, align 4
  %573 = load i32, i32* @MII_OFFSET_ANY, align 4
  %574 = load i32, i32* @MIIF_DOPAUSE, align 4
  %575 = call i32 @mii_attach(i32 %565, i32* %567, %struct.ifnet* %568, i32 %569, i32 %570, i32 %571, i32 %572, i32 %573, i32 %574)
  store i32 %575, i32* %6, align 4
  br label %576

576:                                              ; preds = %540, %513
  %577 = load i32, i32* %6, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %584

579:                                              ; preds = %576
  %580 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %581 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %580, i32 0, i32 19
  %582 = load i32, i32* %581, align 8
  %583 = call i32 (i32, i8*, ...) @device_printf(i32 %582, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %634

584:                                              ; preds = %576
  %585 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %586 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %585, i32 0, i32 20
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @device_get_softc(i32 %587)
  %589 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %590 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %589, i32 0, i32 21
  store i32 %588, i32* %590, align 8
  %591 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %592 = bitcast %struct.cas_softc* %591 to %struct.ifnet*
  %593 = load i32, i32* @CAS_TX_FIFO_SIZE, align 4
  %594 = call i32 @CAS_READ_4(%struct.ifnet* %592, i32 %593)
  store i32 %594, i32* %8, align 4
  %595 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %596 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %595, i32 0, i32 19
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @CAS_RX_FIFO_SIZE, align 4
  %599 = sdiv i32 %598, 1024
  %600 = load i32, i32* %8, align 4
  %601 = sdiv i32 %600, 16
  %602 = call i32 (i32, i8*, ...) @device_printf(i32 %597, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %599, i32 %601)
  %603 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %604 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %605 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %604, i32 0, i32 18
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @ether_ifattach(%struct.ifnet* %603, i32 %606)
  %608 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %609 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %608, i32 0, i32 6
  store i32 4, i32* %609, align 8
  %610 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %611 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %612 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %611, i32 0, i32 15
  store i32 %610, i32* %612, align 8
  %613 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %614 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %613, i32 0, i32 4
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @CAS_NO_CSUM, align 4
  %617 = and i32 %615, %616
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %628

619:                                              ; preds = %584
  %620 = load i32, i32* @IFCAP_HWCSUM, align 4
  %621 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %622 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %621, i32 0, i32 15
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 8
  %625 = load i32, i32* @CAS_CSUM_FEATURES, align 4
  %626 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %627 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %626, i32 0, i32 17
  store i32 %625, i32* %627, align 8
  br label %628

628:                                              ; preds = %619, %584
  %629 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %630 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %629, i32 0, i32 15
  %631 = load i32, i32* %630, align 8
  %632 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %633 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %632, i32 0, i32 16
  store i32 %631, i32* %633, align 4
  store i32 0, i32* %2, align 4
  br label %788

634:                                              ; preds = %579, %352
  store i32 0, i32* %7, align 4
  br label %635

635:                                              ; preds = %663, %634
  %636 = load i32, i32* %7, align 4
  %637 = load i32, i32* @CAS_NRXDESC, align 4
  %638 = icmp slt i32 %636, %637
  br i1 %638, label %639, label %666

639:                                              ; preds = %635
  %640 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %641 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %640, i32 0, i32 14
  %642 = load %struct.TYPE_4__*, %struct.TYPE_4__** %641, align 8
  %643 = load i32, i32* %7, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %642, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %645, i32 0, i32 1
  %647 = load i64, i64* %646, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %662

649:                                              ; preds = %639
  %650 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %651 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %650, i32 0, i32 9
  %652 = load i32, i32* %651, align 4
  %653 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %654 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %653, i32 0, i32 14
  %655 = load %struct.TYPE_4__*, %struct.TYPE_4__** %654, align 8
  %656 = load i32, i32* %7, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %655, i64 %657
  %659 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @bus_dmamap_unload(i32 %652, i32 %660)
  br label %662

662:                                              ; preds = %649, %639
  br label %663

663:                                              ; preds = %662
  %664 = load i32, i32* %7, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %7, align 4
  br label %635

666:                                              ; preds = %635
  br label %667

667:                                              ; preds = %666, %299
  store i32 0, i32* %7, align 4
  br label %668

668:                                              ; preds = %704, %667
  %669 = load i32, i32* %7, align 4
  %670 = load i32, i32* @CAS_NRXDESC, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %707

672:                                              ; preds = %668
  %673 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %674 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %673, i32 0, i32 14
  %675 = load %struct.TYPE_4__*, %struct.TYPE_4__** %674, align 8
  %676 = load i32, i32* %7, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %675, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %678, i32 0, i32 0
  %680 = load i8*, i8** %679, align 8
  %681 = icmp ne i8* %680, null
  br i1 %681, label %682, label %703

682:                                              ; preds = %672
  %683 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %684 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %683, i32 0, i32 9
  %685 = load i32, i32* %684, align 4
  %686 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %687 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %686, i32 0, i32 14
  %688 = load %struct.TYPE_4__*, %struct.TYPE_4__** %687, align 8
  %689 = load i32, i32* %7, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %688, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %691, i32 0, i32 0
  %693 = load i8*, i8** %692, align 8
  %694 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %695 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %694, i32 0, i32 14
  %696 = load %struct.TYPE_4__*, %struct.TYPE_4__** %695, align 8
  %697 = load i32, i32* %7, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %696, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %699, i32 0, i32 2
  %701 = load i32, i32* %700, align 8
  %702 = call i32 @bus_dmamem_free(i32 %685, i8* %693, i32 %701)
  br label %703

703:                                              ; preds = %682, %672
  br label %704

704:                                              ; preds = %703
  %705 = load i32, i32* %7, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %7, align 4
  br label %668

707:                                              ; preds = %668
  br label %708

708:                                              ; preds = %707, %257
  store i32 0, i32* %7, align 4
  br label %709

709:                                              ; preds = %737, %708
  %710 = load i32, i32* %7, align 4
  %711 = load i32, i32* @CAS_TXQUEUELEN, align 4
  %712 = icmp slt i32 %710, %711
  br i1 %712, label %713, label %740

713:                                              ; preds = %709
  %714 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %715 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %714, i32 0, i32 13
  %716 = load %struct.cas_txsoft*, %struct.cas_txsoft** %715, align 8
  %717 = load i32, i32* %7, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %716, i64 %718
  %720 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %719, i32 0, i32 0
  %721 = load i32*, i32** %720, align 8
  %722 = icmp ne i32* %721, null
  br i1 %722, label %723, label %736

723:                                              ; preds = %713
  %724 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %725 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %724, i32 0, i32 10
  %726 = load i32, i32* %725, align 8
  %727 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %728 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %727, i32 0, i32 13
  %729 = load %struct.cas_txsoft*, %struct.cas_txsoft** %728, align 8
  %730 = load i32, i32* %7, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %729, i64 %731
  %733 = getelementptr inbounds %struct.cas_txsoft, %struct.cas_txsoft* %732, i32 0, i32 0
  %734 = load i32*, i32** %733, align 8
  %735 = call i32 @bus_dmamap_destroy(i32 %726, i32* %734)
  br label %736

736:                                              ; preds = %723, %713
  br label %737

737:                                              ; preds = %736
  %738 = load i32, i32* %7, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %7, align 4
  br label %709

740:                                              ; preds = %709
  %741 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %742 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %741, i32 0, i32 11
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %745 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %744, i32 0, i32 12
  %746 = load i32, i32* %745, align 8
  %747 = call i32 @bus_dmamap_unload(i32 %743, i32 %746)
  br label %748

748:                                              ; preds = %740, %221
  %749 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %750 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %749, i32 0, i32 11
  %751 = load i32, i32* %750, align 4
  %752 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %753 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %752, i32 0, i32 1
  %754 = load i8*, i8** %753, align 8
  %755 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %756 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %755, i32 0, i32 12
  %757 = load i32, i32* %756, align 8
  %758 = call i32 @bus_dmamem_free(i32 %751, i8* %754, i32 %757)
  br label %759

759:                                              ; preds = %748, %193
  %760 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %761 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %760, i32 0, i32 11
  %762 = load i32, i32* %761, align 4
  %763 = call i32 @bus_dma_tag_destroy(i32 %762)
  br label %764

764:                                              ; preds = %759, %177
  %765 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %766 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %765, i32 0, i32 10
  %767 = load i32, i32* %766, align 8
  %768 = call i32 @bus_dma_tag_destroy(i32 %767)
  br label %769

769:                                              ; preds = %764, %164
  %770 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %771 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %770, i32 0, i32 9
  %772 = load i32, i32* %771, align 4
  %773 = call i32 @bus_dma_tag_destroy(i32 %772)
  br label %774

774:                                              ; preds = %769, %146
  %775 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %776 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %775, i32 0, i32 8
  %777 = load i32, i32* %776, align 8
  %778 = call i32 @bus_dma_tag_destroy(i32 %777)
  br label %779

779:                                              ; preds = %774, %132, %110
  %780 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %781 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %780, i32 0, i32 7
  %782 = load i32*, i32** %781, align 8
  %783 = call i32 @taskqueue_free(i32* %782)
  br label %784

784:                                              ; preds = %779, %93
  %785 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %786 = call i32 @if_free(%struct.ifnet* %785)
  %787 = load i32, i32* %6, align 4
  store i32 %787, i32* %2, align 4
  br label %788

788:                                              ; preds = %784, %628, %17
  %789 = load i32, i32* %2, align 4
  ret i32 %789
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ifnet*) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @cas_reset(%struct.ifnet*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cas_txsoft*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @CAS_BARRIER(%struct.ifnet*, i32, i32, i32) #1

declare dso_local i32 @cas_mifinit(%struct.ifnet*) #1

declare dso_local i32 @CAS_READ_4(%struct.ifnet*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
