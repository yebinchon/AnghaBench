; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_pkt_get_tpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_pkt_get_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.bnxt_full_tpa_start* }
%struct.bnxt_full_tpa_start = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_13__*, i8*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.bnxt_cp_ring = type { i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.rx_tpa_end_cmpl = type { i64, i64, i32, i32 }
%struct.rx_abuf_cmpl = type { i32, i32 }

@RX_TPA_END_CMPL_AGG_ID_MASK = common dso_local global i64 0, align 8
@RX_TPA_END_CMPL_AGG_ID_SFT = common dso_local global i64 0, align 8
@RX_TPA_START_CMPL_FLAGS_RSS_VALID = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i32 0, align 4
@RX_TPA_END_CMPL_AGG_BUFS_MASK = common dso_local global i64 0, align 8
@RX_TPA_END_CMPL_AGG_BUFS_SFT = common dso_local global i64 0, align 8
@RX_TPA_START_CMPL_FLAGS2_META_FORMAT_MASK = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_FLAGS2_META_FORMAT_VLAN = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_METADATA_VID_MASK = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_METADATA_DE = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_METADATA_PRI_MASK = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_FLAGS2_IP_CS_CALC = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_FLAGS2_L4_CS_CALC = common dso_local global i32 0, align 4
@CSUM_L4_CALC = common dso_local global i32 0, align 4
@CSUM_L4_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_softc*, %struct.TYPE_14__*, %struct.bnxt_cp_ring*, i32)* @bnxt_pkt_get_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_pkt_get_tpa(%struct.bnxt_softc* %0, %struct.TYPE_14__* %1, %struct.bnxt_cp_ring* %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.bnxt_cp_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_tpa_end_cmpl*, align 8
  %10 = alloca %struct.rx_abuf_cmpl*, align 8
  %11 = alloca %struct.bnxt_full_tpa_start*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.bnxt_cp_ring* %2, %struct.bnxt_cp_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %17 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.rx_tpa_end_cmpl*
  %21 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %22 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %20, i64 %23
  store %struct.rx_tpa_end_cmpl* %24, %struct.rx_tpa_end_cmpl** %9, align 8
  %25 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %26 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RX_TPA_END_CMPL_AGG_ID_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @RX_TPA_END_CMPL_AGG_ID_SFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %14, align 8
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %40, i64 %41
  store %struct.bnxt_full_tpa_start* %42, %struct.bnxt_full_tpa_start** %11, align 8
  %43 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %44 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16toh(i32 %46)
  %48 = load i32, i32* @RX_TPA_START_CMPL_FLAGS_RSS_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %4
  %52 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %53 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32toh(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %61 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bnxt_set_rsstype(%struct.TYPE_14__* %59, i32 %63)
  br label %69

65:                                               ; preds = %4
  %66 = load i32, i32* @M_HASHTYPE_NONE, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %51
  %70 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %71 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RX_TPA_END_CMPL_AGG_BUFS_MASK, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @RX_TPA_END_CMPL_AGG_BUFS_SFT, align 8
  %76 = lshr i64 %74, %75
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %82 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %93 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 65535
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 4
  %102 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %103 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16toh(i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %106, i32* %111, align 4
  %112 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %113 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16toh(i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %120 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %119, i32 0, i32 1
  %121 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %122 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %125 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_15__* %120, i64 %123, i32 %126)
  %128 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %129 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @RING_NEXT(%struct.TYPE_15__* %129, i8* %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %137 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le32toh(i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @RX_TPA_START_CMPL_FLAGS2_META_FORMAT_MASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @RX_TPA_START_CMPL_FLAGS2_META_FORMAT_VLAN, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %69
  %147 = load i32, i32* @M_VLANTAG, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.bnxt_full_tpa_start*, %struct.bnxt_full_tpa_start** %11, align 8
  %153 = getelementptr inbounds %struct.bnxt_full_tpa_start, %struct.bnxt_full_tpa_start* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le32toh(i32 %155)
  %157 = load i32, i32* @RX_TPA_START_CMPL_METADATA_VID_MASK, align 4
  %158 = load i32, i32* @RX_TPA_START_CMPL_METADATA_DE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @RX_TPA_START_CMPL_METADATA_PRI_MASK, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %156, %161
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %146, %69
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @RX_TPA_START_CMPL_FLAGS2_IP_CS_CALC, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* @CSUM_IP_VALID, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %170, %165
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @RX_TPA_START_CMPL_FLAGS2_L4_CS_CALC, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* @CSUM_L4_CALC, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @CSUM_L4_VALID, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 5
  store i32 65535, i32* %198, align 8
  br label %199

199:                                              ; preds = %186, %181
  store i32 1, i32* %15, align 4
  br label %200

200:                                              ; preds = %276, %199
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %279

207:                                              ; preds = %200
  %208 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %209 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %208, i32 0, i32 1
  %210 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %211 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %214 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_15__* %209, i64 %212, i32 %215)
  %217 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %218 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %217, i32 0, i32 1
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 7
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @RING_NEXT(%struct.TYPE_15__* %218, i8* %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 7
  store i8* %222, i8** %224, align 8
  %225 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %226 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to %struct.rx_abuf_cmpl*
  %230 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %231 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.rx_abuf_cmpl, %struct.rx_abuf_cmpl* %229, i64 %232
  store %struct.rx_abuf_cmpl* %233, %struct.rx_abuf_cmpl** %10, align 8
  %234 = load %struct.rx_abuf_cmpl*, %struct.rx_abuf_cmpl** %10, align 8
  %235 = getelementptr inbounds %struct.rx_abuf_cmpl, %struct.rx_abuf_cmpl* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  store i32 %238, i32* %245, align 4
  %246 = load %struct.rx_abuf_cmpl*, %struct.rx_abuf_cmpl** %10, align 8
  %247 = getelementptr inbounds %struct.rx_abuf_cmpl, %struct.rx_abuf_cmpl* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 65535
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  store i32 %249, i32* %256, align 4
  %257 = load %struct.rx_abuf_cmpl*, %struct.rx_abuf_cmpl** %10, align 8
  %258 = getelementptr inbounds %struct.rx_abuf_cmpl, %struct.rx_abuf_cmpl* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @le16toh(i32 %259)
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 6
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  store i32 %260, i32* %267, align 4
  %268 = load %struct.rx_abuf_cmpl*, %struct.rx_abuf_cmpl** %10, align 8
  %269 = getelementptr inbounds %struct.rx_abuf_cmpl, %struct.rx_abuf_cmpl* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le16toh(i32 %270)
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %207
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %200

279:                                              ; preds = %200
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %281, align 8
  %284 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %285 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = ashr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i32 %288, i32* %295, align 4
  %296 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %297 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, 65535
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  store i32 %299, i32* %306, align 4
  %307 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %308 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @le16toh(i32 %309)
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 6
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 2
  store i32 %310, i32* %317, align 4
  %318 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %9, align 8
  %319 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @le16toh(i32 %320)
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %324, %321
  store i32 %325, i32* %323, align 8
  ret i32 0
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bnxt_set_rsstype(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @NEXT_CP_CONS_V(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i8* @RING_NEXT(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
