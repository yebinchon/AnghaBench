; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mvneta_softc = type { i32, i64, i64, i32, i32, %struct.ifnet*, i32*, i32*, i32, i32*, i32, i64, i32, i32*, i8*, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.mvneta_softc* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"mvneta_sc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@res_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MVNETA_PV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"version is %x\0A\00", align 1
@MVNETA_PRXINIT = common dso_local global i32 0, align 4
@MVNETA_PTXINIT = common dso_local global i32 0, align 4
@IO_WIN_COH_ATTR_MASK = common dso_local global i32 0, align 4
@MVNETA_PSNPCFG = common dso_local global i32 0, align 4
@MVNETA_PSNPCFG_DESCSNP_MASK = common dso_local global i32 0, align 4
@MVNETA_PSNPCFG_BUFSNP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"no mac address.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"if_alloc() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@mvneta_start = common dso_local global i32 0, align 4
@MVNETA_TX_RING_CNT = common dso_local global i64 0, align 8
@mvneta_init = common dso_local global i32 0, align 4
@mvneta_ioctl = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@MVNETA_TX_QNUM_MAX = common dso_local global i32 0, align 4
@MVNETA_RX_QNUM_MAX = common dso_local global i32 0, align 4
@MVNETA_PACC = common dso_local global i32 0, align 4
@MVNETA_PACC_ACCELERATIONMODE_EDM = common dso_local global i32 0, align 4
@mii_init = common dso_local global i32 0, align 4
@mii_mutex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"mvneta_mii\00", align 1
@MII_PHY_ANY = common dso_local global i64 0, align 8
@mvneta_mediachange = common dso_local global i32 0, align 4
@mvneta_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"MII attach failed, error: %d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@MVNETA_PHY_SGMII = common dso_local global i32 0, align 4
@MVNETA_PHY_QSGMII = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"2.5G speed can work only in (Q)SGMII mode\0A\00", align 1
@IFM_2500_T = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"This device is attached to a switch\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@mvneta_tick = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mvneta_intrs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"could not setup %s\0A\00", align 1
@mvneta_qflush = common dso_local global i32 0, align 4
@mvneta_transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvneta_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mvneta_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @device_get_softc(i32* %11)
  %13 = bitcast i8* %12 to %struct.mvneta_softc*
  store %struct.mvneta_softc* %13, %struct.mvneta_softc** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %15, i32 0, i32 9
  store i32* %14, i32** %16, align 8
  %17 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %17, i32 0, i32 16
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @res_spec, align 4
  %23 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_alloc_resources(i32* %21, i32 %22, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @device_printf(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %560

33:                                               ; preds = %1
  %34 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %35 = load i32, i32* @MVNETA_PV, align 4
  %36 = call i32 @MVNETA_READ(%struct.mvneta_softc* %34, i32 %35)
  %37 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32*, i8*, ...) @device_printf(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %44, i32 0, i32 8
  %46 = call i32 @callout_init(i32* %45, i32 0)
  %47 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %48 = load i32, i32* @MVNETA_PRXINIT, align 4
  %49 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %47, i32 %48, i32 1)
  %50 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %51 = load i32, i32* @MVNETA_PTXINIT, align 4
  %52 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %50, i32 %51, i32 1)
  %53 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %54 = call i32 @MV_WIN_NETA_BASE(i32 0)
  %55 = call i32 @MVNETA_READ(%struct.mvneta_softc* %53, i32 %54)
  %56 = load i32, i32* @IO_WIN_COH_ATTR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %33
  %60 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %61 = load i32, i32* @MVNETA_PSNPCFG, align 4
  %62 = call i32 @MVNETA_READ(%struct.mvneta_softc* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @MVNETA_PSNPCFG_DESCSNP_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @MVNETA_PSNPCFG_BUFSNP_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %72 = load i32, i32* @MVNETA_PSNPCFG, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %59, %33
  %76 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %77 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @mvneta_get_mac_address(%struct.mvneta_softc* %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 (i32*, i8*, ...) @device_printf(i32* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %560

86:                                               ; preds = %75
  %87 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %88 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %88, i32 0, i32 15
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mvneta_set_mac_address(%struct.mvneta_softc* %87, i32 %90)
  %92 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %93 = call i32 @mvneta_disable_intr(%struct.mvneta_softc* %92)
  %94 = load i32, i32* @IFT_ETHER, align 4
  %95 = call %struct.ifnet* @if_alloc(i32 %94)
  %96 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %97 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %96, i32 0, i32 5
  store %struct.ifnet* %95, %struct.ifnet** %97, align 8
  store %struct.ifnet* %95, %struct.ifnet** %5, align 8
  %98 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %99 = icmp eq %struct.ifnet* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 (i32*, i8*, ...) @device_printf(i32* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @mvneta_detach(i32* %103)
  %105 = load i32, i32* @ENOMEM, align 4
  store i32 %105, i32* %2, align 4
  br label %560

106:                                              ; preds = %86
  %107 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @device_get_name(i32* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @device_get_unit(i32* %110)
  %112 = call i32 @if_initname(%struct.ifnet* %107, i32 %109, i32 %111)
  %113 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %114 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %121 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %122 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %121, i32 0, i32 10
  store %struct.mvneta_softc* %120, %struct.mvneta_softc** %122, align 8
  %123 = load i32, i32* @IFF_BROADCAST, align 4
  %124 = load i32, i32* @IFF_SIMPLEX, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @IFF_MULTICAST, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @mvneta_start, align 4
  %131 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  %133 = load i64, i64* @MVNETA_TX_RING_CNT, align 8
  %134 = sub nsw i64 %133, 1
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i64 %134, i64* %137, align 8
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 6
  %140 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %139, i64 %143)
  %145 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 6
  %147 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %146)
  %148 = load i32, i32* @mvneta_init, align 4
  %149 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @mvneta_ioctl, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @IFCAP_HWCSUM, align 4
  %155 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %156 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %160 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @IFCAP_LRO, align 4
  %178 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @CSUM_IP, align 4
  %183 = load i32, i32* @CSUM_TCP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @CSUM_UDP, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %190 = call i32 @mvneta_dma_create(%struct.mvneta_softc* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %106
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @mvneta_detach(i32* %194)
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %2, align 4
  br label %560

197:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %213, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @MVNETA_TX_QNUM_MAX, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %198
  %203 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @mvneta_ring_init_tx_queue(%struct.mvneta_softc* %203, i32 %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @mvneta_detach(i32* %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %2, align 4
  br label %560

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %198

216:                                              ; preds = %198
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %232, %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @MVNETA_RX_QNUM_MAX, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %217
  %222 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @mvneta_ring_init_rx_queue(%struct.mvneta_softc* %222, i32 %223)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @mvneta_detach(i32* %228)
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %2, align 4
  br label %560

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %217

235:                                              ; preds = %217
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %238 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %237, i32 0, i32 15
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ether_ifattach(%struct.ifnet* %236, i32 %239)
  %241 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %242 = load i32, i32* @MVNETA_PRXINIT, align 4
  %243 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %241, i32 %242, i32 0)
  %244 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %245 = load i32, i32* @MVNETA_PTXINIT, align 4
  %246 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %244, i32 %245, i32 0)
  %247 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %248 = load i32, i32* @MVNETA_PACC, align 4
  %249 = load i32, i32* @MVNETA_PACC_ACCELERATIONMODE_EDM, align 4
  %250 = call i32 @MVNETA_WRITE(%struct.mvneta_softc* %247, i32 %248, i32 %249)
  %251 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %252 = call i32 @mvneta_sc_lock(%struct.mvneta_softc* %251)
  %253 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %254 = call i32 @mvneta_filter_setup(%struct.mvneta_softc* %253)
  %255 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %256 = call i32 @mvneta_sc_unlock(%struct.mvneta_softc* %255)
  %257 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %258 = call i32 @mvneta_initreg(%struct.ifnet* %257)
  %259 = load i32, i32* @mii_init, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %235
  %262 = load i32, i32* @MTX_DEF, align 4
  %263 = call i32 @mtx_init(i32* @mii_mutex, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %262)
  store i32 1, i32* @mii_init, align 4
  br label %264

264:                                              ; preds = %261, %235
  %265 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %266 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @MII_PHY_ANY, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %317

270:                                              ; preds = %264
  %271 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %272 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %317, label %275

275:                                              ; preds = %270
  %276 = load i32*, i32** %3, align 8
  %277 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %278 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %277, i32 0, i32 13
  %279 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %280 = load i32, i32* @mvneta_mediachange, align 4
  %281 = load i32, i32* @mvneta_mediastatus, align 4
  %282 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %283 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %284 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* @MII_OFFSET_ANY, align 4
  %287 = call i32 @mii_attach(i32* %276, i32** %278, %struct.ifnet* %279, i32 %280, i32 %281, i32 %282, i64 %285, i32 %286, i32 0)
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %275
  %291 = load i64, i64* @bootverbose, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load i32*, i32** %3, align 8
  %295 = load i32, i32* %9, align 4
  %296 = call i32 (i32*, i8*, ...) @device_printf(i32* %294, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %299 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %298, i32 0, i32 5
  %300 = load %struct.ifnet*, %struct.ifnet** %299, align 8
  %301 = call i32 @ether_ifdetach(%struct.ifnet* %300)
  %302 = load i32*, i32** %3, align 8
  %303 = call i32 @mvneta_detach(i32* %302)
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %2, align 4
  br label %560

305:                                              ; preds = %275
  %306 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %307 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %306, i32 0, i32 13
  %308 = load i32*, i32** %307, align 8
  %309 = call i8* @device_get_softc(i32* %308)
  %310 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %311 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %310, i32 0, i32 14
  store i8* %309, i8** %311, align 8
  %312 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %313 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %312, i32 0, i32 3
  store i32 1, i32* %313, align 8
  %314 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %315 = load i64, i64* @FALSE, align 8
  %316 = call i32 @mvneta_update_autoneg(%struct.mvneta_softc* %314, i64 %315)
  br label %516

317:                                              ; preds = %270, %264
  %318 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %319 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @TRUE, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %394

323:                                              ; preds = %317
  %324 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %325 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %324, i32 0, i32 10
  %326 = load i32, i32* @mvneta_mediachange, align 4
  %327 = load i32, i32* @mvneta_mediastatus, align 4
  %328 = call i32 @ifmedia_init(i32* %325, i32 0, i32 %326, i32 %327)
  %329 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %330 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %329, i32 0, i32 10
  %331 = load i32, i32* @IFM_ETHER, align 4
  %332 = load i32, i32* @IFM_1000_T, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @IFM_FDX, align 4
  %335 = or i32 %333, %334
  %336 = call i32 @ifmedia_add(i32* %330, i32 %335, i32 0, i32* null)
  %337 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %338 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %337, i32 0, i32 10
  %339 = load i32, i32* @IFM_ETHER, align 4
  %340 = load i32, i32* @IFM_100_TX, align 4
  %341 = or i32 %339, %340
  %342 = call i32 @ifmedia_add(i32* %338, i32 %341, i32 0, i32* null)
  %343 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %344 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %343, i32 0, i32 10
  %345 = load i32, i32* @IFM_ETHER, align 4
  %346 = load i32, i32* @IFM_100_TX, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* @IFM_FDX, align 4
  %349 = or i32 %347, %348
  %350 = call i32 @ifmedia_add(i32* %344, i32 %349, i32 0, i32* null)
  %351 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %352 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %351, i32 0, i32 10
  %353 = load i32, i32* @IFM_ETHER, align 4
  %354 = load i32, i32* @IFM_10_T, align 4
  %355 = or i32 %353, %354
  %356 = call i32 @ifmedia_add(i32* %352, i32 %355, i32 0, i32* null)
  %357 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %358 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %357, i32 0, i32 10
  %359 = load i32, i32* @IFM_ETHER, align 4
  %360 = load i32, i32* @IFM_10_T, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @IFM_FDX, align 4
  %363 = or i32 %361, %362
  %364 = call i32 @ifmedia_add(i32* %358, i32 %363, i32 0, i32* null)
  %365 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %366 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %365, i32 0, i32 10
  %367 = load i32, i32* @IFM_ETHER, align 4
  %368 = load i32, i32* @IFM_AUTO, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @ifmedia_add(i32* %366, i32 %369, i32 0, i32* null)
  %371 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %372 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %371, i32 0, i32 10
  %373 = load i32, i32* @IFM_ETHER, align 4
  %374 = load i32, i32* @IFM_AUTO, align 4
  %375 = or i32 %373, %374
  %376 = call i32 @ifmedia_set(i32* %372, i32 %375)
  %377 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %378 = load i64, i64* @TRUE, align 8
  %379 = call i32 @mvneta_update_autoneg(%struct.mvneta_softc* %377, i64 %378)
  %380 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %381 = call i32 @mvneta_sc_lock(%struct.mvneta_softc* %380)
  %382 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %383 = call i64 @MVNETA_IS_LINKUP(%struct.mvneta_softc* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %323
  %386 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %387 = call i32 @mvneta_linkup(%struct.mvneta_softc* %386)
  br label %391

388:                                              ; preds = %323
  %389 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %390 = call i32 @mvneta_linkdown(%struct.mvneta_softc* %389)
  br label %391

391:                                              ; preds = %388, %385
  %392 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %393 = call i32 @mvneta_sc_unlock(%struct.mvneta_softc* %392)
  br label %515

394:                                              ; preds = %317
  %395 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %396 = load i64, i64* @FALSE, align 8
  %397 = call i32 @mvneta_update_autoneg(%struct.mvneta_softc* %395, i64 %396)
  %398 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %399 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %398, i32 0, i32 10
  %400 = load i32, i32* @mvneta_mediachange, align 4
  %401 = load i32, i32* @mvneta_mediastatus, align 4
  %402 = call i32 @ifmedia_init(i32* %399, i32 0, i32 %400, i32 %401)
  %403 = load i32, i32* @IFM_ETHER, align 4
  store i32 %403, i32* %7, align 4
  %404 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %405 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 4
  switch i32 %406, label %445 [
    i32 2500, label %407
    i32 1000, label %433
    i32 100, label %437
    i32 10, label %441
  ]

407:                                              ; preds = %394
  %408 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %409 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %408, i32 0, i32 12
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @MVNETA_PHY_SGMII, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %429

413:                                              ; preds = %407
  %414 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %415 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %414, i32 0, i32 12
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @MVNETA_PHY_QSGMII, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %429

419:                                              ; preds = %413
  %420 = load i32*, i32** %3, align 8
  %421 = call i32 (i32*, i8*, ...) @device_printf(i32* %420, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %422 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %423 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %422, i32 0, i32 5
  %424 = load %struct.ifnet*, %struct.ifnet** %423, align 8
  %425 = call i32 @ether_ifdetach(%struct.ifnet* %424)
  %426 = load i32*, i32** %3, align 8
  %427 = call i32 @mvneta_detach(i32* %426)
  %428 = load i32, i32* @ENXIO, align 4
  store i32 %428, i32* %2, align 4
  br label %560

429:                                              ; preds = %413, %407
  %430 = load i32, i32* @IFM_2500_T, align 4
  %431 = load i32, i32* %7, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %7, align 4
  br label %453

433:                                              ; preds = %394
  %434 = load i32, i32* @IFM_1000_T, align 4
  %435 = load i32, i32* %7, align 4
  %436 = or i32 %435, %434
  store i32 %436, i32* %7, align 4
  br label %453

437:                                              ; preds = %394
  %438 = load i32, i32* @IFM_100_TX, align 4
  %439 = load i32, i32* %7, align 4
  %440 = or i32 %439, %438
  store i32 %440, i32* %7, align 4
  br label %453

441:                                              ; preds = %394
  %442 = load i32, i32* @IFM_10_T, align 4
  %443 = load i32, i32* %7, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %7, align 4
  br label %453

445:                                              ; preds = %394
  %446 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %447 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %446, i32 0, i32 5
  %448 = load %struct.ifnet*, %struct.ifnet** %447, align 8
  %449 = call i32 @ether_ifdetach(%struct.ifnet* %448)
  %450 = load i32*, i32** %3, align 8
  %451 = call i32 @mvneta_detach(i32* %450)
  %452 = load i32, i32* @ENXIO, align 4
  store i32 %452, i32* %2, align 4
  br label %560

453:                                              ; preds = %441, %437, %433, %429
  %454 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %455 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %454, i32 0, i32 11
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %453
  %459 = load i32, i32* @IFM_FDX, align 4
  %460 = load i32, i32* %7, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %7, align 4
  br label %466

462:                                              ; preds = %453
  %463 = load i32, i32* @IFM_HDX, align 4
  %464 = load i32, i32* %7, align 4
  %465 = or i32 %464, %463
  store i32 %465, i32* %7, align 4
  br label %466

466:                                              ; preds = %462, %458
  %467 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %468 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %467, i32 0, i32 10
  %469 = load i32, i32* %7, align 4
  %470 = call i32 @ifmedia_add(i32* %468, i32 %469, i32 0, i32* null)
  %471 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %472 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %471, i32 0, i32 10
  %473 = load i32, i32* %7, align 4
  %474 = call i32 @ifmedia_set(i32* %472, i32 %473)
  %475 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %476 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %475, i32 0, i32 5
  %477 = load %struct.ifnet*, %struct.ifnet** %476, align 8
  %478 = load i32, i32* @LINK_STATE_UP, align 4
  %479 = call i32 @if_link_state_change(%struct.ifnet* %477, i32 %478)
  %480 = load i32*, i32** %3, align 8
  %481 = call i64 @mvneta_has_switch(i32* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %511

483:                                              ; preds = %466
  %484 = load i64, i64* @bootverbose, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32*, i32** %3, align 8
  %488 = call i32 (i32*, i8*, ...) @device_printf(i32* %487, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %489

489:                                              ; preds = %486, %483
  %490 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %491 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %490, i32 0, i32 9
  %492 = load i32*, i32** %491, align 8
  %493 = call i32* @device_add_child(i32* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  store i32* %493, i32** %6, align 8
  %494 = load i32*, i32** %6, align 8
  %495 = icmp eq i32* %494, null
  br i1 %495, label %496, label %504

496:                                              ; preds = %489
  %497 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %498 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %497, i32 0, i32 5
  %499 = load %struct.ifnet*, %struct.ifnet** %498, align 8
  %500 = call i32 @ether_ifdetach(%struct.ifnet* %499)
  %501 = load i32*, i32** %3, align 8
  %502 = call i32 @mvneta_detach(i32* %501)
  %503 = load i32, i32* @ENXIO, align 4
  store i32 %503, i32* %2, align 4
  br label %560

504:                                              ; preds = %489
  %505 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %506 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %505, i32 0, i32 9
  %507 = load i32*, i32** %506, align 8
  %508 = call i32 @bus_generic_attach(i32* %507)
  %509 = load i32*, i32** %6, align 8
  %510 = call i32 @bus_generic_attach(i32* %509)
  br label %511

511:                                              ; preds = %504, %466
  %512 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %513 = load i32, i32* %7, align 4
  %514 = call i32 @mvneta_update_media(%struct.mvneta_softc* %512, i32 %513)
  br label %515

515:                                              ; preds = %511, %391
  br label %516

516:                                              ; preds = %515, %305
  %517 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %518 = call i32 @sysctl_mvneta_init(%struct.mvneta_softc* %517)
  %519 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %520 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %519, i32 0, i32 8
  %521 = load i32, i32* @mvneta_tick, align 4
  %522 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %523 = call i32 @callout_reset(i32* %520, i32 0, i32 %521, %struct.mvneta_softc* %522)
  %524 = load i32*, i32** %3, align 8
  %525 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %526 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %525, i32 0, i32 7
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 1
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* @INTR_TYPE_NET, align 4
  %531 = load i32, i32* @INTR_MPSAFE, align 4
  %532 = or i32 %530, %531
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mvneta_intrs, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i64 0
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %538 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %539 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %538, i32 0, i32 6
  %540 = load i32*, i32** %539, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 0
  %542 = call i32 @bus_setup_intr(i32* %524, i32 %529, i32 %532, i32* null, i32 %536, %struct.mvneta_softc* %537, i32* %541)
  store i32 %542, i32* %9, align 4
  %543 = load i32, i32* %9, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %559

545:                                              ; preds = %516
  %546 = load i32*, i32** %3, align 8
  %547 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mvneta_intrs, align 8
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i64 0
  %549 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 4
  %551 = call i32 (i32*, i8*, ...) @device_printf(i32* %546, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %550)
  %552 = load %struct.mvneta_softc*, %struct.mvneta_softc** %4, align 8
  %553 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %552, i32 0, i32 5
  %554 = load %struct.ifnet*, %struct.ifnet** %553, align 8
  %555 = call i32 @ether_ifdetach(%struct.ifnet* %554)
  %556 = load i32*, i32** %3, align 8
  %557 = call i32 @mvneta_detach(i32* %556)
  %558 = load i32, i32* %9, align 4
  store i32 %558, i32* %2, align 4
  br label %560

559:                                              ; preds = %516
  store i32 0, i32* %2, align 4
  br label %560

560:                                              ; preds = %559, %545, %496, %445, %419, %297, %227, %208, %193, %100, %82, %29
  %561 = load i32, i32* %2, align 4
  ret i32 %561
}

declare dso_local i8* @device_get_softc(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_alloc_resources(i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @MVNETA_READ(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @MVNETA_WRITE(%struct.mvneta_softc*, i32, i32) #1

declare dso_local i32 @MV_WIN_NETA_BASE(i32) #1

declare dso_local i64 @mvneta_get_mac_address(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @mvneta_set_mac_address(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @mvneta_disable_intr(%struct.mvneta_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @mvneta_detach(i32*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @mvneta_dma_create(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_ring_init_tx_queue(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @mvneta_ring_init_rx_queue(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @mvneta_sc_lock(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_filter_setup(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_sc_unlock(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_initreg(%struct.ifnet*) #1

declare dso_local i32 @mii_attach(i32*, i32**, %struct.ifnet*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @mvneta_update_autoneg(%struct.mvneta_softc*, i64) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i64 @MVNETA_IS_LINKUP(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_linkup(%struct.mvneta_softc*) #1

declare dso_local i32 @mvneta_linkdown(%struct.mvneta_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i64 @mvneta_has_switch(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @mvneta_update_media(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @sysctl_mvneta_init(%struct.mvneta_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mvneta_softc*) #1

declare dso_local i32 @bus_setup_intr(i32*, i32, i32, i32*, i32, %struct.mvneta_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
