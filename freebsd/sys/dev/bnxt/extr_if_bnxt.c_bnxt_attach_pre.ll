; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_21__, i32, %struct.TYPE_13__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.bnxt_softc*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i64, i64, i8*, i8*, i32*, i32, i32, i8*, i8* }

@BNXT_FLAG_NPAR = common dso_local global i32 0, align 4
@BNXT_FLAG_VF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate space for version info\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"attach: hwrm ver get failed\0A\00", align 1
@BNXT_FLAG_SHORT_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to allocate space for NVRAM info\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"attach: hwrm drv rgtr failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"attach: hwrm rgtr async evts failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"attach: hwrm func qcfg failed\0A\00", align 1
@bnxt_txrx = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"attach: hwrm qportcfg failed\0A\00", align 1
@BNXT_TSO_SIZE = common dso_local global i8* null, align 8
@BNXT_MIN_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [93 x i8] c"WARNING: nrxd0 (%d) should be at least 4 * nrxd1 (%d) + nrxd2 (%d).  Driver may be unstable\0A\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"WARNING: ntxd0 (%d) should be at least 2 * ntxd1 (%d).  Driver may be unstable\0A\00", align 1
@HW_HASH_INDEX_SIZE = common dso_local global i64 0, align 8
@HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX = common dso_local global i32 0, align 4
@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@bnxt_def_cp_task = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"dflt_cp\00", align 1
@HW_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bnxt_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bnxt_softc* @iflib_get_softc(i32 %7)
  store %struct.bnxt_softc* %8, %struct.bnxt_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 14
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  %14 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @iflib_get_media(i32 %16)
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_22__* @iflib_get_softc_ctx(i32 %20)
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 11
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @iflib_get_sctx(i32 %24)
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %26, i32 0, i32 12
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 11
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_get_device(i32 %33)
  switch i32 %34, label %47 [
    i32 143, label %35
    i32 142, label %35
    i32 141, label %35
    i32 140, label %35
    i32 139, label %35
    i32 138, label %35
    i32 137, label %35
    i32 136, label %35
    i32 135, label %35
    i32 134, label %35
    i32 133, label %41
    i32 132, label %41
    i32 131, label %41
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
  ]

35:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %36 = load i32, i32* @BNXT_FLAG_NPAR, align 4
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %47

41:                                               ; preds = %1, %1, %1, %1, %1, %1
  %42 = load i32, i32* @BNXT_FLAG_VF, align 4
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %1, %41, %35
  %48 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_enable_busmaster(i32 %50)
  %52 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %53 = call i64 @bnxt_pci_mapping(%struct.bnxt_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %697

57:                                               ; preds = %47
  %58 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %59 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = call i32 @BNXT_HWRM_LOCK_INIT(%struct.bnxt_softc* %58, i32 %62)
  %64 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %65 = call i32 @bnxt_alloc_hwrm_dma_mem(%struct.bnxt_softc* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %687

69:                                               ; preds = %57
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @malloc(i32 4, i32 %70, i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_14__*
  %76 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %76, i32 0, i32 2
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %77, align 8
  %78 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %78, i32 0, i32 2
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = icmp eq %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %69
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %6, align 4
  %84 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %85 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %684

88:                                               ; preds = %69
  %89 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %89, i32 0, i32 2
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %94 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 2, i32* %96, align 4
  %97 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %98 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i32 2, i32* %100, align 4
  %101 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %102 = call i32 @bnxt_hwrm_ver_get(%struct.bnxt_softc* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %88
  %106 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %107 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %678

110:                                              ; preds = %88
  %111 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %112 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BNXT_FLAG_SHORT_CMD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %119 = call i32 @bnxt_alloc_hwrm_short_cmd_req(%struct.bnxt_softc* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %677

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %126 = call i64 @BNXT_PF(%struct.bnxt_softc* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %174

128:                                              ; preds = %124
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = load i32, i32* @M_NOWAIT, align 4
  %131 = load i32, i32* @M_ZERO, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @malloc(i32 4, i32 %129, i32 %132)
  %134 = bitcast i8* %133 to %struct.TYPE_14__*
  %135 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %136 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %135, i32 0, i32 3
  store %struct.TYPE_14__* %134, %struct.TYPE_14__** %136, align 8
  %137 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %138 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %137, i32 0, i32 3
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = icmp eq %struct.TYPE_14__* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %128
  %142 = load i32, i32* @ENOMEM, align 4
  store i32 %142, i32* %6, align 4
  %143 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %144 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %674

147:                                              ; preds = %128
  %148 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %149 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %150 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %149, i32 0, i32 3
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 8
  %153 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %154 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %153, i32 0, i32 3
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 7
  %157 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %158 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %157, i32 0, i32 3
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 6
  %161 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %162 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %161, i32 0, i32 3
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  %165 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %166 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %165, i32 0, i32 3
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %170 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %169, i32 0, i32 3
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = call i32 @bnxt_hwrm_nvm_get_dev_info(%struct.bnxt_softc* %148, i32* %152, i32* %156, i32* %160, i32* %164, i32* %168, i32* %172)
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %147, %124
  %175 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %176 = call i32 @bnxt_hwrm_func_drv_rgtr(%struct.bnxt_softc* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %181 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %663

184:                                              ; preds = %174
  %185 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %186 = call i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt_softc* %185, i32* null, i32 0)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %191 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %663

194:                                              ; preds = %184
  %195 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %196 = call i32 @bnxt_hwrm_func_qcaps(%struct.bnxt_softc* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %657

200:                                              ; preds = %194
  %201 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %202 = call i32 @bnxt_hwrm_func_qcfg(%struct.bnxt_softc* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %207 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @device_printf(i32 %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %657

210:                                              ; preds = %200
  %211 = load i32, i32* %3, align 4
  %212 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %213 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %212, i32 0, i32 10
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @iflib_set_mac(i32 %211, i32 %215)
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 14
  store i32* @bnxt_txrx, i32** %218, align 8
  %219 = load i32, i32* @CSUM_IP, align 4
  %220 = load i32, i32* @CSUM_TCP, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @CSUM_UDP, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @CSUM_TSO, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @IFCAP_TXCSUM, align 4
  %233 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @IFCAP_TSO4, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @IFCAP_TSO6, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @IFCAP_LRO, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @IFCAP_RXCSUM, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  store i32 %256, i32* %260, align 4
  %261 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %262 = call i64 @bnxt_wol_supported(%struct.bnxt_softc* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %210
  %265 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %210
  %271 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %272 = call i32 @bnxt_hwrm_queue_qportcfg(%struct.bnxt_softc* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %277 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32, i8*, ...) @device_printf(i32 %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %657

280:                                              ; preds = %270
  %281 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %282 = call i32 @bnxt_get_wol_settings(%struct.bnxt_softc* %281)
  %283 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %284 = call i32 @bnxt_hwrm_func_reset(%struct.bnxt_softc* %283)
  store i32 %284, i32* %6, align 4
  %285 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %286 = call i32 @bnxt_clear_ids(%struct.bnxt_softc* %285)
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %657

290:                                              ; preds = %280
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 3
  store i32 31, i32* %292, align 4
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 4
  store i32 31, i32* %294, align 8
  %295 = load i8*, i8** @BNXT_TSO_SIZE, align 8
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 18
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** @BNXT_TSO_SIZE, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 17
  store i8* %298, i8** %300, align 8
  %301 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %302 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %301, i32 0, i32 10
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 16
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* @BNXT_MIN_FRAME_SIZE, align 4
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 15
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 14
  store i32* @bnxt_txrx, i32** %311, align 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 5
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %321, 4
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 5
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 2
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %322, %327
  %329 = icmp slt i32 %316, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %290
  %331 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %332 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 5
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 5
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 5
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 2
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (i32, i8*, ...) @device_printf(i32 %333, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i64 0, i64 0), i32 %338, i32 %343, i32 %348)
  br label %350

350:                                              ; preds = %330, %290
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 6
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 6
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %360, 2
  %362 = icmp slt i32 %355, %361
  br i1 %362, label %363, label %378

363:                                              ; preds = %350
  %364 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %365 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 6
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 6
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 (i32, i8*, ...) @device_printf(i32 %366, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %371, i32 %376)
  br label %378

378:                                              ; preds = %363, %350
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 6
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = mul i64 4, %384
  %386 = trunc i64 %385 to i32
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 7
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  store i32 %386, i32* %390, align 4
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 6
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = mul i64 4, %396
  %398 = trunc i64 %397 to i32
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 7
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  store i32 %398, i32* %402, align 4
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %403, i32 0, i32 5
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = mul i64 4, %408
  %410 = trunc i64 %409 to i32
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 8
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 0
  store i32 %410, i32* %414, align 4
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 5
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = mul i64 4, %420
  %422 = trunc i64 %421 to i32
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 8
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  store i32 %422, i32* %426, align 4
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 5
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 2
  %431 = load i32, i32* %430, align 4
  %432 = sext i32 %431 to i64
  %433 = mul i64 4, %432
  %434 = trunc i64 %433 to i32
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 8
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 2
  store i32 %434, i32* %438, align 4
  %439 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %440 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i8* @pci_msix_count(i32 %441)
  %443 = getelementptr i8, i8* %442, i64 -1
  %444 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %445 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %444, i32 0, i32 9
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %447 = load i8*, i8** %446, align 8
  %448 = getelementptr i8, i8* %447, i64 -1
  %449 = call i8* @min(i8* %443, i8* %448)
  %450 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 12
  store i8* %449, i8** %451, align 8
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 12
  %454 = load i8*, i8** %453, align 8
  %455 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %456 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %455, i32 0, i32 9
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i32 0, i32 3
  %458 = load i8*, i8** %457, align 8
  %459 = call i8* @min(i8* %454, i8* %458)
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 12
  store i8* %459, i8** %461, align 8
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %462, i32 0, i32 12
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %466 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %465, i32 0, i32 9
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 2
  %468 = load i8*, i8** %467, align 8
  %469 = call i8* @min(i8* %464, i8* %468)
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 12
  store i8* %469, i8** %471, align 8
  %472 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %473 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %472, i32 0, i32 9
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 1
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %477 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %476, i32 0, i32 9
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 0
  %479 = load i8*, i8** %478, align 8
  %480 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 12
  %482 = load i8*, i8** %481, align 8
  %483 = ptrtoint i8* %479 to i64
  %484 = ptrtoint i8* %482 to i64
  %485 = sub i64 %483, %484
  %486 = sub nsw i64 %485, 1
  %487 = inttoptr i64 %486 to i8*
  %488 = call i8* @min(i8* %475, i8* %487)
  %489 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 13
  store i8* %488, i8** %490, align 8
  %491 = load i64, i64* @HW_HASH_INDEX_SIZE, align 8
  %492 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %492, i32 0, i32 10
  store i64 %491, i64* %493, align 8
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 10
  %496 = load i64, i64* %495, align 8
  %497 = sub nsw i64 %496, 1
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 11
  store i64 %497, i64* %499, align 8
  %500 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %501 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @pci_msix_table_bar(i32 %502)
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 9
  store i32 %503, i32* %505, align 8
  %506 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %507 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %506, i32 0, i32 8
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 4
  store i64 0, i64* %508, align 8
  %509 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %510 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %509, i32 0, i32 8
  %511 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %510, i32 0, i32 3
  store i64 0, i64* %511, align 8
  %512 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %513 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %512, i32 0, i32 8
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 0
  store i32 5, i32* %514, align 8
  %515 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX, align 4
  %516 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %517 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %516, i32 0, i32 8
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 2
  store i32 %515, i32* %518, align 8
  %519 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %520 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %519, i32 0, i32 8
  %521 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %520, i32 0, i32 1
  store i32 512, i32* %521, align 4
  %522 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %523 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %524 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %523, i32 0, i32 7
  %525 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %524, i32 0, i32 1
  store i64 %522, i64* %525, align 8
  %526 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %527 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %528 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %527, i32 0, i32 7
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 6
  store i64 %526, i64* %530, align 8
  %531 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %532 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %533 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %532, i32 0, i32 7
  %534 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 5
  store %struct.bnxt_softc* %531, %struct.bnxt_softc** %535, align 8
  %536 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %537 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %538, i32 0, i32 0
  store i32 0, i32* %539, align 8
  %540 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %541 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %540, i32 0, i32 7
  %542 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = mul nsw i32 %544, 128
  %546 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %547 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %546, i32 0, i32 7
  %548 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %548, i32 0, i32 1
  store i32 %545, i32* %549, align 4
  %550 = load i32, i32* @PAGE_SIZE, align 4
  %551 = sext i32 %550 to i64
  %552 = udiv i64 %551, 4
  %553 = trunc i64 %552 to i32
  %554 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %555 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %554, i32 0, i32 7
  %556 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %556, i32 0, i32 2
  store i32 %553, i32* %557, align 8
  %558 = load i32, i32* %3, align 4
  %559 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %560 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %559, i32 0, i32 7
  %561 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 8
  %564 = sext i32 %563 to i64
  %565 = mul i64 4, %564
  %566 = trunc i64 %565 to i32
  %567 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %568 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %567, i32 0, i32 6
  %569 = call i32 @iflib_dma_alloc(i32 %558, i32 %566, %struct.TYPE_13__* %568, i32 0)
  store i32 %569, i32* %6, align 4
  %570 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %571 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %570, i32 0, i32 6
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %575 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %574, i32 0, i32 7
  %576 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %576, i32 0, i32 4
  store i32 %573, i32* %577, align 8
  %578 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %579 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %578, i32 0, i32 6
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %583 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %582, i32 0, i32 7
  %584 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %584, i32 0, i32 3
  store i32 %581, i32* %585, align 4
  %586 = load i32, i32* %3, align 4
  %587 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %588 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %587, i32 0, i32 5
  %589 = load i32, i32* @bnxt_def_cp_task, align 4
  %590 = call i32 @iflib_config_gtask_init(i32 %586, i32* %588, i32 %589, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %591 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %592 = call i32 @bnxt_init_sysctl_ctx(%struct.bnxt_softc* %591)
  store i32 %592, i32* %6, align 4
  %593 = load i32, i32* %6, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %378
  br label %660

596:                                              ; preds = %378
  %597 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %598 = call i64 @BNXT_PF(%struct.bnxt_softc* %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %609

600:                                              ; preds = %596
  %601 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %602 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %601, i32 0, i32 3
  %603 = load %struct.TYPE_14__*, %struct.TYPE_14__** %602, align 8
  %604 = call i32 @bnxt_create_nvram_sysctls(%struct.TYPE_14__* %603)
  store i32 %604, i32* %6, align 4
  %605 = load i32, i32* %6, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %600
  br label %657

608:                                              ; preds = %600
  br label %609

609:                                              ; preds = %608, %596
  %610 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %611 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %610, i32 0, i32 4
  %612 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %615 = call i32 @arc4rand(i32 %613, i32 %614, i32 0)
  %616 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV4, align 4
  %617 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV4, align 4
  %618 = or i32 %616, %617
  %619 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV4, align 4
  %620 = or i32 %618, %619
  %621 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV6, align 4
  %622 = or i32 %620, %621
  %623 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV6, align 4
  %624 = or i32 %622, %623
  %625 = load i32, i32* @HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV6, align 4
  %626 = or i32 %624, %625
  %627 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %628 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %627, i32 0, i32 4
  %629 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %628, i32 0, i32 0
  store i32 %626, i32* %629, align 8
  %630 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %631 = call i32 @bnxt_create_config_sysctls_pre(%struct.bnxt_softc* %630)
  store i32 %631, i32* %6, align 4
  %632 = load i32, i32* %6, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %635

634:                                              ; preds = %609
  br label %657

635:                                              ; preds = %609
  %636 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %637 = call i32 @bnxt_create_hw_lro_sysctls(%struct.bnxt_softc* %636)
  store i32 %637, i32* %6, align 4
  %638 = load i32, i32* %6, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %641

640:                                              ; preds = %635
  br label %657

641:                                              ; preds = %635
  %642 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %643 = call i32 @bnxt_create_pause_fc_sysctls(%struct.bnxt_softc* %642)
  store i32 %643, i32* %6, align 4
  %644 = load i32, i32* %6, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %647

646:                                              ; preds = %641
  br label %657

647:                                              ; preds = %641
  %648 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %649 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %648, i32 0, i32 4
  %650 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %649, i32 0, i32 2
  %651 = call i32 @SLIST_INIT(i32* %650)
  %652 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %653 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %652, i32 0, i32 4
  %654 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %654, i32 0, i32 0
  store i32* null, i32** %655, align 8
  %656 = load i32, i32* %6, align 4
  store i32 %656, i32* %2, align 4
  br label %697

657:                                              ; preds = %646, %640, %634, %607, %289, %275, %205, %199
  %658 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %659 = call i32 @bnxt_free_sysctl_ctx(%struct.bnxt_softc* %658)
  br label %660

660:                                              ; preds = %657, %595
  %661 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %662 = call i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt_softc* %661, i32 0)
  br label %663

663:                                              ; preds = %660, %189, %179
  %664 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %665 = call i64 @BNXT_PF(%struct.bnxt_softc* %664)
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %673

667:                                              ; preds = %663
  %668 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %669 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %668, i32 0, i32 3
  %670 = load %struct.TYPE_14__*, %struct.TYPE_14__** %669, align 8
  %671 = load i32, i32* @M_DEVBUF, align 4
  %672 = call i32 @free(%struct.TYPE_14__* %670, i32 %671)
  br label %673

673:                                              ; preds = %667, %663
  br label %674

674:                                              ; preds = %673, %141
  %675 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %676 = call i32 @bnxt_free_hwrm_short_cmd_req(%struct.bnxt_softc* %675)
  br label %677

677:                                              ; preds = %674, %122
  br label %678

678:                                              ; preds = %677, %105
  %679 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %680 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %679, i32 0, i32 2
  %681 = load %struct.TYPE_14__*, %struct.TYPE_14__** %680, align 8
  %682 = load i32, i32* @M_DEVBUF, align 4
  %683 = call i32 @free(%struct.TYPE_14__* %681, i32 %682)
  br label %684

684:                                              ; preds = %678, %82
  %685 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %686 = call i32 @bnxt_free_hwrm_dma_mem(%struct.bnxt_softc* %685)
  br label %687

687:                                              ; preds = %684, %68
  %688 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %689 = call i32 @BNXT_HWRM_LOCK_DESTROY(%struct.bnxt_softc* %688)
  %690 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %691 = call i32 @bnxt_pci_mapping_free(%struct.bnxt_softc* %690)
  %692 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %693 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = call i32 @pci_disable_busmaster(i32 %694)
  %696 = load i32, i32* %6, align 4
  store i32 %696, i32* %2, align 4
  br label %697

697:                                              ; preds = %687, %647, %55
  %698 = load i32, i32* %2, align 4
  ret i32 %698
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_get_media(i32) #1

declare dso_local %struct.TYPE_22__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @iflib_get_sctx(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @bnxt_pci_mapping(%struct.bnxt_softc*) #1

declare dso_local i32 @BNXT_HWRM_LOCK_INIT(%struct.bnxt_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bnxt_alloc_hwrm_dma_mem(%struct.bnxt_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bnxt_hwrm_ver_get(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_alloc_hwrm_short_cmd_req(%struct.bnxt_softc*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_nvm_get_dev_info(%struct.bnxt_softc*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bnxt_hwrm_func_drv_rgtr(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt_softc*, i32*, i32) #1

declare dso_local i32 @bnxt_hwrm_func_qcaps(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_func_qcfg(%struct.bnxt_softc*) #1

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i64 @bnxt_wol_supported(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_queue_qportcfg(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_get_wol_settings(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_func_reset(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_clear_ids(%struct.bnxt_softc*) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @pci_msix_count(i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i32 @iflib_dma_alloc(i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @iflib_config_gtask_init(i32, i32*, i32, i8*) #1

declare dso_local i32 @bnxt_init_sysctl_ctx(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_create_nvram_sysctls(%struct.TYPE_14__*) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i32 @bnxt_create_config_sysctls_pre(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_create_hw_lro_sysctls(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_create_pause_fc_sysctls(%struct.bnxt_softc*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @bnxt_free_sysctl_ctx(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt_softc*, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bnxt_free_hwrm_short_cmd_req(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_free_hwrm_dma_mem(%struct.bnxt_softc*) #1

declare dso_local i32 @BNXT_HWRM_LOCK_DESTROY(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_pci_mapping_free(%struct.bnxt_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
