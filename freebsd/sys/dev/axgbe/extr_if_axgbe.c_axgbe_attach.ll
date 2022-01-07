; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axgbe_softc = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, i32, i64, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_10__, i32, i32, %struct.ifnet*, %struct.resource**, i8*, %struct.resource*, %struct.resource*, %struct.resource*, %struct.resource*, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_10__ = type { i32 }
%struct.ifnet = type { i32, i64, i64, i64, i32, i32, i32, i32, %struct.axgbe_softc*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@mac_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not allocate phy resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@XGBE_DMA_IRQS_PROPERTY = common dso_local global i8* null, align 8
@old_phy_spec = common dso_local global i32 0, align 4
@old_mac_spec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not allocate mac resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No mac-address property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Cannot alloc ifnet\0A\00", align 1
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@XGBE_SPEEDSET_PROPERTY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"%s property is missing\0A\00", align 1
@XGBE_BLWC_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_BLWC = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_BLWC = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_BLWC = common dso_local global i32 0, align 4
@XGBE_CDR_RATE_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_CDR = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_CDR = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_CDR = common dso_local global i32 0, align 4
@XGBE_PQ_SKEW_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_PQ = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_PQ = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_PQ = common dso_local global i32 0, align 4
@XGBE_TX_AMP_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_TXAMP = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_TXAMP = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_TXAMP = common dso_local global i32 0, align 4
@XGBE_DFE_CFG_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_DFE_TAP_CONFIG = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_DFE_TAP_CONFIG = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_DFE_TAP_CONFIG = common dso_local global i32 0, align 4
@XGBE_DFE_ENA_PROPERTY = common dso_local global i32 0, align 4
@XGBE_SPEED_1000_DFE_TAP_ENABLE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_DFE_TAP_ENABLE = common dso_local global i32 0, align 4
@XGBE_SPEED_10000_DFE_TAP_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@XGBE_DMA_OS_AXDOMAIN = common dso_local global i32 0, align 4
@XGBE_DMA_OS_ARCACHE = common dso_local global i32 0, align 4
@XGBE_DMA_OS_AWCACHE = common dso_local global i32 0, align 4
@XGBE_DMA_SYS_AXDOMAIN = common dso_local global i32 0, align 4
@XGBE_DMA_SYS_ARCACHE = common dso_local global i32 0, align 4
@XGBE_DMA_SYS_AWCACHE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"axgbe\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"axgbe taskq\00", align 1
@DMA_PBL_X8_ENABLE = common dso_local global i32 0, align 4
@XGBE_TX_DESC_CNT = common dso_local global i32 0, align 4
@MTL_TSF_ENABLE = common dso_local global i32 0, align 4
@MTL_TX_THRESHOLD_64 = common dso_local global i32 0, align 4
@DMA_PBL_16 = common dso_local global i8* null, align 8
@DMA_OSP_ENABLE = common dso_local global i32 0, align 4
@XGBE_RX_DESC_CNT = common dso_local global i32 0, align 4
@MTL_RSF_DISABLE = common dso_local global i32 0, align 4
@MTL_RX_THRESHOLD_64 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@axgbe_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@axgbe_ioctl = common dso_local global i32 0, align 4
@xgbe_xmit = common dso_local global i32 0, align 4
@axgbe_qflush = common dso_local global i32 0, align 4
@axgbe_get_counter = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@axgbe_media_change = common dso_local global i32 0, align 4
@axgbe_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@XGBE_DOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"ndo_open failed\0A\00", align 1
@IFM_10G_KR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axgbe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axgbe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.axgbe_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [11 x %struct.resource*], align 16
  %11 = alloca [4 x %struct.resource*], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.axgbe_softc* @device_get_softc(i32 %16)
  store %struct.axgbe_softc* %17, %struct.axgbe_softc** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %118

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @mac_spec, align 4
  %27 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 0
  %28 = call i64 @bus_alloc_resources(i32 %25, i32 %26, %struct.resource** %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %747

34:                                               ; preds = %23
  %35 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 0
  %36 = load %struct.resource*, %struct.resource** %35, align 16
  %37 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %38 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 45
  store %struct.resource* %36, %struct.resource** %39, align 8
  %40 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 1
  %41 = load %struct.resource*, %struct.resource** %40, align 8
  %42 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %43 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 44
  store %struct.resource* %41, %struct.resource** %44, align 8
  %45 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 2
  %46 = load %struct.resource*, %struct.resource** %45, align 16
  %47 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %48 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 49
  store %struct.resource* %46, %struct.resource** %49, align 8
  %50 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 3
  %51 = load %struct.resource*, %struct.resource** %50, align 8
  %52 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %53 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 48
  store %struct.resource* %51, %struct.resource** %54, align 8
  %55 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 4
  %56 = load %struct.resource*, %struct.resource** %55, align 16
  %57 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %58 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 47
  store %struct.resource* %56, %struct.resource** %59, align 8
  %60 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 5
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %63 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 43
  store %struct.resource* %61, %struct.resource** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** @XGBE_DMA_IRQS_PROPERTY, align 8
  %67 = call i8* @OF_hasprop(i32 %65, i8* %66)
  %68 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %69 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 42
  store i8* %67, i8** %70, align 8
  store i32 0, i32* %14, align 4
  store i32 6, i32* %15, align 4
  br label %71

71:                                               ; preds = %105, %34
  %72 = load i32, i32* %15, align 4
  %73 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 0
  %74 = call i32 @nitems(%struct.resource** %73)
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 %80
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  %83 = icmp ne %struct.resource* %82, null
  br label %84

84:                                               ; preds = %77, %71
  %85 = phi i1 [ false, %71 ], [ %83, %77 ]
  br i1 %85, label %86, label %110

86:                                               ; preds = %84
  %87 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %88 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 42
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 %94
  %96 = load %struct.resource*, %struct.resource** %95, align 8
  %97 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %98 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 41
  %100 = load %struct.resource**, %struct.resource*** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.resource*, %struct.resource** %100, i64 %102
  store %struct.resource* %96, %struct.resource** %103, align 8
  br label %104

104:                                              ; preds = %92, %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %71

110:                                              ; preds = %84
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 %112
  %114 = load %struct.resource*, %struct.resource** %113, align 8
  %115 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %116 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 46
  store %struct.resource* %114, %struct.resource** %117, align 8
  br label %225

118:                                              ; preds = %1
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @OF_device_from_xref(i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @ofw_bus_get_node(i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @old_phy_spec, align 4
  %125 = getelementptr inbounds [4 x %struct.resource*], [4 x %struct.resource*]* %11, i64 0, i64 0
  %126 = call i64 @bus_alloc_resources(i32 %123, i32 %124, %struct.resource** %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %2, align 4
  br label %747

132:                                              ; preds = %118
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @old_mac_spec, align 4
  %135 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 0
  %136 = call i64 @bus_alloc_resources(i32 %133, i32 %134, %struct.resource** %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* %3, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %2, align 4
  br label %747

142:                                              ; preds = %132
  %143 = getelementptr inbounds [4 x %struct.resource*], [4 x %struct.resource*]* %11, i64 0, i64 0
  %144 = load %struct.resource*, %struct.resource** %143, align 16
  %145 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %146 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 49
  store %struct.resource* %144, %struct.resource** %147, align 8
  %148 = getelementptr inbounds [4 x %struct.resource*], [4 x %struct.resource*]* %11, i64 0, i64 1
  %149 = load %struct.resource*, %struct.resource** %148, align 8
  %150 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %151 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 48
  store %struct.resource* %149, %struct.resource** %152, align 8
  %153 = getelementptr inbounds [4 x %struct.resource*], [4 x %struct.resource*]* %11, i64 0, i64 2
  %154 = load %struct.resource*, %struct.resource** %153, align 16
  %155 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %156 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 47
  store %struct.resource* %154, %struct.resource** %157, align 8
  %158 = getelementptr inbounds [4 x %struct.resource*], [4 x %struct.resource*]* %11, i64 0, i64 3
  %159 = load %struct.resource*, %struct.resource** %158, align 8
  %160 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %161 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 46
  store %struct.resource* %159, %struct.resource** %162, align 8
  %163 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 0
  %164 = load %struct.resource*, %struct.resource** %163, align 16
  %165 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %166 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 45
  store %struct.resource* %164, %struct.resource** %167, align 8
  %168 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 1
  %169 = load %struct.resource*, %struct.resource** %168, align 8
  %170 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %171 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 44
  store %struct.resource* %169, %struct.resource** %172, align 8
  %173 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 2
  %174 = load %struct.resource*, %struct.resource** %173, align 16
  %175 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %176 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 43
  store %struct.resource* %174, %struct.resource** %177, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i8*, i8** @XGBE_DMA_IRQS_PROPERTY, align 8
  %180 = call i8* @OF_hasprop(i32 %178, i8* %179)
  %181 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %182 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 42
  store i8* %180, i8** %183, align 8
  %184 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %185 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 42
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %224

189:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  store i32 3, i32* %15, align 4
  br label %190

190:                                              ; preds = %218, %189
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %193 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 41
  %195 = load %struct.resource**, %struct.resource*** %194, align 8
  %196 = call i32 @nitems(%struct.resource** %195)
  %197 = icmp slt i32 %191, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %190
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 %200
  %202 = load %struct.resource*, %struct.resource** %201, align 8
  %203 = icmp ne %struct.resource* %202, null
  br label %204

204:                                              ; preds = %198, %190
  %205 = phi i1 [ false, %190 ], [ %203, %198 ]
  br i1 %205, label %206, label %223

206:                                              ; preds = %204
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [11 x %struct.resource*], [11 x %struct.resource*]* %10, i64 0, i64 %208
  %210 = load %struct.resource*, %struct.resource** %209, align 8
  %211 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %212 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 41
  %214 = load %struct.resource**, %struct.resource*** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.resource*, %struct.resource** %214, i64 %216
  store %struct.resource* %210, %struct.resource** %217, align 8
  br label %218

218:                                              ; preds = %206
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %190

223:                                              ; preds = %204
  br label %224

224:                                              ; preds = %223, %142
  br label %225

225:                                              ; preds = %224, %110
  %226 = load i32, i32* %8, align 4
  %227 = call i64 @OF_getproplen(i32 %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64 %227, i64* %12, align 8
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i32, i32* %3, align 4
  %231 = call i32 (i32, i8*, ...) @device_printf(i32 %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %2, align 4
  br label %747

233:                                              ; preds = %225
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i32, i32* @EINVAL, align 4
  store i32 %238, i32* %2, align 4
  br label %747

239:                                              ; preds = %233
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %242 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %245 = call i32 @OF_getprop(i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %243, i64 %244)
  %246 = load i32, i32* @IFT_ETHER, align 4
  %247 = call %struct.ifnet* @if_alloc(i32 %246)
  store %struct.ifnet* %247, %struct.ifnet** %5, align 8
  %248 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %249 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 40
  store %struct.ifnet* %247, %struct.ifnet** %250, align 8
  %251 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %252 = icmp eq %struct.ifnet* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %239
  %254 = load i32, i32* %3, align 4
  %255 = call i32 (i32, i8*, ...) @device_printf(i32 %254, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32, i32* @ENXIO, align 4
  store i32 %256, i32* %2, align 4
  br label %747

257:                                              ; preds = %239
  %258 = load i32, i32* %3, align 4
  %259 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %260 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 39
  store i32 %258, i32* %261, align 4
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @bus_get_dma_tag(i32 %262)
  %264 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %265 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 38
  store i32 %263, i32* %266, align 8
  %267 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %268 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %271 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 37
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  store i32 %269, i32* %273, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i8*, i8** @XGBE_SPEEDSET_PROPERTY, align 8
  %276 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %277 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 36
  %279 = call i64 @OF_getencprop(i32 %274, i8* %275, i32* %278, i32 4)
  %280 = icmp sle i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %257
  %282 = load i32, i32* %3, align 4
  %283 = load i8*, i8** @XGBE_SPEEDSET_PROPERTY, align 8
  %284 = call i32 (i32, i8*, ...) @device_printf(i32 %282, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %283)
  %285 = load i32, i32* @EINVAL, align 4
  store i32 %285, i32* %2, align 4
  br label %747

286:                                              ; preds = %257
  %287 = load i32, i32* %3, align 4
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @XGBE_BLWC_PROPERTY, align 4
  %290 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %291 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 35
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @axgbe_get_optional_prop(i32 %287, i32 %288, i32 %289, i32* %293, i32 8)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %286
  %298 = load i32, i32* %13, align 4
  store i32 %298, i32* %2, align 4
  br label %747

299:                                              ; preds = %286
  %300 = load i32, i32* %13, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %321

302:                                              ; preds = %299
  %303 = load i32, i32* @XGBE_SPEED_1000_BLWC, align 4
  %304 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %305 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 35
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  store i32 %303, i32* %308, align 4
  %309 = load i32, i32* @XGBE_SPEED_2500_BLWC, align 4
  %310 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %311 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 35
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 %309, i32* %314, align 4
  %315 = load i32, i32* @XGBE_SPEED_10000_BLWC, align 4
  %316 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %317 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 35
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 2
  store i32 %315, i32* %320, align 4
  br label %321

321:                                              ; preds = %302, %299
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %3, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* @XGBE_CDR_RATE_PROPERTY, align 4
  %326 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %327 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 34
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @axgbe_get_optional_prop(i32 %323, i32 %324, i32 %325, i32* %329, i32 8)
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %13, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %322
  %334 = load i32, i32* %13, align 4
  store i32 %334, i32* %2, align 4
  br label %747

335:                                              ; preds = %322
  %336 = load i32, i32* %13, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  %339 = load i32, i32* @XGBE_SPEED_1000_CDR, align 4
  %340 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %341 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 34
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  store i32 %339, i32* %344, align 4
  %345 = load i32, i32* @XGBE_SPEED_2500_CDR, align 4
  %346 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %347 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 34
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  store i32 %345, i32* %350, align 4
  %351 = load i32, i32* @XGBE_SPEED_10000_CDR, align 4
  %352 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %353 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 34
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 2
  store i32 %351, i32* %356, align 4
  br label %357

357:                                              ; preds = %338, %335
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %3, align 4
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* @XGBE_PQ_SKEW_PROPERTY, align 4
  %362 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %363 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 33
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @axgbe_get_optional_prop(i32 %359, i32 %360, i32 %361, i32* %365, i32 8)
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* %13, align 4
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %358
  %370 = load i32, i32* %13, align 4
  store i32 %370, i32* %2, align 4
  br label %747

371:                                              ; preds = %358
  %372 = load i32, i32* %13, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %393

374:                                              ; preds = %371
  %375 = load i32, i32* @XGBE_SPEED_1000_PQ, align 4
  %376 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %377 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 33
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  store i32 %375, i32* %380, align 4
  %381 = load i32, i32* @XGBE_SPEED_2500_PQ, align 4
  %382 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %383 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 33
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 1
  store i32 %381, i32* %386, align 4
  %387 = load i32, i32* @XGBE_SPEED_10000_PQ, align 4
  %388 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %389 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 33
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 2
  store i32 %387, i32* %392, align 4
  br label %393

393:                                              ; preds = %374, %371
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %3, align 4
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* @XGBE_TX_AMP_PROPERTY, align 4
  %398 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %399 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 32
  %401 = load i32*, i32** %400, align 8
  %402 = call i32 @axgbe_get_optional_prop(i32 %395, i32 %396, i32 %397, i32* %401, i32 8)
  store i32 %402, i32* %13, align 4
  %403 = load i32, i32* %13, align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %394
  %406 = load i32, i32* %13, align 4
  store i32 %406, i32* %2, align 4
  br label %747

407:                                              ; preds = %394
  %408 = load i32, i32* %13, align 4
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %429

410:                                              ; preds = %407
  %411 = load i32, i32* @XGBE_SPEED_1000_TXAMP, align 4
  %412 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %413 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 32
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  store i32 %411, i32* %416, align 4
  %417 = load i32, i32* @XGBE_SPEED_2500_TXAMP, align 4
  %418 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %419 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 32
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  store i32 %417, i32* %422, align 4
  %423 = load i32, i32* @XGBE_SPEED_10000_TXAMP, align 4
  %424 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %425 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 32
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 2
  store i32 %423, i32* %428, align 4
  br label %429

429:                                              ; preds = %410, %407
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %3, align 4
  %432 = load i32, i32* %9, align 4
  %433 = load i32, i32* @XGBE_DFE_CFG_PROPERTY, align 4
  %434 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %435 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 31
  %437 = load i32*, i32** %436, align 8
  %438 = call i32 @axgbe_get_optional_prop(i32 %431, i32 %432, i32 %433, i32* %437, i32 8)
  store i32 %438, i32* %13, align 4
  %439 = load i32, i32* %13, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %430
  %442 = load i32, i32* %13, align 4
  store i32 %442, i32* %2, align 4
  br label %747

443:                                              ; preds = %430
  %444 = load i32, i32* %13, align 4
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %465

446:                                              ; preds = %443
  %447 = load i32, i32* @XGBE_SPEED_1000_DFE_TAP_CONFIG, align 4
  %448 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %449 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 31
  %451 = load i32*, i32** %450, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  store i32 %447, i32* %452, align 4
  %453 = load i32, i32* @XGBE_SPEED_2500_DFE_TAP_CONFIG, align 4
  %454 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %455 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 31
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  store i32 %453, i32* %458, align 4
  %459 = load i32, i32* @XGBE_SPEED_10000_DFE_TAP_CONFIG, align 4
  %460 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %461 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 31
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 2
  store i32 %459, i32* %464, align 4
  br label %465

465:                                              ; preds = %446, %443
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %3, align 4
  %468 = load i32, i32* %9, align 4
  %469 = load i32, i32* @XGBE_DFE_ENA_PROPERTY, align 4
  %470 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %471 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 30
  %473 = load i32*, i32** %472, align 8
  %474 = call i32 @axgbe_get_optional_prop(i32 %467, i32 %468, i32 %469, i32* %473, i32 8)
  store i32 %474, i32* %13, align 4
  %475 = load i32, i32* %13, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %466
  %478 = load i32, i32* %13, align 4
  store i32 %478, i32* %2, align 4
  br label %747

479:                                              ; preds = %466
  %480 = load i32, i32* %13, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %501

482:                                              ; preds = %479
  %483 = load i32, i32* @XGBE_SPEED_1000_DFE_TAP_ENABLE, align 4
  %484 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %485 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 30
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 0
  store i32 %483, i32* %488, align 4
  %489 = load i32, i32* @XGBE_SPEED_2500_DFE_TAP_ENABLE, align 4
  %490 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %491 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 30
  %493 = load i32*, i32** %492, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 1
  store i32 %489, i32* %494, align 4
  %495 = load i32, i32* @XGBE_SPEED_10000_DFE_TAP_ENABLE, align 4
  %496 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %497 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i32 0, i32 30
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 2
  store i32 %495, i32* %500, align 4
  br label %501

501:                                              ; preds = %482, %479
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %8, align 4
  %504 = call i8* @OF_hasprop(i32 %503, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %505 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %506 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %506, i32 0, i32 29
  store i8* %504, i8** %507, align 8
  %508 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %509 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i32 0, i32 29
  %511 = load i8*, i8** %510, align 8
  %512 = icmp ne i8* %511, null
  br i1 %512, label %513, label %526

513:                                              ; preds = %502
  %514 = load i32, i32* @XGBE_DMA_OS_AXDOMAIN, align 4
  %515 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %516 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 28
  store i32 %514, i32* %517, align 4
  %518 = load i32, i32* @XGBE_DMA_OS_ARCACHE, align 4
  %519 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %520 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i32 0, i32 27
  store i32 %518, i32* %521, align 8
  %522 = load i32, i32* @XGBE_DMA_OS_AWCACHE, align 4
  %523 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %524 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 26
  store i32 %522, i32* %525, align 4
  br label %539

526:                                              ; preds = %502
  %527 = load i32, i32* @XGBE_DMA_SYS_AXDOMAIN, align 4
  %528 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %529 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 28
  store i32 %527, i32* %530, align 4
  %531 = load i32, i32* @XGBE_DMA_SYS_ARCACHE, align 4
  %532 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %533 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %533, i32 0, i32 27
  store i32 %531, i32* %534, align 8
  %535 = load i32, i32* @XGBE_DMA_SYS_AWCACHE, align 4
  %536 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %537 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 26
  store i32 %535, i32* %538, align 4
  br label %539

539:                                              ; preds = %526, %513
  %540 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %541 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 25
  %543 = call i32 @spin_lock_init(i32* %542)
  %544 = load i32, i32* @M_WAITOK, align 4
  %545 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %546 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %547 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 24
  %549 = call i32 @taskqueue_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %544, i32 %545, i32* %548)
  %550 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %551 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 24
  store i32 %549, i32* %552, align 4
  %553 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %554 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i32 0, i32 24
  %556 = load i32, i32* @PI_NET, align 4
  %557 = call i32 @taskqueue_start_threads(i32* %555, i32 1, i32 %556, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %558 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %559 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 7
  %561 = call i32 @xgbe_init_function_ptrs_phy(%struct.TYPE_13__* %560)
  %562 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %563 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %563, i32 0, i32 22
  %565 = call i32 @xgbe_init_function_ptrs_dev(%struct.TYPE_14__* %564)
  %566 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %567 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i32 0, i32 23
  %569 = call i32 @xgbe_init_function_ptrs_desc(i32* %568)
  %570 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %571 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %571, i32 0, i32 22
  %573 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %572, i32 0, i32 0
  %574 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %573, align 8
  %575 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %576 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %575, i32 0, i32 0
  %577 = call i32 %574(%struct.TYPE_12__* %576)
  %578 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %579 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %578, i32 0, i32 0
  %580 = call i32 @xgbe_get_all_hw_features(%struct.TYPE_12__* %579)
  %581 = load i32, i32* @DMA_PBL_X8_ENABLE, align 4
  %582 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %583 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 21
  store i32 %581, i32* %584, align 4
  %585 = load i32, i32* @XGBE_TX_DESC_CNT, align 4
  %586 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %587 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %587, i32 0, i32 20
  store i32 %585, i32* %588, align 8
  %589 = load i32, i32* @MTL_TSF_ENABLE, align 4
  %590 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %591 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 19
  store i32 %589, i32* %592, align 4
  %593 = load i32, i32* @MTL_TX_THRESHOLD_64, align 4
  %594 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %595 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 18
  store i32 %593, i32* %596, align 8
  %597 = load i8*, i8** @DMA_PBL_16, align 8
  %598 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %599 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i32 0, i32 17
  store i8* %597, i8** %600, align 8
  %601 = load i32, i32* @DMA_OSP_ENABLE, align 4
  %602 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %603 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 16
  store i32 %601, i32* %604, align 4
  %605 = load i32, i32* @XGBE_RX_DESC_CNT, align 4
  %606 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %607 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %607, i32 0, i32 15
  store i32 %605, i32* %608, align 8
  %609 = load i32, i32* @MTL_RSF_DISABLE, align 4
  %610 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %611 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i32 0, i32 14
  store i32 %609, i32* %612, align 4
  %613 = load i32, i32* @MTL_RX_THRESHOLD_64, align 4
  %614 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %615 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 13
  store i32 %613, i32* %616, align 8
  %617 = load i8*, i8** @DMA_PBL_16, align 8
  %618 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %619 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %619, i32 0, i32 12
  store i8* %617, i8** %620, align 8
  %621 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %622 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %622, i32 0, i32 0
  store i32 1, i32* %623, align 8
  %624 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %625 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 1
  store i32 1, i32* %626, align 4
  %627 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %628 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %628, i32 0, i32 2
  store i32 1, i32* %629, align 8
  %630 = load i32, i32* @SPEED_UNKNOWN, align 4
  %631 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %632 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 11
  store i32 %630, i32* %633, align 8
  %634 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %635 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %635, i32 0, i32 10
  store i64 0, i64* %636, align 8
  %637 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %638 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %638, i32 0, i32 3
  store i32 1, i32* %639, align 4
  %640 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %641 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %641, i32 0, i32 4
  store i32 1, i32* %642, align 8
  %643 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %644 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %644, i32 0, i32 5
  store i32 1, i32* %645, align 4
  %646 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %647 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %647, i32 0, i32 8
  %649 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 8
  %651 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %652 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 9
  store i32 %650, i32* %653, align 4
  %654 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %655 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %655, i32 0, i32 7
  %657 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %656, i32 0, i32 0
  %658 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %657, align 8
  %659 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %660 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %659, i32 0, i32 0
  %661 = call i32 %658(%struct.TYPE_12__* %660)
  %662 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %663 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %662, i32 0, i32 0
  %664 = call i32 @xgbe_init_rx_coalesce(%struct.TYPE_12__* %663)
  %665 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %666 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %665, i32 0, i32 0
  %667 = call i32 @xgbe_init_tx_coalesce(%struct.TYPE_12__* %666)
  %668 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %669 = load i32, i32* %3, align 4
  %670 = call i32 @device_get_name(i32 %669)
  %671 = load i32, i32* %3, align 4
  %672 = call i32 @device_get_unit(i32 %671)
  %673 = call i32 @if_initname(%struct.ifnet* %668, i32 %670, i32 %672)
  %674 = load i32, i32* @axgbe_init, align 4
  %675 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %676 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %675, i32 0, i32 9
  store i32 %674, i32* %676, align 8
  %677 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %678 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %679 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %678, i32 0, i32 8
  store %struct.axgbe_softc* %677, %struct.axgbe_softc** %679, align 8
  %680 = load i32, i32* @IFF_BROADCAST, align 4
  %681 = load i32, i32* @IFF_SIMPLEX, align 4
  %682 = or i32 %680, %681
  %683 = load i32, i32* @IFF_MULTICAST, align 4
  %684 = or i32 %682, %683
  %685 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %686 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %685, i32 0, i32 0
  store i32 %684, i32* %686, align 8
  %687 = load i32, i32* @axgbe_ioctl, align 4
  %688 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %689 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %688, i32 0, i32 7
  store i32 %687, i32* %689, align 4
  %690 = load i32, i32* @xgbe_xmit, align 4
  %691 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %692 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %691, i32 0, i32 6
  store i32 %690, i32* %692, align 8
  %693 = load i32, i32* @axgbe_qflush, align 4
  %694 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %695 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %694, i32 0, i32 5
  store i32 %693, i32* %695, align 4
  %696 = load i32, i32* @axgbe_get_counter, align 4
  %697 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %698 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %697, i32 0, i32 4
  store i32 %696, i32* %698, align 8
  %699 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %700 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %699, i32 0, i32 3
  store i64 0, i64* %700, align 8
  %701 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %702 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %701, i32 0, i32 2
  store i64 0, i64* %702, align 8
  %703 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %704 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %703, i32 0, i32 1
  store i64 0, i64* %704, align 8
  %705 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %706 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %707 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 4
  %709 = call i32 @ether_ifattach(%struct.ifnet* %705, i32 %708)
  %710 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %711 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %710, i32 0, i32 1
  %712 = load i32, i32* @IFM_IMASK, align 4
  %713 = load i32, i32* @axgbe_media_change, align 4
  %714 = load i32, i32* @axgbe_media_status, align 4
  %715 = call i32 @ifmedia_init(i32* %711, i32 %712, i32 %713, i32 %714)
  %716 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %717 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %716, i32 0, i32 1
  %718 = load i32, i32* @IFM_ETHER, align 4
  %719 = load i32, i32* @IFM_1000_KX, align 4
  %720 = or i32 %718, %719
  %721 = call i32 @ifmedia_add(i32* %717, i32 %720, i32 0, i32* null)
  %722 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %723 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %722, i32 0, i32 1
  %724 = load i32, i32* @IFM_ETHER, align 4
  %725 = load i32, i32* @IFM_AUTO, align 4
  %726 = or i32 %724, %725
  %727 = call i32 @ifmedia_add(i32* %723, i32 %726, i32 0, i32* null)
  %728 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %729 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %728, i32 0, i32 1
  %730 = load i32, i32* @IFM_ETHER, align 4
  %731 = load i32, i32* @IFM_AUTO, align 4
  %732 = or i32 %730, %731
  %733 = call i32 @ifmedia_set(i32* %729, i32 %732)
  %734 = load i32, i32* @XGBE_DOWN, align 4
  %735 = load %struct.axgbe_softc*, %struct.axgbe_softc** %4, align 8
  %736 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %736, i32 0, i32 6
  %738 = call i32 @set_bit(i32 %734, i32* %737)
  %739 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %740 = call i64 @xgbe_open(%struct.ifnet* %739)
  %741 = icmp slt i64 %740, 0
  br i1 %741, label %742, label %746

742:                                              ; preds = %539
  %743 = load i32, i32* %3, align 4
  %744 = call i32 (i32, i8*, ...) @device_printf(i32 %743, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %745 = load i32, i32* @ENXIO, align 4
  store i32 %745, i32* %2, align 4
  br label %747

746:                                              ; preds = %539
  store i32 0, i32* %2, align 4
  br label %747

747:                                              ; preds = %746, %742, %477, %441, %405, %369, %333, %297, %281, %253, %237, %229, %138, %128, %30
  %748 = load i32, i32* %2, align 4
  ret i32 %748
}

declare dso_local %struct.axgbe_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, %struct.resource**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @OF_hasprop(i32, i8*) #1

declare dso_local i32 @nitems(%struct.resource**) #1

declare dso_local i32 @OF_device_from_xref(i32) #1

declare dso_local i64 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32, i64) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @axgbe_get_optional_prop(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @xgbe_init_function_ptrs_phy(%struct.TYPE_13__*) #1

declare dso_local i32 @xgbe_init_function_ptrs_dev(%struct.TYPE_14__*) #1

declare dso_local i32 @xgbe_init_function_ptrs_desc(i32*) #1

declare dso_local i32 @xgbe_get_all_hw_features(%struct.TYPE_12__*) #1

declare dso_local i32 @xgbe_init_rx_coalesce(%struct.TYPE_12__*) #1

declare dso_local i32 @xgbe_init_tx_coalesce(%struct.TYPE_12__*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @xgbe_open(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
