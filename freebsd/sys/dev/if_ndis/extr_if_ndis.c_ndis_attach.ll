; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i64, i32, i32, i32, i64*, i32, i64, i32*, i32, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PCIBus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PCI Bus\00", align 1
@PCMCIABus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PCCARD Bus\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"USB Bus\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to create FDO!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"NDIS API version: %d.%d\0A\00", align 1
@ndis_txeof_wrap = common dso_local global i32 0, align 4
@ndis_rxeof_wrap = common dso_local global i32 0, align 4
@ndis_rxeof_eth_wrap = common dso_local global i32 0, align 4
@ndis_rxeof_done_wrap = common dso_local global i32 0, align 4
@ndis_rxeof_xfr_done_wrap = common dso_local global i32 0, align 4
@ndis_linksts_wrap = common dso_local global i32 0, align 4
@ndis_linksts_done_wrap = common dso_local global i32 0, align 4
@ndis_rxeof_xfr_wrap = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"init handler failed\0A\00", align 1
@OID_GEN_MAXIMUM_SEND_PACKETS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get max TX packets\0A\00", align 1
@NDIS_TXPKTS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PROTOCOL_RESERVED_SIZE_IN_PACKET = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to allocate TX packet pool\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OID_802_11_CONFIGURATION = common dso_local global i64 0, align 8
@PNPBus = common dso_local global i64 0, align 8
@ndisusb_halt = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"attach done.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"halting done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndis_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ndis_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ndis_softc* @device_get_softc(i32 %10)
  store %struct.ndis_softc* %11, %struct.ndis_softc** %4, align 8
  %12 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %12, i32 0, i32 27
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %13, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %19, i32 0, i32 26
  %21 = call i32 @KeInitializeSpinLock(i32* %20)
  %22 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %22, i32 0, i32 25
  %24 = call i32 @KeInitializeSpinLock(i32* %23)
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %25, i32 0, i32 24
  %27 = call i32 @KeInitializeSpinLock(i32* %26)
  %28 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %28, i32 0, i32 23
  %30 = call i32 @InitializeListHead(i32* %29)
  %31 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %31, i32 0, i32 22
  %33 = call i32 @InitializeListHead(i32* %32)
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %34, i32 0, i32 21
  %36 = call i32 @InitializeListHead(i32* %35)
  %37 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %37, i32 0, i32 20
  %39 = call i32 @callout_init(i32* %38, i32 1)
  %40 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %40, i32 0, i32 19
  %42 = load i32, i32* @INT_MAX, align 4
  %43 = call i32 @mbufq_init(i32* %41, i32 %42)
  %44 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %45 = call i32 @ndis_create_sysctls(%struct.ndis_softc* %44)
  %46 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCIBus, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %52, i32** %5, align 8
  br label %64

53:                                               ; preds = %1
  %54 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCMCIABus, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %60, i32** %5, align 8
  br label %63

61:                                               ; preds = %53
  %62 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32* @windrv_find_pdo(i32* %65, i32 %66)
  store i32* %67, i32** %6, align 8
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @NdisAddDevice(i32 %70, i32* %71)
  %73 = load i64, i64* @STATUS_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %7, align 4
  br label %325

79:                                               ; preds = %64
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %81, i32 0, i32 17
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %86, i32 0, i32 17
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %90)
  %92 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCMCIABus, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %79
  %98 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PCIBus, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %79
  %104 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %105 = call i32 @ndis_convert_res(%struct.ndis_softc* %104)
  br label %111

106:                                              ; preds = %97
  %107 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %107, i32 0, i32 9
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 8
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* @ndis_txeof_wrap, align 4
  %113 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %113, i32 0, i32 9
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 7
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @ndis_rxeof_wrap, align 4
  %118 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %118, i32 0, i32 9
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  store i32 %117, i32* %121, align 8
  %122 = load i32, i32* @ndis_rxeof_eth_wrap, align 4
  %123 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %123, i32 0, i32 9
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @ndis_rxeof_done_wrap, align 4
  %128 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %129 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %128, i32 0, i32 9
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @ndis_rxeof_xfr_done_wrap, align 4
  %133 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %134 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %133, i32 0, i32 9
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @ndis_linksts_wrap, align 4
  %138 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %139 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %138, i32 0, i32 9
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* @ndis_linksts_done_wrap, align 4
  %143 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %144 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %143, i32 0, i32 9
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %147, i32 0, i32 9
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @IoAllocateWorkItem(i32 %151)
  %153 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %154 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %153, i32 0, i32 16
  store i8* %152, i8** %154, align 8
  %155 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %155, i32 0, i32 9
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @IoAllocateWorkItem(i32 %159)
  %161 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %162 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %161, i32 0, i32 15
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %164 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %163, i32 0, i32 9
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @IoAllocateWorkItem(i32 %167)
  %169 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %170 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %169, i32 0, i32 14
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %172 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %171, i32 0, i32 9
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @IoAllocateWorkItem(i32 %175)
  %177 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %178 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %177, i32 0, i32 13
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %179, i32 0, i32 9
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @IoAllocateWorkItem(i32 %183)
  %185 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %186 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %185, i32 0, i32 12
  store i8* %184, i8** %186, align 8
  %187 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %188 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %187, i32 0, i32 9
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @IoAllocateWorkItem(i32 %191)
  %193 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %194 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %193, i32 0, i32 11
  store i8* %192, i8** %194, align 8
  %195 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %196 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %195, i32 0, i32 10
  %197 = load i32, i32* @ndis_rxeof_xfr_wrap, align 4
  %198 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %199 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %198, i32 0, i32 9
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = call i32 @KeInitializeDpc(i32* %196, i32 %197, %struct.TYPE_5__* %200)
  %202 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %203 = call i64 @ndis_init_nic(%struct.ndis_softc* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %111
  %206 = load i32, i32* %3, align 4
  %207 = call i32 (i32, i8*, ...) @device_printf(i32 %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %208 = load i32, i32* @ENXIO, align 4
  store i32 %208, i32* %7, align 4
  br label %325

209:                                              ; preds = %111
  store i32 4, i32* %8, align 4
  %210 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %211 = load i32, i32* @OID_GEN_MAXIMUM_SEND_PACKETS, align 4
  %212 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %213 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %212, i32 0, i32 1
  %214 = call i64 @ndis_get_info(%struct.ndis_softc* %210, i32 %211, i32* %213, i32* %8)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i32, i32* %3, align 4
  %218 = call i32 (i32, i8*, ...) @device_printf(i32 %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %7, align 4
  br label %325

220:                                              ; preds = %209
  %221 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %222 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %221, i32 0, i32 9
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = call i32 @NDIS_SERIALIZED(%struct.TYPE_5__* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* @NDIS_TXPKTS, align 4
  %228 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %229 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %220
  %231 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %237 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %236, i32 0, i32 1
  store i32 10, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %230
  %239 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %240 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = mul i64 8, %242
  %244 = trunc i64 %243 to i32
  %245 = load i32, i32* @M_DEVBUF, align 4
  %246 = load i32, i32* @M_NOWAIT, align 4
  %247 = load i32, i32* @M_ZERO, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @malloc(i32 %244, i32 %245, i32 %248)
  %250 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %251 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 8
  %252 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %253 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %252, i32 0, i32 7
  %254 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %255 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @PROTOCOL_RESERVED_SIZE_IN_PACKET, align 4
  %258 = call i32 @NdisAllocatePacketPool(i32* %9, i32** %253, i32 %256, i32 %257)
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %238
  %263 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %264 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %263, i32 0, i32 7
  store i32* null, i32** %264, align 8
  %265 = load i32, i32* %3, align 4
  %266 = call i32 (i32, i8*, ...) @device_printf(i32 %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %267 = load i32, i32* @ENOMEM, align 4
  store i32 %267, i32* %7, align 4
  br label %325

268:                                              ; preds = %238
  %269 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %270 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %273 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  %274 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %275 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %274, i32 0, i32 3
  store i32 0, i32* %275, align 8
  %276 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %277 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %278 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %277, i32 0, i32 4
  %279 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %280 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %279, i32 0, i32 3
  %281 = call i32 @ndis_get_supported_oids(%struct.ndis_softc* %276, i64** %278, i32* %280)
  %282 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %283 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %268
  %287 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %288 = call i32 @ndis_init_dma(%struct.ndis_softc* %287)
  br label %289

289:                                              ; preds = %286, %268
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %310, %289
  %291 = load i32, i32* %9, align 4
  %292 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %293 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %290
  %297 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %298 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %297, i32 0, i32 4
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @OID_802_11_CONFIGURATION, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %296
  %307 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %308 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %307, i32 0, i32 5
  store i32 1, i32* %308, align 8
  br label %313

309:                                              ; preds = %296
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  br label %290

313:                                              ; preds = %306, %290
  %314 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %315 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %320 = call i32 @ndis_80211attach(%struct.ndis_softc* %319)
  store i32 %320, i32* %7, align 4
  br label %324

321:                                              ; preds = %313
  %322 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %323 = call i32 @ndis_ifattach(%struct.ndis_softc* %322)
  store i32 %323, i32* %7, align 4
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %262, %216, %205, %75
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @ndis_detach(i32 %329)
  %331 = load i32, i32* %7, align 4
  store i32 %331, i32* %2, align 4
  br label %349

332:                                              ; preds = %325
  %333 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %334 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @PNPBus, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load i64, i64* @ndisusb_halt, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %7, align 4
  store i32 %342, i32* %2, align 4
  br label %349

343:                                              ; preds = %338, %332
  %344 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %345 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %346 = call i32 @ndis_halt_nic(%struct.ndis_softc* %345)
  %347 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %343, %341, %328
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @KeInitializeSpinLock(i32*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @ndis_create_sysctls(%struct.ndis_softc*) #1

declare dso_local i32* @windrv_lookup(i32, i8*) #1

declare dso_local i32* @windrv_find_pdo(i32*, i32) #1

declare dso_local i64 @NdisAddDevice(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ndis_convert_res(%struct.ndis_softc*) #1

declare dso_local i8* @IoAllocateWorkItem(i32) #1

declare dso_local i32 @KeInitializeDpc(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @ndis_init_nic(%struct.ndis_softc*) #1

declare dso_local i64 @ndis_get_info(%struct.ndis_softc*, i32, i32*, i32*) #1

declare dso_local i32 @NDIS_SERIALIZED(%struct.TYPE_5__*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @NdisAllocatePacketPool(i32*, i32**, i32, i32) #1

declare dso_local i32 @ndis_get_supported_oids(%struct.ndis_softc*, i64**, i32*) #1

declare dso_local i32 @ndis_init_dma(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_80211attach(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_ifattach(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_detach(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ndis_halt_nic(%struct.ndis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
