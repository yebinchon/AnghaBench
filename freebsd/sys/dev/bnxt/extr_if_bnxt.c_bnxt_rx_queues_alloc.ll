; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i32, %struct.bnxt_softc* }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8*, i32, %struct.bnxt_softc* }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i32, i32, i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to allocate RX completion rings\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to allocate RX rings\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to allocate aggregation rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to allocate ring groups\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@RX_TPA_START_CMPL_AGG_ID_MASK = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_AGG_ID_SFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for TPA\0A\00", align 1
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_BCAST = common dso_local global i32 0, align 4
@BNXT_VNIC_FLAG_DEFAULT = common dso_local global i32 0, align 4
@BNXT_MAX_MC_ADDRS = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@HW_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HW_HASH_INDEX_SIZE = common dso_local global i32 0, align 4
@BNXT_PORT_STAT_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**, i32, i32)* @bnxt_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_rx_queues_alloc(i32 %0, i8** %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnxt_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.bnxt_softc* @iflib_get_softc(i32 %15)
  store %struct.bnxt_softc* %16, %struct.bnxt_softc** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @malloc(i32 %20, i32 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_11__*
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 1
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iflib_get_dev(i32 %34)
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %14, align 4
  br label %767

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @malloc(i32 %42, i32 %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_11__*
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 2
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @iflib_get_dev(i32 %56)
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %14, align 4
  br label %761

60:                                               ; preds = %38
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = load i32, i32* @M_NOWAIT, align 4
  %67 = load i32, i32* @M_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = call i8* @malloc(i32 %64, i32 %65, i32 %68)
  %70 = bitcast i8* %69 to %struct.TYPE_11__*
  %71 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %72 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %71, i32 0, i32 3
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %74 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @iflib_get_dev(i32 %78)
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %14, align 4
  br label %755

82:                                               ; preds = %60
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @M_DEVBUF, align 4
  %88 = load i32, i32* @M_NOWAIT, align 4
  %89 = load i32, i32* @M_ZERO, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @malloc(i32 %86, i32 %87, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_11__*
  %93 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %94 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %93, i32 0, i32 4
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %94, align 8
  %95 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %96 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %95, i32 0, i32 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = icmp ne %struct.TYPE_11__* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @iflib_get_dev(i32 %100)
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %14, align 4
  br label %749

104:                                              ; preds = %82
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %111 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %110, i32 0, i32 5
  %112 = call i32 @iflib_dma_alloc(i32 %105, i32 %109, %struct.TYPE_10__* %111, i32 0)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %743

116:                                              ; preds = %104
  %117 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %118 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %122 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %126 = call i32 @bus_dmamap_sync(i32 %120, i32 %124, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %129 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %128, i32 0, i32 6
  %130 = call i32 @iflib_dma_alloc(i32 %127, i32 516, %struct.TYPE_10__* %129, i32 0)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %116
  br label %739

134:                                              ; preds = %116
  %135 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %136 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %140 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %144 = call i32 @bus_dmamap_sync(i32 %138, i32 %142, i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %147 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %146, i32 0, i32 7
  %148 = call i32 @iflib_dma_alloc(i32 %145, i32 516, %struct.TYPE_10__* %147, i32 0)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %735

152:                                              ; preds = %134
  %153 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %154 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %158 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %162 = call i32 @bus_dmamap_sync(i32 %156, i32 %160, i32 %161)
  %163 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %164 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %169 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %168, i32 0, i32 12
  store i8* %167, i8** %169, align 8
  %170 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %171 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %176 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %175, i32 0, i32 11
  store i8* %174, i8** %176, align 8
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %565, %152
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %568

181:                                              ; preds = %177
  %182 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %183 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %184 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %183, i32 0, i32 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 8
  store i64 %182, i64* %189, align 8
  %190 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %193 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  store i8* %191, i8** %199, align 8
  %200 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %201 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %202 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %201, i32 0, i32 1
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 6
  store %struct.bnxt_softc* %200, %struct.bnxt_softc** %208, align 8
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %212 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %211, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  store i32 %210, i32* %218, align 8
  %219 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %220 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %219, i32 0, i32 1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = mul nsw i32 %227, 128
  %229 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %230 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %229, i32 0, i32 1
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  store i32 %228, i32* %236, align 4
  %237 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %238 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %237, i32 0, i32 9
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %245 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 5
  store i32 %243, i32* %251, align 8
  %252 = load i8**, i8*** %8, align 8
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %10, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %252, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %260 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %259, i32 0, i32 1
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 4
  store i8* %258, i8** %266, align 8
  %267 = load i8**, i8*** %9, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %10, align 4
  %270 = mul nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %267, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %275 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %274, i32 0, i32 1
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %275, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  store i8* %273, i8** %281, align 8
  %282 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %283 = inttoptr i64 %282 to i8*
  %284 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %285 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %284, i32 0, i32 2
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 5
  store i8* %283, i8** %290, align 8
  %291 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %292 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %293 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %292, i32 0, i32 2
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 14
  store %struct.bnxt_softc* %291, %struct.bnxt_softc** %298, align 8
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, 1
  %301 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %302 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %301, i32 0, i32 2
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  store i32 %300, i32* %307, align 8
  %308 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %309 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %308, i32 0, i32 2
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %315, 128
  %317 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %318 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %317, i32 0, i32 2
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  store i32 %316, i32* %323, align 4
  %324 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %325 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %324, i32 0, i32 9
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %332 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %331, i32 0, i32 2
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 13
  store i32 %330, i32* %337, align 8
  %338 = load i8**, i8*** %8, align 8
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* %10, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %338, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %347 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %346, i32 0, i32 2
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = load i32, i32* %13, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 12
  store i8* %345, i8** %352, align 8
  %353 = load i8**, i8*** %9, align 8
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %10, align 4
  %356 = mul nsw i32 %354, %355
  %357 = add nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %353, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %362 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %361, i32 0, i32 2
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 11
  store i8* %360, i8** %367, align 8
  %368 = load i32, i32* @RX_TPA_START_CMPL_AGG_ID_MASK, align 4
  %369 = load i32, i32* @RX_TPA_START_CMPL_AGG_ID_SFT, align 4
  %370 = ashr i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = mul i64 4, %371
  %373 = trunc i64 %372 to i32
  %374 = load i32, i32* @M_DEVBUF, align 4
  %375 = load i32, i32* @M_NOWAIT, align 4
  %376 = load i32, i32* @M_ZERO, align 4
  %377 = or i32 %375, %376
  %378 = call i8* @malloc(i32 %373, i32 %374, i32 %377)
  %379 = bitcast i8* %378 to %struct.TYPE_11__*
  %380 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %381 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %380, i32 0, i32 2
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %381, align 8
  %383 = load i32, i32* %13, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 2
  store %struct.TYPE_11__* %379, %struct.TYPE_11__** %386, align 8
  %387 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %388 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %387, i32 0, i32 2
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %388, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = icmp eq %struct.TYPE_11__* %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %181
  %397 = load i32, i32* @ENOMEM, align 4
  %398 = sub nsw i32 0, %397
  store i32 %398, i32* %14, align 4
  %399 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %400 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %399, i32 0, i32 10
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @device_printf(i32 %401, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %710

403:                                              ; preds = %181
  %404 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %405 = inttoptr i64 %404 to i8*
  %406 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %407 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %406, i32 0, i32 3
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %407, align 8
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 5
  store i8* %405, i8** %412, align 8
  %413 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %414 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %415 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %414, i32 0, i32 3
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %415, align 8
  %417 = load i32, i32* %13, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 14
  store %struct.bnxt_softc* %413, %struct.bnxt_softc** %420, align 8
  %421 = load i32, i32* %11, align 4
  %422 = load i32, i32* %13, align 4
  %423 = add nsw i32 %421, %422
  %424 = add nsw i32 %423, 1
  %425 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %426 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %425, i32 0, i32 3
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = load i32, i32* %13, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  store i32 %424, i32* %431, align 8
  %432 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %433 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %432, i32 0, i32 3
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %433, align 8
  %435 = load i32, i32* %13, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = mul nsw i32 %439, 128
  %441 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %442 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %441, i32 0, i32 3
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %442, align 8
  %444 = load i32, i32* %13, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 1
  store i32 %440, i32* %447, align 4
  %448 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %449 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %448, i32 0, i32 9
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %456 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %455, i32 0, i32 3
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %456, align 8
  %458 = load i32, i32* %13, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 13
  store i32 %454, i32* %461, align 8
  %462 = load i8**, i8*** %8, align 8
  %463 = load i32, i32* %13, align 4
  %464 = load i32, i32* %10, align 4
  %465 = mul nsw i32 %463, %464
  %466 = add nsw i32 %465, 2
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*, i8** %462, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %471 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %470, i32 0, i32 3
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %471, align 8
  %473 = load i32, i32* %13, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 12
  store i8* %469, i8** %476, align 8
  %477 = load i8**, i8*** %9, align 8
  %478 = load i32, i32* %13, align 4
  %479 = load i32, i32* %10, align 4
  %480 = mul nsw i32 %478, %479
  %481 = add nsw i32 %480, 2
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8*, i8** %477, i64 %482
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %486 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %485, i32 0, i32 3
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %486, align 8
  %488 = load i32, i32* %13, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 11
  store i8* %484, i8** %491, align 8
  %492 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %493 = inttoptr i64 %492 to i8*
  %494 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %495 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %494, i32 0, i32 4
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %495, align 8
  %497 = load i32, i32* %13, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 10
  store i8* %493, i8** %500, align 8
  %501 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %502 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %501, i32 0, i32 1
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %502, align 8
  %504 = load i32, i32* %13, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 8
  %508 = load i64, i64* %507, align 8
  %509 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %510 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %509, i32 0, i32 4
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** %510, align 8
  %512 = load i32, i32* %13, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 9
  store i64 %508, i64* %515, align 8
  %516 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %517 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %516, i32 0, i32 2
  %518 = load %struct.TYPE_11__*, %struct.TYPE_11__** %517, align 8
  %519 = load i32, i32* %13, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 5
  %523 = load i8*, i8** %522, align 8
  %524 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %525 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %524, i32 0, i32 4
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %525, align 8
  %527 = load i32, i32* %13, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 7
  store i8* %523, i8** %530, align 8
  %531 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %532 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %531, i32 0, i32 3
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %532, align 8
  %534 = load i32, i32* %13, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %536, i32 0, i32 5
  %538 = load i8*, i8** %537, align 8
  %539 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %540 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %539, i32 0, i32 4
  %541 = load %struct.TYPE_11__*, %struct.TYPE_11__** %540, align 8
  %542 = load i32, i32* %13, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 6
  store i8* %538, i8** %545, align 8
  %546 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %547 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %546, i32 0, i32 1
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** %547, align 8
  %549 = load i32, i32* %13, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 2
  %554 = load i8*, i8** %553, align 8
  %555 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %556 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %555, i32 0, i32 4
  %557 = load %struct.TYPE_11__*, %struct.TYPE_11__** %556, align 8
  %558 = load i32, i32* %13, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 4
  store i8* %554, i8** %561, align 8
  %562 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %563 = load i32, i32* %13, align 4
  %564 = call i32 @bnxt_create_rx_sysctls(%struct.bnxt_softc* %562, i32 %563)
  br label %565

565:                                              ; preds = %403
  %566 = load i32, i32* %13, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %13, align 4
  br label %177

568:                                              ; preds = %177
  %569 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %570 = call i64 @BNXT_PF(%struct.bnxt_softc* %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %568
  %573 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %574 = call i32 @bnxt_create_port_stats_sysctls(%struct.bnxt_softc* %573)
  br label %575

575:                                              ; preds = %572, %568
  %576 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %577 = inttoptr i64 %576 to i8*
  %578 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %579 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %578, i32 0, i32 8
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 12
  store i8* %577, i8** %580, align 8
  %581 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %582 = inttoptr i64 %581 to i8*
  %583 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %584 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %583, i32 0, i32 8
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 11
  store i8* %582, i8** %585, align 8
  %586 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %587 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %586, i32 0, i32 8
  %588 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %587, i32 0, i32 0
  store i32 -1, i32* %588, align 8
  %589 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %590 = inttoptr i64 %589 to i8*
  %591 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %592 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %591, i32 0, i32 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 10
  store i8* %590, i8** %593, align 8
  %594 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %595 = inttoptr i64 %594 to i8*
  %596 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %597 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %596, i32 0, i32 8
  %598 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %597, i32 0, i32 9
  store i8* %595, i8** %598, align 8
  %599 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %600 = inttoptr i64 %599 to i8*
  %601 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %602 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %601, i32 0, i32 8
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 8
  store i8* %600, i8** %603, align 8
  %604 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_BCAST, align 4
  %605 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %606 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %605, i32 0, i32 8
  %607 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %606, i32 0, i32 7
  store i32 %604, i32* %607, align 8
  %608 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %609 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %608, i32 0, i32 8
  %610 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %609, i32 0, i32 6
  store i64 0, i64* %610, align 8
  %611 = load i32, i32* @BNXT_VNIC_FLAG_DEFAULT, align 4
  %612 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %613 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %612, i32 0, i32 8
  %614 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %613, i32 0, i32 5
  store i32 %611, i32* %614, align 4
  %615 = load i32, i32* %7, align 4
  %616 = load i32, i32* @BNXT_MAX_MC_ADDRS, align 4
  %617 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %618 = mul nsw i32 %616, %617
  %619 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %620 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %619, i32 0, i32 8
  %621 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %620, i32 0, i32 1
  %622 = call i32 @iflib_dma_alloc(i32 %615, i32 %618, %struct.TYPE_10__* %621, i32 0)
  store i32 %622, i32* %14, align 4
  %623 = load i32, i32* %14, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %626

625:                                              ; preds = %575
  br label %711

626:                                              ; preds = %575
  %627 = load i32, i32* %7, align 4
  %628 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %629 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %630 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %629, i32 0, i32 8
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 2
  %632 = call i32 @iflib_dma_alloc(i32 %627, i32 %628, %struct.TYPE_10__* %631, i32 0)
  store i32 %632, i32* %14, align 4
  %633 = load i32, i32* %14, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %636

635:                                              ; preds = %626
  br label %705

636:                                              ; preds = %626
  %637 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %638 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %637, i32 0, i32 8
  %639 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %638, i32 0, i32 2
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %643 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %642, i32 0, i32 8
  %644 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %643, i32 0, i32 2
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %644, i32 0, i32 2
  %646 = load i32, i32* %645, align 8
  %647 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %648 = call i32 @bus_dmamap_sync(i32 %641, i32 %646, i32 %647)
  %649 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %650 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %649, i32 0, i32 8
  %651 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %650, i32 0, i32 2
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 1
  %653 = load i64, i64* %652, align 8
  %654 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %655 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %654, i32 0, i32 8
  %656 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %655, i32 0, i32 4
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %659 = call i32 @memcpy(i64 %653, i32 %657, i32 %658)
  %660 = load i32, i32* %7, align 4
  %661 = load i32, i32* @HW_HASH_INDEX_SIZE, align 4
  %662 = sext i32 %661 to i64
  %663 = mul i64 %662, 8
  %664 = trunc i64 %663 to i32
  %665 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %666 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %665, i32 0, i32 8
  %667 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %666, i32 0, i32 3
  %668 = call i32 @iflib_dma_alloc(i32 %660, i32 %664, %struct.TYPE_10__* %667, i32 0)
  store i32 %668, i32* %14, align 4
  %669 = load i32, i32* %14, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %672

671:                                              ; preds = %636
  br label %700

672:                                              ; preds = %636
  %673 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %674 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %673, i32 0, i32 8
  %675 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %674, i32 0, i32 3
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 3
  %677 = load i32, i32* %676, align 4
  %678 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %679 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %678, i32 0, i32 8
  %680 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i32 0, i32 3
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 8
  %683 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %684 = call i32 @bus_dmamap_sync(i32 %677, i32 %682, i32 %683)
  %685 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %686 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %685, i32 0, i32 8
  %687 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %686, i32 0, i32 3
  %688 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %691 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %690, i32 0, i32 8
  %692 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %691, i32 0, i32 3
  %693 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = call i32 @memset(i64 %689, i32 255, i32 %694)
  %696 = load i32, i32* %11, align 4
  %697 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %698 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %697, i32 0, i32 0
  store i32 %696, i32* %698, align 8
  %699 = load i32, i32* %14, align 4
  store i32 %699, i32* %6, align 4
  br label %769

700:                                              ; preds = %671
  %701 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %702 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %701, i32 0, i32 8
  %703 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %702, i32 0, i32 2
  %704 = call i32 @iflib_dma_free(%struct.TYPE_10__* %703)
  br label %705

705:                                              ; preds = %700, %635
  %706 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %707 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %706, i32 0, i32 8
  %708 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %707, i32 0, i32 1
  %709 = call i32 @iflib_dma_free(%struct.TYPE_10__* %708)
  br label %710

710:                                              ; preds = %705, %396
  br label %711

711:                                              ; preds = %710, %625
  %712 = load i32, i32* %13, align 4
  %713 = sub nsw i32 %712, 1
  store i32 %713, i32* %13, align 4
  br label %714

714:                                              ; preds = %728, %711
  %715 = load i32, i32* %13, align 4
  %716 = icmp sge i32 %715, 0
  br i1 %716, label %717, label %731

717:                                              ; preds = %714
  %718 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %719 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %718, i32 0, i32 2
  %720 = load %struct.TYPE_11__*, %struct.TYPE_11__** %719, align 8
  %721 = load i32, i32* %13, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %720, i64 %722
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 2
  %725 = load %struct.TYPE_11__*, %struct.TYPE_11__** %724, align 8
  %726 = load i32, i32* @M_DEVBUF, align 4
  %727 = call i32 @free(%struct.TYPE_11__* %725, i32 %726)
  br label %728

728:                                              ; preds = %717
  %729 = load i32, i32* %13, align 4
  %730 = add nsw i32 %729, -1
  store i32 %730, i32* %13, align 4
  br label %714

731:                                              ; preds = %714
  %732 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %733 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %732, i32 0, i32 7
  %734 = call i32 @iflib_dma_free(%struct.TYPE_10__* %733)
  br label %735

735:                                              ; preds = %731, %151
  %736 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %737 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %736, i32 0, i32 6
  %738 = call i32 @iflib_dma_free(%struct.TYPE_10__* %737)
  br label %739

739:                                              ; preds = %735, %133
  %740 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %741 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %740, i32 0, i32 5
  %742 = call i32 @iflib_dma_free(%struct.TYPE_10__* %741)
  br label %743

743:                                              ; preds = %739, %115
  %744 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %745 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %744, i32 0, i32 4
  %746 = load %struct.TYPE_11__*, %struct.TYPE_11__** %745, align 8
  %747 = load i32, i32* @M_DEVBUF, align 4
  %748 = call i32 @free(%struct.TYPE_11__* %746, i32 %747)
  br label %749

749:                                              ; preds = %743, %99
  %750 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %751 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %750, i32 0, i32 3
  %752 = load %struct.TYPE_11__*, %struct.TYPE_11__** %751, align 8
  %753 = load i32, i32* @M_DEVBUF, align 4
  %754 = call i32 @free(%struct.TYPE_11__* %752, i32 %753)
  br label %755

755:                                              ; preds = %749, %77
  %756 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %757 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %756, i32 0, i32 2
  %758 = load %struct.TYPE_11__*, %struct.TYPE_11__** %757, align 8
  %759 = load i32, i32* @M_DEVBUF, align 4
  %760 = call i32 @free(%struct.TYPE_11__* %758, i32 %759)
  br label %761

761:                                              ; preds = %755, %55
  %762 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %763 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %762, i32 0, i32 1
  %764 = load %struct.TYPE_11__*, %struct.TYPE_11__** %763, align 8
  %765 = load i32, i32* @M_DEVBUF, align 4
  %766 = call i32 @free(%struct.TYPE_11__* %764, i32 %765)
  br label %767

767:                                              ; preds = %761, %33
  %768 = load i32, i32* %14, align 4
  store i32 %768, i32* %6, align 4
  br label %769

769:                                              ; preds = %767, %672
  %770 = load i32, i32* %6, align 4
  ret i32 %770
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_dma_alloc(i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bnxt_create_rx_sysctls(%struct.bnxt_softc*, i32) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_create_port_stats_sysctls(%struct.bnxt_softc*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @iflib_dma_free(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
