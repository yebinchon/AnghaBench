; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i32, i32*, i32*, i32, i32, %struct.hifn_dma*, i32*, i32, i32, i32, i32, i8*, i8* }
%struct.hifn_dma = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"hifn driver\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PCI_VENDOR_HIFN = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7951 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7955 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7956 = common dso_local global i64 0, align 8
@HIFN_HAS_RNG = common dso_local global i32 0, align 4
@HIFN_HAS_PUBLIC = common dso_local global i32 0, align 4
@PCI_PRODUCT_HIFN_7811 = common dso_local global i64 0, align 8
@HIFN_IS_7811 = common dso_local global i32 0, align 4
@HIFN_IS_7956 = common dso_local global i32 0, align 4
@HIFN_HAS_AES = common dso_local global i32 0, align 4
@HIFN_BAR0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot map bar%d register space\0A\00", align 1
@HIFN_BAR1 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@HIFN_MAX_DMALEN = common dso_local global i32 0, align 4
@MAX_SCATTER = common dso_local global i32 0, align 4
@HIFN_MAX_SEGLEN = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot allocate DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot create dma map\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot alloc dma buffer\0A\00", align 1
@hifn_dmamap_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot load dma map\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"hifn_attach: null bar0 tag!\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"hifn_attach: null bar0 handle!\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"hifn_attach: null bar1 tag!\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"hifn_attach: null bar1 handle!\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"crypto enabling failed\0A\00", align 1
@PCI_VENDOR_NETSEC = common dso_local global i64 0, align 8
@PCI_PRODUCT_NETSEC_7751 = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"could not map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hifn_intr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@HIFN_1_REVID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"%s, rev %u, %d%cB %cram\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c", pll=0x%x<%s clk, %ux mult>\00", align 1
@HIFN_PLL_REF_SEL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@HIFN_PLL_ND = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"could not get crypto driver id\0A\00", align 1
@HIFN_0_PUCNFG = common dso_local global i32 0, align 4
@HIFN_PUCNFG_CHIPID = common dso_local global i32 0, align 4
@HIFN_0_PUSTAT = common dso_local global i32 0, align 4
@HIFN_PUSTAT_CHIPENA = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_ARC4 = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_MD5 = common dso_local global i32 0, align 4
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@hifn_tick = common dso_local global i32 0, align 4
@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hifn_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hifn_softc*, align 8
  %5 = alloca %struct.hifn_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.hifn_softc* @device_get_softc(i32 %11)
  store %struct.hifn_softc* %12, %struct.hifn_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %15 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %14, i32 0, i32 18
  store i32 %13, i32* %15, align 8
  %16 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %16, i32 0, i32 9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %17, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @pci_get_vendor(i32 %22)
  %24 = load i64, i64* @PCI_VENDOR_HIFN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_get_device(i32 %27)
  %29 = load i64, i64* @PCI_PRODUCT_HIFN_7951, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @pci_get_device(i32 %32)
  %34 = load i64, i64* @PCI_PRODUCT_HIFN_7955, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @pci_get_device(i32 %37)
  %39 = load i64, i64* @PCI_PRODUCT_HIFN_7956, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36, %31, %26
  %42 = load i32, i32* @HIFN_HAS_RNG, align 4
  %43 = load i32, i32* @HIFN_HAS_PUBLIC, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %46 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %36, %1
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @pci_get_vendor(i32 %48)
  %50 = load i64, i64* @PCI_VENDOR_HIFN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @pci_get_device(i32 %53)
  %55 = load i64, i64* @PCI_PRODUCT_HIFN_7811, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @HIFN_IS_7811, align 4
  %59 = load i32, i32* @HIFN_HAS_RNG, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %62 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %52, %47
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @pci_get_vendor(i32 %66)
  %68 = load i64, i64* @PCI_VENDOR_HIFN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = call i64 @pci_get_device(i32 %71)
  %73 = load i64, i64* @PCI_PRODUCT_HIFN_7955, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @pci_get_device(i32 %76)
  %78 = load i64, i64* @PCI_PRODUCT_HIFN_7956, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @HIFN_IS_7956, align 4
  %82 = load i32, i32* @HIFN_HAS_AES, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %85 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %90 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %89, i32 0, i32 1
  %91 = call i32 @hifn_getpllconfig(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %80, %75, %65
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @pci_enable_busmaster(i32 %93)
  %95 = load i32, i32* @HIFN_BAR0, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @SYS_RES_MEMORY, align 4
  %98 = load i32, i32* @RF_ACTIVE, align 4
  %99 = call i8* @bus_alloc_resource_any(i32 %96, i32 %97, i32* %7, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %102 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %101, i32 0, i32 10
  store i32* %100, i32** %102, align 8
  %103 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %104 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %606

110:                                              ; preds = %92
  %111 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %112 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @rman_get_bustag(i32* %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %117 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %119 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %118, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* @rman_get_bushandle(i32* %120)
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %124 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %125, i32 0, i32 21
  store i8* inttoptr (i64 -1 to i8*), i8** %126, align 8
  %127 = load i32, i32* @HIFN_BAR1, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @SYS_RES_MEMORY, align 4
  %130 = load i32, i32* @RF_ACTIVE, align 4
  %131 = call i8* @bus_alloc_resource_any(i32 %128, i32 %129, i32* %7, i32 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %134 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %133, i32 0, i32 11
  store i32* %132, i32** %134, align 8
  %135 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %136 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %135, i32 0, i32 11
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %110
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %598

142:                                              ; preds = %110
  %143 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %144 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %143, i32 0, i32 11
  %145 = load i32*, i32** %144, align 8
  %146 = call i8* @rman_get_bustag(i32* %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %149 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %151 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = call i8* @rman_get_bushandle(i32* %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %156 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  %157 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %158 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %157, i32 0, i32 20
  store i8* inttoptr (i64 -1 to i8*), i8** %158, align 8
  %159 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %160 = call i32 @hifn_set_retry(%struct.hifn_softc* %159)
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @bus_get_dma_tag(i32 %161)
  %163 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %164 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %165 = load i32, i32* @HIFN_MAX_DMALEN, align 4
  %166 = load i32, i32* @MAX_SCATTER, align 4
  %167 = load i32, i32* @HIFN_MAX_SEGLEN, align 4
  %168 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %169 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %170 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %169, i32 0, i32 12
  %171 = call i64 @bus_dma_tag_create(i32 %162, i32 1, i32 0, i32 %163, i32 %164, i32* null, i32* null, i32 %165, i32 %166, i32 %167, i32 %168, i32* null, i32* null, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %142
  %174 = load i32, i32* %3, align 4
  %175 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %590

176:                                              ; preds = %142
  %177 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %178 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %181 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %182 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %181, i32 0, i32 13
  %183 = call i64 @bus_dmamap_create(i32 %179, i32 %180, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load i32, i32* %3, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %188 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %189 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @bus_dma_tag_destroy(i32 %190)
  br label %590

192:                                              ; preds = %176
  %193 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %194 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 8
  %196 = bitcast %struct.hifn_dma** %5 to i8**
  %197 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %198 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %199 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %198, i32 0, i32 13
  %200 = call i64 @bus_dmamem_alloc(i32 %195, i8** %196, i32 %197, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %192
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %205 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %206 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %209 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %208, i32 0, i32 13
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @bus_dmamap_destroy(i32 %207, i32 %210)
  %212 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %213 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %212, i32 0, i32 12
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @bus_dma_tag_destroy(i32 %214)
  br label %590

216:                                              ; preds = %192
  %217 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %218 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %221 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %224 = load i32, i32* @hifn_dmamap_cb, align 4
  %225 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %226 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %225, i32 0, i32 19
  %227 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %228 = call i64 @bus_dmamap_load(i32 %219, i32 %222, %struct.hifn_dma* %223, i32 4, i32 %224, i32* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %216
  %231 = load i32, i32* %3, align 4
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %233 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %234 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %233, i32 0, i32 12
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %237 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %238 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %237, i32 0, i32 13
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @bus_dmamem_free(i32 %235, %struct.hifn_dma* %236, i32 %239)
  %241 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %242 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %241, i32 0, i32 12
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @bus_dma_tag_destroy(i32 %243)
  br label %590

245:                                              ; preds = %216
  %246 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %247 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %248 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %247, i32 0, i32 14
  store %struct.hifn_dma* %246, %struct.hifn_dma** %248, align 8
  %249 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %250 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %249, i32 0, i32 14
  %251 = load %struct.hifn_dma*, %struct.hifn_dma** %250, align 8
  %252 = call i32 @bzero(%struct.hifn_dma* %251, i32 4)
  %253 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %254 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i32
  %258 = call i32 @KASSERT(i32 %257, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %259 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %260 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 @KASSERT(i32 %263, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %265 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %266 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i32 @KASSERT(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %271 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %272 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i32
  %276 = call i32 @KASSERT(i32 %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %277 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %278 = call i32 @hifn_reset_board(%struct.hifn_softc* %277, i32 0)
  %279 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %280 = call i64 @hifn_enable_crypto(%struct.hifn_softc* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %245
  %283 = load i32, i32* %3, align 4
  %284 = call i32 (i32, i8*, ...) @device_printf(i32 %283, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %560

285:                                              ; preds = %245
  %286 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %287 = call i32 @hifn_reset_puc(%struct.hifn_softc* %286)
  %288 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %289 = call i32 @hifn_init_dma(%struct.hifn_softc* %288)
  %290 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %291 = call i32 @hifn_init_pci_registers(%struct.hifn_softc* %290)
  %292 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %293 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @HIFN_IS_7956, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %285
  %299 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %300 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %299, i32 0, i32 6
  store i32 1, i32* %300, align 8
  br label %307

301:                                              ; preds = %285
  %302 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %303 = call i64 @hifn_ramtype(%struct.hifn_softc* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  br label %560

306:                                              ; preds = %301
  br label %307

307:                                              ; preds = %306, %298
  %308 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %309 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %314 = call i32 @hifn_sramsize(%struct.hifn_softc* %313)
  br label %318

315:                                              ; preds = %307
  %316 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %317 = call i32 @hifn_dramsize(%struct.hifn_softc* %316)
  br label %318

318:                                              ; preds = %315, %312
  %319 = load i32, i32* %3, align 4
  %320 = call i64 @pci_get_vendor(i32 %319)
  %321 = load i64, i64* @PCI_VENDOR_NETSEC, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %337

323:                                              ; preds = %318
  %324 = load i32, i32* %3, align 4
  %325 = call i64 @pci_get_device(i32 %324)
  %326 = load i64, i64* @PCI_PRODUCT_NETSEC_7751, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %323
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @pci_get_revid(i32 %329)
  %331 = icmp eq i32 %330, 97
  br i1 %331, label %332, label %337

332:                                              ; preds = %328
  %333 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %334 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = ashr i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %332, %328, %323, %318
  store i32 0, i32* %7, align 4
  %338 = load i32, i32* %3, align 4
  %339 = load i32, i32* @SYS_RES_IRQ, align 4
  %340 = load i32, i32* @RF_SHAREABLE, align 4
  %341 = load i32, i32* @RF_ACTIVE, align 4
  %342 = or i32 %340, %341
  %343 = call i8* @bus_alloc_resource_any(i32 %338, i32 %339, i32* %7, i32 %342)
  %344 = bitcast i8* %343 to i32*
  %345 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %346 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %345, i32 0, i32 15
  store i32* %344, i32** %346, align 8
  %347 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %348 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %347, i32 0, i32 15
  %349 = load i32*, i32** %348, align 8
  %350 = icmp eq i32* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %337
  %352 = load i32, i32* %3, align 4
  %353 = call i32 (i32, i8*, ...) @device_printf(i32 %352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %560

354:                                              ; preds = %337
  %355 = load i32, i32* %3, align 4
  %356 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %357 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %356, i32 0, i32 15
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* @INTR_TYPE_NET, align 4
  %360 = load i32, i32* @INTR_MPSAFE, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @hifn_intr, align 4
  %363 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %364 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %365 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %364, i32 0, i32 16
  %366 = call i64 @bus_setup_intr(i32 %355, i32* %358, i32 %361, i32* null, i32 %362, %struct.hifn_softc* %363, i32* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %354
  %369 = load i32, i32* %3, align 4
  %370 = call i32 (i32, i8*, ...) @device_printf(i32 %369, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %553

371:                                              ; preds = %354
  %372 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %373 = call i32 @hifn_sessions(%struct.hifn_softc* %372)
  %374 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %375 = load i32, i32* @HIFN_1_REVID, align 4
  %376 = call i32 @READ_REG_1(%struct.hifn_softc* %374, i32 %375)
  %377 = and i32 %376, 65535
  store i32 %377, i32* %10, align 4
  %378 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %379 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 4
  %381 = sdiv i32 %380, 1024
  store i32 %381, i32* %6, align 4
  store i8 75, i8* %8, align 1
  %382 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %383 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 4
  %385 = icmp sge i32 %384, 1048576
  br i1 %385, label %386, label %389

386:                                              ; preds = %371
  store i8 77, i8* %8, align 1
  %387 = load i32, i32* %6, align 4
  %388 = sdiv i32 %387, 1024
  store i32 %388, i32* %6, align 4
  br label %389

389:                                              ; preds = %386, %371
  %390 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %391 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %390, i32 0, i32 18
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %394 = call i32 @hifn_partname(%struct.hifn_softc* %393)
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %6, align 4
  %397 = load i8, i8* %8, align 1
  %398 = sext i8 %397 to i32
  %399 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %400 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 100, i32 115
  %405 = call i32 (i32, i8*, ...) @device_printf(i32 %392, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %394, i32 %395, i32 %396, i32 %398, i32 %404)
  %406 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %407 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @HIFN_IS_7956, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %433

412:                                              ; preds = %389
  %413 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %414 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %417 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @HIFN_PLL_REF_SEL, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %424 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %425 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @HIFN_PLL_ND, align 4
  %428 = and i32 %426, %427
  %429 = ashr i32 %428, 11
  %430 = mul nsw i32 2, %429
  %431 = add nsw i32 2, %430
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %415, i8* %423, i32 %431)
  br label %433

433:                                              ; preds = %412, %389
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %435 = load i32, i32* %3, align 4
  %436 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %437 = call i64 @crypto_get_driverid(i32 %435, i32 4, i32 %436)
  %438 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %439 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %438, i32 0, i32 8
  store i64 %437, i64* %439, align 8
  %440 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %441 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %440, i32 0, i32 8
  %442 = load i64, i64* %441, align 8
  %443 = icmp slt i64 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %433
  %445 = load i32, i32* %3, align 4
  %446 = call i32 (i32, i8*, ...) @device_printf(i32 %445, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %544

447:                                              ; preds = %433
  %448 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %449 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %450 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %451 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %452 = call i32 @READ_REG_0(%struct.hifn_softc* %450, i32 %451)
  %453 = load i32, i32* @HIFN_PUCNFG_CHIPID, align 4
  %454 = or i32 %452, %453
  %455 = call i32 @WRITE_REG_0(%struct.hifn_softc* %448, i32 %449, i32 %454)
  %456 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %457 = load i32, i32* @HIFN_0_PUSTAT, align 4
  %458 = call i32 @READ_REG_0(%struct.hifn_softc* %456, i32 %457)
  %459 = load i32, i32* @HIFN_PUSTAT_CHIPENA, align 4
  %460 = and i32 %458, %459
  store i32 %460, i32* %9, align 4
  %461 = load i32, i32* %9, align 4
  switch i32 %461, label %512 [
    i32 128, label %462
    i32 129, label %486
  ]

462:                                              ; preds = %447
  %463 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %464 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %463, i32 0, i32 8
  %465 = load i64, i64* %464, align 8
  %466 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %467 = call i32 @crypto_register(i64 %465, i32 %466, i32 0, i32 0)
  %468 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %469 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %468, i32 0, i32 8
  %470 = load i64, i64* %469, align 8
  %471 = load i32, i32* @CRYPTO_ARC4, align 4
  %472 = call i32 @crypto_register(i64 %470, i32 %471, i32 0, i32 0)
  %473 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %474 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @HIFN_HAS_AES, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %462
  %480 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %481 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %480, i32 0, i32 8
  %482 = load i64, i64* %481, align 8
  %483 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %484 = call i32 @crypto_register(i64 %482, i32 %483, i32 0, i32 0)
  br label %485

485:                                              ; preds = %479, %462
  br label %486

486:                                              ; preds = %447, %485
  %487 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %488 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %487, i32 0, i32 8
  %489 = load i64, i64* %488, align 8
  %490 = load i32, i32* @CRYPTO_MD5, align 4
  %491 = call i32 @crypto_register(i64 %489, i32 %490, i32 0, i32 0)
  %492 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %493 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %492, i32 0, i32 8
  %494 = load i64, i64* %493, align 8
  %495 = load i32, i32* @CRYPTO_SHA1, align 4
  %496 = call i32 @crypto_register(i64 %494, i32 %495, i32 0, i32 0)
  %497 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %498 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %497, i32 0, i32 8
  %499 = load i64, i64* %498, align 8
  %500 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %501 = call i32 @crypto_register(i64 %499, i32 %500, i32 0, i32 0)
  %502 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %503 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %502, i32 0, i32 8
  %504 = load i64, i64* %503, align 8
  %505 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %506 = call i32 @crypto_register(i64 %504, i32 %505, i32 0, i32 0)
  %507 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %508 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %507, i32 0, i32 8
  %509 = load i64, i64* %508, align 8
  %510 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %511 = call i32 @crypto_register(i64 %509, i32 %510, i32 0, i32 0)
  br label %512

512:                                              ; preds = %447, %486
  %513 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %514 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %513, i32 0, i32 12
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %517 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %516, i32 0, i32 13
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %520 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %521 = or i32 %519, %520
  %522 = call i32 @bus_dmamap_sync(i32 %515, i32 %518, i32 %521)
  %523 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %524 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @HIFN_HAS_PUBLIC, align 4
  %527 = load i32, i32* @HIFN_HAS_RNG, align 4
  %528 = or i32 %526, %527
  %529 = and i32 %525, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %512
  %532 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %533 = call i32 @hifn_init_pubrng(%struct.hifn_softc* %532)
  br label %534

534:                                              ; preds = %531, %512
  %535 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %536 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %535, i32 0, i32 17
  %537 = call i32 @callout_init(i32* %536, i32 1)
  %538 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %539 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %538, i32 0, i32 17
  %540 = load i32, i32* @hz, align 4
  %541 = load i32, i32* @hifn_tick, align 4
  %542 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %543 = call i32 @callout_reset(i32* %539, i32 %540, i32 %541, %struct.hifn_softc* %542)
  store i32 0, i32* %2, align 4
  br label %611

544:                                              ; preds = %444
  %545 = load i32, i32* %3, align 4
  %546 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %547 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %546, i32 0, i32 15
  %548 = load i32*, i32** %547, align 8
  %549 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %550 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %549, i32 0, i32 16
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @bus_teardown_intr(i32 %545, i32* %548, i32 %551)
  br label %553

553:                                              ; preds = %544, %368
  %554 = load i32, i32* %3, align 4
  %555 = load i32, i32* @SYS_RES_IRQ, align 4
  %556 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %557 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %556, i32 0, i32 15
  %558 = load i32*, i32** %557, align 8
  %559 = call i32 @bus_release_resource(i32 %554, i32 %555, i32 0, i32* %558)
  br label %560

560:                                              ; preds = %553, %351, %305, %282
  %561 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %562 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %561, i32 0, i32 12
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %565 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %564, i32 0, i32 13
  %566 = load i32, i32* %565, align 4
  %567 = call i32 @bus_dmamap_unload(i32 %563, i32 %566)
  %568 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %569 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %568, i32 0, i32 12
  %570 = load i32, i32* %569, align 8
  %571 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %572 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %571, i32 0, i32 14
  %573 = load %struct.hifn_dma*, %struct.hifn_dma** %572, align 8
  %574 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %575 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %574, i32 0, i32 13
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @bus_dmamem_free(i32 %570, %struct.hifn_dma* %573, i32 %576)
  %578 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %579 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %578, i32 0, i32 12
  %580 = load i32, i32* %579, align 8
  %581 = call i32 @bus_dma_tag_destroy(i32 %580)
  %582 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %583 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %584 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %585 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %586 = or i32 %584, %585
  %587 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %588 = or i32 %586, %587
  %589 = call i32 @WRITE_REG_1(%struct.hifn_softc* %582, i32 %583, i32 %588)
  br label %590

590:                                              ; preds = %560, %230, %202, %185, %173
  %591 = load i32, i32* %3, align 4
  %592 = load i32, i32* @SYS_RES_MEMORY, align 4
  %593 = load i32, i32* @HIFN_BAR1, align 4
  %594 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %595 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %594, i32 0, i32 11
  %596 = load i32*, i32** %595, align 8
  %597 = call i32 @bus_release_resource(i32 %591, i32 %592, i32 %593, i32* %596)
  br label %598

598:                                              ; preds = %590, %139
  %599 = load i32, i32* %3, align 4
  %600 = load i32, i32* @SYS_RES_MEMORY, align 4
  %601 = load i32, i32* @HIFN_BAR0, align 4
  %602 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %603 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %602, i32 0, i32 10
  %604 = load i32*, i32** %603, align 8
  %605 = call i32 @bus_release_resource(i32 %599, i32 %600, i32 %601, i32* %604)
  br label %606

606:                                              ; preds = %598, %107
  %607 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %608 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %607, i32 0, i32 9
  %609 = call i32 @mtx_destroy(i32* %608)
  %610 = load i32, i32* @ENXIO, align 4
  store i32 %610, i32* %2, align 4
  br label %611

611:                                              ; preds = %606, %534
  %612 = load i32, i32* %2, align 4
  ret i32 %612
}

declare dso_local %struct.hifn_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @hifn_getpllconfig(i32, i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i32 @hifn_set_retry(%struct.hifn_softc*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, %struct.hifn_dma*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, %struct.hifn_dma*, i32) #1

declare dso_local i32 @bzero(%struct.hifn_dma*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hifn_reset_board(%struct.hifn_softc*, i32) #1

declare dso_local i64 @hifn_enable_crypto(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_reset_puc(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_init_dma(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_init_pci_registers(%struct.hifn_softc*) #1

declare dso_local i64 @hifn_ramtype(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_sramsize(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_dramsize(%struct.hifn_softc*) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.hifn_softc*, i32*) #1

declare dso_local i32 @hifn_sessions(%struct.hifn_softc*) #1

declare dso_local i32 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @hifn_partname(%struct.hifn_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @WRITE_REG_0(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @READ_REG_0(%struct.hifn_softc*, i32) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @hifn_init_pubrng(%struct.hifn_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.hifn_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
