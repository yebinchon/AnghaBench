; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i64, i32, i32, i64, i32, i32, i8*, i32, %struct.ifnet*, i32*, i32**, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32*, i32, i32, i64 }
%struct.ifnet = type { i32, i32, i32, i32*, %struct.TYPE_9__, i32, i32, i32, i32, i32, %struct.ffec_softc* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@FECTYPE_MASK = common dso_local global i64 0, align 8
@FECFLAG_AVB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Impossible: Can't find ofw bus node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MII_CONTYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"No valid 'phy-mode' property found in FDT data for device.\0A\00", align 1
@ENOATTR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"could not allocate memory resources.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@irq_res_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"could not allocate interrupt resources\0A\00", align 1
@FEC_DESC_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not create TX ring DMA tag.\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"could not allocate TX descriptor ring.\0A\00", align 1
@ffec_get1paddr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"could not load TX descriptor ring map.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"could not create TX buffer DMA map.\0A\00", align 1
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"could not create RX ring DMA tag.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"could not allocate RX descriptor ring.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"could not load RX descriptor ring map.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"could not create RX buf DMA tag.\0A\00", align 1
@RX_DESC_COUNT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [37 x i8] c"could not create RX buffer DMA map.\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Could not alloc mbuf\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"could not create new RX buffer.\0A\00", align 1
@FEC_ECR_REG = common dso_local global i32 0, align 4
@FEC_ECR_RESET = common dso_local global i64 0, align 8
@MAX_IRQ_COUNT = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ffec_intr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"could not setup interrupt handler.\0A\00", align 1
@FEC_MSCR_MII_SPEED_SHIFT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"phy-disable-preamble\00", align 1
@FEC_MSCR_DIS_PRE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"PHY preamble disabled\0A\00", align 1
@FEC_MSCR_REG = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@ffec_txstart = common dso_local global i32 0, align 4
@ffec_ioctl = common dso_local global i32 0, align 4
@ffec_init = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@ffec_media_change = common dso_local global i32 0, align 4
@ffec_media_status = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@FECTYPE_MVF = common dso_local global i32 0, align 4
@MIIF_FORCEANEG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"PHY attach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ffec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.ifnet* null, %struct.ifnet** %4, align 8
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %15, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %16, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i8* @device_get_softc(i32 %21)
  %23 = bitcast i8* %22 to %struct.ffec_softc*
  store %struct.ffec_softc* %23, %struct.ffec_softc** %3, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %28 = call i32 @FFEC_LOCK_INIT(%struct.ffec_softc* %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @compat_data, align 4
  %31 = call %struct.TYPE_8__* @ofw_bus_search_compatible(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @FECTYPE_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %37, i32 0, i32 27
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @FECTYPE_MASK, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @FECFLAG_AVB, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %47, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %53, i32 0, i32 1
  store i32 64, i32* %54, align 8
  %55 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  br label %62

57:                                               ; preds = %1
  %58 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %58, i32 0, i32 1
  store i32 16, i32* %59, align 8
  %60 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %60, i32 0, i32 2
  store i32 16, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @ofw_bus_get_node(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %11, align 4
  br label %540

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @mii_fdt_get_contype(i32 %71)
  %73 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MII_CONTYPE_UNKNOWN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ENOATTR, align 4
  store i32 %85, i32* %11, align 4
  br label %540

86:                                               ; preds = %70
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %87, i32 0, i32 26
  %89 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %89, i32 0, i32 25
  %91 = call i32 @callout_init_mtx(i32* %88, i32* %90, i32 0)
  store i32 0, i32* %13, align 4
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @SYS_RES_MEMORY, align 4
  %94 = load i32, i32* @RF_ACTIVE, align 4
  %95 = call i32* @bus_alloc_resource_any(i32 %92, i32 %93, i32* %13, i32 %94)
  %96 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %96, i32 0, i32 24
  store i32* %95, i32** %97, align 8
  %98 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %98, i32 0, i32 24
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %86
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  store i32 %105, i32* %11, align 4
  br label %540

106:                                              ; preds = %86
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @irq_res_spec, align 4
  %109 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %109, i32 0, i32 10
  %111 = load i32**, i32*** %110, align 8
  %112 = call i32 @bus_alloc_resources(i32 %107, i32 %108, i32** %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %540

118:                                              ; preds = %106
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @bus_get_dma_tag(i32 %119)
  %121 = load i32, i32* @FEC_DESC_RING_ALIGN, align 4
  %122 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %123 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %124 = load i32, i32* @TX_DESC_SIZE, align 4
  %125 = load i32, i32* @TX_DESC_SIZE, align 4
  %126 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %126, i32 0, i32 23
  %128 = call i32 @bus_dma_tag_create(i32 %120, i32 %121, i32 0, i32 %122, i32 %123, i32* null, i32* null, i32 %124, i32 1, i32 %125, i32 0, i32* null, i32* null, i32* %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %540

136:                                              ; preds = %118
  %137 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %137, i32 0, i32 23
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %140, i32 0, i32 21
  %142 = bitcast i32* %141 to i8**
  %143 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %144 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @BUS_DMA_ZERO, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %148, i32 0, i32 22
  %150 = call i32 @bus_dmamem_alloc(i32 %139, i8** %142, i32 %147, i32* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %136
  %154 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %540

158:                                              ; preds = %136
  %159 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %159, i32 0, i32 23
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %162, i32 0, i32 22
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %166 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %165, i32 0, i32 21
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TX_DESC_SIZE, align 4
  %169 = load i32, i32* @ffec_get1paddr, align 4
  %170 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %171 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %170, i32 0, i32 20
  %172 = call i32 @bus_dmamap_load(i32 %161, i32 %164, i32 %167, i32 %168, i32 %169, i32* %171, i32 0)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %158
  %176 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %177 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %540

180:                                              ; preds = %158
  %181 = load i32, i32* %2, align 4
  %182 = call i32 @bus_get_dma_tag(i32 %181)
  %183 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %187 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %188 = load i32, i32* @MCLBYTES, align 4
  %189 = load i32, i32* @MCLBYTES, align 4
  %190 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %190, i32 0, i32 19
  %192 = call i32 @bus_dma_tag_create(i32 %182, i32 %185, i32 0, i32 %186, i32 %187, i32* null, i32* null, i32 %188, i32 1, i32 %189, i32 0, i32* null, i32* null, i32* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %180
  %196 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @device_printf(i32 %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %540

200:                                              ; preds = %180
  store i64 0, i64* %9, align 8
  br label %201

201:                                              ; preds = %227, %200
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* @TX_DESC_COUNT, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %230

205:                                              ; preds = %201
  %206 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %207 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %206, i32 0, i32 19
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %209, i32 0, i32 18
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = call i32 @bus_dmamap_create(i32 %208, i32 0, i32* %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %205
  %219 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %219, i32 0, i32 11
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @device_printf(i32 %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %540

223:                                              ; preds = %205
  %224 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @ffec_setup_txdesc(%struct.ffec_softc* %224, i64 %225, i32 0, i32 0)
  br label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %9, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %9, align 8
  br label %201

230:                                              ; preds = %201
  %231 = load i32, i32* %2, align 4
  %232 = call i32 @bus_get_dma_tag(i32 %231)
  %233 = load i32, i32* @FEC_DESC_RING_ALIGN, align 4
  %234 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %235 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %236 = load i32, i32* @RX_DESC_SIZE, align 4
  %237 = load i32, i32* @RX_DESC_SIZE, align 4
  %238 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %239 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %238, i32 0, i32 17
  %240 = call i32 @bus_dma_tag_create(i32 %232, i32 %233, i32 0, i32 %234, i32 %235, i32* null, i32* null, i32 %236, i32 1, i32 %237, i32 0, i32* null, i32* null, i32* %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %230
  %244 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %245 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %244, i32 0, i32 11
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @device_printf(i32 %246, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %540

248:                                              ; preds = %230
  %249 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %250 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %249, i32 0, i32 17
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %253 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %252, i32 0, i32 15
  %254 = bitcast i32* %253 to i8**
  %255 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %256 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @BUS_DMA_ZERO, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %261 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %260, i32 0, i32 16
  %262 = call i32 @bus_dmamem_alloc(i32 %251, i8** %254, i32 %259, i32* %261)
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %248
  %266 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %267 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %266, i32 0, i32 11
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @device_printf(i32 %268, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %540

270:                                              ; preds = %248
  %271 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %272 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %271, i32 0, i32 17
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %275 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %274, i32 0, i32 16
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %278 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %277, i32 0, i32 15
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @RX_DESC_SIZE, align 4
  %281 = load i32, i32* @ffec_get1paddr, align 4
  %282 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %283 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %282, i32 0, i32 14
  %284 = call i32 @bus_dmamap_load(i32 %273, i32 %276, i32 %279, i32 %280, i32 %281, i32* %283, i32 0)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %270
  %288 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %289 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %288, i32 0, i32 11
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @device_printf(i32 %290, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %540

292:                                              ; preds = %270
  %293 = load i32, i32* %2, align 4
  %294 = call i32 @bus_get_dma_tag(i32 %293)
  %295 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %296 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %297 = load i32, i32* @MCLBYTES, align 4
  %298 = load i32, i32* @MCLBYTES, align 4
  %299 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %300 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %299, i32 0, i32 13
  %301 = call i32 @bus_dma_tag_create(i32 %294, i32 1, i32 0, i32 %295, i32 %296, i32* null, i32* null, i32 %297, i32 1, i32 %298, i32 0, i32* null, i32* null, i32* %300)
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %292
  %305 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %306 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %305, i32 0, i32 11
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @device_printf(i32 %307, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %540

309:                                              ; preds = %292
  store i64 0, i64* %9, align 8
  br label %310

310:                                              ; preds = %352, %309
  %311 = load i64, i64* %9, align 8
  %312 = load i64, i64* @RX_DESC_COUNT, align 8
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %355

314:                                              ; preds = %310
  %315 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %316 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %315, i32 0, i32 13
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %319 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %318, i32 0, i32 12
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = load i64, i64* %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = call i32 @bus_dmamap_create(i32 %317, i32 0, i32* %323)
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %11, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %314
  %328 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %329 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %328, i32 0, i32 11
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @device_printf(i32 %330, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %540

332:                                              ; preds = %314
  %333 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %334 = call %struct.mbuf* @ffec_alloc_mbufcl(%struct.ffec_softc* %333)
  store %struct.mbuf* %334, %struct.mbuf** %5, align 8
  %335 = icmp eq %struct.mbuf* %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load i32, i32* %2, align 4
  %338 = call i32 @device_printf(i32 %337, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %339 = load i32, i32* @ENOMEM, align 4
  store i32 %339, i32* %11, align 4
  br label %540

340:                                              ; preds = %332
  %341 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %342 = load i64, i64* %9, align 8
  %343 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %344 = call i32 @ffec_setup_rxbuf(%struct.ffec_softc* %341, i64 %342, %struct.mbuf* %343)
  store i32 %344, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %340
  %347 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %348 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %347, i32 0, i32 11
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %540

351:                                              ; preds = %340
  br label %352

352:                                              ; preds = %351
  %353 = load i64, i64* %9, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %9, align 8
  br label %310

355:                                              ; preds = %310
  %356 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %357 = call i32 @ffec_get_hwaddr(%struct.ffec_softc* %356, i64* %20)
  %358 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %359 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @FECFLAG_AVB, align 4
  %362 = sext i32 %361 to i64
  %363 = and i64 %360, %362
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %355
  %366 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %367 = load i32, i32* @FEC_ECR_REG, align 4
  %368 = call i32 @WR4(%struct.ffec_softc* %366, i32 %367, i64 0)
  br label %374

369:                                              ; preds = %355
  %370 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %371 = load i32, i32* @FEC_ECR_REG, align 4
  %372 = load i64, i64* @FEC_ECR_RESET, align 8
  %373 = call i32 @WR4(%struct.ffec_softc* %370, i32 %371, i64 %372)
  br label %374

374:                                              ; preds = %369, %365
  store i32 0, i32* %14, align 4
  br label %375

375:                                              ; preds = %416, %374
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* @MAX_IRQ_COUNT, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %419

379:                                              ; preds = %375
  %380 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %381 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %380, i32 0, i32 10
  %382 = load i32**, i32*** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = icmp ne i32* %386, null
  br i1 %387, label %388, label %415

388:                                              ; preds = %379
  %389 = load i32, i32* %2, align 4
  %390 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %391 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %390, i32 0, i32 10
  %392 = load i32**, i32*** %391, align 8
  %393 = load i32, i32* %14, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* @INTR_TYPE_NET, align 4
  %398 = load i32, i32* @INTR_MPSAFE, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @ffec_intr, align 4
  %401 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %402 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %403 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %402, i32 0, i32 9
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %14, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = call i32 @bus_setup_intr(i32 %389, i32* %396, i32 %399, i32* null, i32 %400, %struct.ffec_softc* %401, i32* %407)
  store i32 %408, i32* %11, align 4
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %388
  %412 = load i32, i32* %2, align 4
  %413 = call i32 @device_printf(i32 %412, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %540

414:                                              ; preds = %388
  br label %415

415:                                              ; preds = %414, %379
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %14, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %14, align 4
  br label %375

419:                                              ; preds = %375
  %420 = load i32, i32* @FEC_MSCR_MII_SPEED_SHIFT, align 4
  %421 = shl i32 13, %420
  %422 = sext i32 %421 to i64
  store i64 %422, i64* %10, align 8
  %423 = load i32, i32* %8, align 4
  %424 = call i64 @OF_hasprop(i32 %423, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %436

426:                                              ; preds = %419
  %427 = load i64, i64* @FEC_MSCR_DIS_PRE, align 8
  %428 = load i64, i64* %10, align 8
  %429 = or i64 %428, %427
  store i64 %429, i64* %10, align 8
  %430 = load i64, i64* @bootverbose, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load i32, i32* %2, align 4
  %434 = call i32 @device_printf(i32 %433, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  br label %435

435:                                              ; preds = %432, %426
  br label %436

436:                                              ; preds = %435, %419
  %437 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %438 = load i32, i32* @FEC_MSCR_REG, align 4
  %439 = load i64, i64* %10, align 8
  %440 = call i32 @WR4(%struct.ffec_softc* %437, i32 %438, i64 %439)
  %441 = load i32, i32* @IFT_ETHER, align 4
  %442 = call %struct.ifnet* @if_alloc(i32 %441)
  store %struct.ifnet* %442, %struct.ifnet** %4, align 8
  %443 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %444 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %443, i32 0, i32 8
  store %struct.ifnet* %442, %struct.ifnet** %444, align 8
  %445 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %446 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %447 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %446, i32 0, i32 10
  store %struct.ffec_softc* %445, %struct.ffec_softc** %447, align 8
  %448 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %449 = load i32, i32* %2, align 4
  %450 = call i32 @device_get_name(i32 %449)
  %451 = load i32, i32* %2, align 4
  %452 = call i32 @device_get_unit(i32 %451)
  %453 = call i32 @if_initname(%struct.ifnet* %448, i32 %450, i32 %452)
  %454 = load i32, i32* @IFF_BROADCAST, align 4
  %455 = load i32, i32* @IFF_SIMPLEX, align 4
  %456 = or i32 %454, %455
  %457 = load i32, i32* @IFF_MULTICAST, align 4
  %458 = or i32 %456, %457
  %459 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %460 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %459, i32 0, i32 0
  store i32 %458, i32* %460, align 8
  %461 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %462 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %463 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %462, i32 0, i32 8
  store i32 %461, i32* %463, align 4
  %464 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %465 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %464, i32 0, i32 8
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %468 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %467, i32 0, i32 9
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* @ffec_txstart, align 4
  %470 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %471 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %470, i32 0, i32 7
  store i32 %469, i32* %471, align 8
  %472 = load i32, i32* @ffec_ioctl, align 4
  %473 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %474 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %473, i32 0, i32 6
  store i32 %472, i32* %474, align 4
  %475 = load i32, i32* @ffec_init, align 4
  %476 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %477 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %476, i32 0, i32 5
  store i32 %475, i32* %477, align 8
  %478 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %479 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %478, i32 0, i32 4
  %480 = load i64, i64* @TX_DESC_COUNT, align 8
  %481 = sub i64 %480, 1
  %482 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_9__* %479, i64 %481)
  %483 = load i64, i64* @TX_DESC_COUNT, align 8
  %484 = sub i64 %483, 1
  %485 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %486 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %485, i32 0, i32 4
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 0
  store i64 %484, i64* %487, align 8
  %488 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %489 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %488, i32 0, i32 4
  %490 = call i32 @IFQ_SET_READY(%struct.TYPE_9__* %489)
  %491 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %492 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %491, i32 0, i32 1
  store i32 4, i32* %492, align 4
  %493 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %494 = call i32 @ffec_miigasket_setup(%struct.ffec_softc* %493)
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* %2, align 4
  %497 = call i64 @fdt_get_phyaddr(i32 %495, i32 %496, i32* %12, i8** %6)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %436
  %500 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %500, i32* %12, align 4
  br label %501

501:                                              ; preds = %499, %436
  %502 = load i32, i32* %2, align 4
  %503 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %504 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %503, i32 0, i32 5
  %505 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %506 = load i32, i32* @ffec_media_change, align 4
  %507 = load i32, i32* @ffec_media_status, align 4
  %508 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* @MII_OFFSET_ANY, align 4
  %511 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %512 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i32, i32* @FECTYPE_MVF, align 4
  %515 = sext i32 %514 to i64
  %516 = and i64 %513, %515
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %501
  %519 = load i32, i32* @MIIF_FORCEANEG, align 4
  br label %521

520:                                              ; preds = %501
  br label %521

521:                                              ; preds = %520, %518
  %522 = phi i32 [ %519, %518 ], [ 0, %520 ]
  %523 = call i32 @mii_attach(i32 %502, i32* %504, %struct.ifnet* %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510, i32 %522)
  store i32 %523, i32* %11, align 4
  %524 = load i32, i32* %11, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %521
  %527 = load i32, i32* %2, align 4
  %528 = call i32 @device_printf(i32 %527, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %540

529:                                              ; preds = %521
  %530 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %531 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %530, i32 0, i32 5
  %532 = load i32, i32* %531, align 4
  %533 = call i8* @device_get_softc(i32 %532)
  %534 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %535 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %534, i32 0, i32 6
  store i8* %533, i8** %535, align 8
  %536 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %537 = call i32 @ether_ifattach(%struct.ifnet* %536, i64* %20)
  %538 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %539 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %538, i32 0, i32 4
  store i32 1, i32* %539, align 8
  store i32 0, i32* %11, align 4
  br label %540

540:                                              ; preds = %529, %526, %411, %346, %336, %327, %304, %287, %265, %243, %218, %195, %175, %153, %131, %115, %102, %80, %66
  %541 = load i32, i32* %11, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %540
  %544 = load i32, i32* %2, align 4
  %545 = call i32 @ffec_detach(i32 %544)
  br label %546

546:                                              ; preds = %543, %540
  %547 = load i32, i32* %11, align 4
  %548 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %548)
  ret i32 %547
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @device_get_softc(i32) #2

declare dso_local i32 @FFEC_LOCK_INIT(%struct.ffec_softc*) #2

declare dso_local %struct.TYPE_8__* @ofw_bus_search_compatible(i32, i32) #2

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i64 @mii_fdt_get_contype(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @bus_alloc_resources(i32, i32, i32**) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #2

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #2

declare dso_local i32 @ffec_setup_txdesc(%struct.ffec_softc*, i64, i32, i32) #2

declare dso_local %struct.mbuf* @ffec_alloc_mbufcl(%struct.ffec_softc*) #2

declare dso_local i32 @ffec_setup_rxbuf(%struct.ffec_softc*, i64, %struct.mbuf*) #2

declare dso_local i32 @ffec_get_hwaddr(%struct.ffec_softc*, i64*) #2

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i64) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ffec_softc*, i32*) #2

declare dso_local i64 @OF_hasprop(i32, i8*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_9__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_9__*) #2

declare dso_local i32 @ffec_miigasket_setup(%struct.ffec_softc*) #2

declare dso_local i64 @fdt_get_phyaddr(i32, i32, i32*, i8**) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i64*) #2

declare dso_local i32 @ffec_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
