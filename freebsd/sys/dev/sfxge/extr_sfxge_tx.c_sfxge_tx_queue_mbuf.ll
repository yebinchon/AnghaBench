; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_queue_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_queue_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32*, %struct.sfxge_tx_mapping*, i32, i32 }
%struct.sfxge_tx_mapping = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SFXGE_TX_MAPPING_MAX_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"txq->blocked\00", align 1
@CSUM_TSO = common dso_local global i32 0, align 4
@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TX_BUF_UNMAP = common dso_local global i32 0, align 4
@TX_BUF_MBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*)* @sfxge_tx_queue_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_queue_mbuf(%struct.sfxge_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sfxge_tx_mapping*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %22 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.TYPE_8__, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %27 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CSUM_TSO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @prefetch_read_many(i32 %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @__predict_false(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @EINTR, align 4
  store i32 %55, i32* %14, align 4
  br label %247

56:                                               ; preds = %45
  %57 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %58 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %61 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %65 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %64, i32 0, i32 11
  %66 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %66, i64 %68
  store %struct.sfxge_tx_mapping* %69, %struct.sfxge_tx_mapping** %11, align 8
  %70 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %71 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %74 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = call i32 @bus_dmamap_load_mbuf_sg(i32 %72, i64 %75, %struct.mbuf* %76, %struct.TYPE_8__* %25, i32* %13, i32 0)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @EFBIG, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %56
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %83 = load i32, i32* @M_NOWAIT, align 4
  %84 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  %85 = call %struct.mbuf* @m_collapse(%struct.mbuf* %82, i32 %83, i32 %84)
  store %struct.mbuf* %85, %struct.mbuf** %20, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %87 = icmp eq %struct.mbuf* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %247

89:                                               ; preds = %81
  %90 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %91 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %94, %struct.mbuf** %5, align 8
  %95 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %96 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %99 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %102 = call i32 @bus_dmamap_load_mbuf_sg(i32 %97, i64 %100, %struct.mbuf* %101, %struct.TYPE_8__* %25, i32* %13, i32 0)
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %89, %56
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %247

107:                                              ; preds = %103
  %108 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %109 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %112 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %115 = call i32 @bus_dmamap_sync(i32 %110, i64 %113, i32 %114)
  %116 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %117 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %116, i32 0, i32 2
  store i64* %117, i64** %6, align 8
  %118 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %119 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %118, i32 0, i32 7
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %17, align 8
  %121 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %122 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %18, align 8
  %124 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %126 = call i32 @sfxge_tx_maybe_toggle_cksum_offload(%struct.sfxge_txq* %124, %struct.mbuf* %125, %struct.sfxge_tx_mapping** %11)
  store i32 %126, i32* %19, align 4
  %127 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = call i64 @sfxge_tx_maybe_insert_tag(%struct.sfxge_txq* %127, %struct.mbuf* %128, %struct.sfxge_tx_mapping** %11)
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %19, align 4
  %134 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %135 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CSUM_TSO, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %107
  %142 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %143 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @sfxge_tx_queue_tso(%struct.sfxge_txq* %142, %struct.mbuf* %143, %struct.TYPE_8__* %25, i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %234

150:                                              ; preds = %141
  %151 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %152 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %151, i32 0, i32 11
  %153 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %157 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %155, %158
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %153, i64 %160
  store %struct.sfxge_tx_mapping* %161, %struct.sfxge_tx_mapping** %11, align 8
  br label %207

162:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %163

163:                                              ; preds = %196, %162
  %164 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %165 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %164, i32 0, i32 10
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  store i32* %171, i32** %12, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %172, %174
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %16, align 4
  %177 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %178 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @efx_tx_qdesc_dma_create(i32 %179, i32 %184, i32 %189, i32 %190, i32* %191)
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %163
  br label %201

196:                                              ; preds = %163
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %200 = call i32 @sfxge_next_stmp(%struct.sfxge_txq* %199, %struct.sfxge_tx_mapping** %11)
  br label %163

201:                                              ; preds = %195
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %202, %203
  %205 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %206 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %201, %150
  %208 = load i64*, i64** %6, align 8
  %209 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %210 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %209, i32 0, i32 2
  %211 = icmp ne i64* %208, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %214 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %7, align 8
  %216 = load i64*, i64** %6, align 8
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %219 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %7, align 8
  %221 = load i64*, i64** %6, align 8
  store i64 %220, i64* %221, align 8
  br label %222

222:                                              ; preds = %212, %207
  %223 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %224 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %225 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  store %struct.mbuf* %223, %struct.mbuf** %226, align 8
  %227 = load i32, i32* @TX_BUF_UNMAP, align 4
  %228 = load i32, i32* @TX_BUF_MBUF, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %11, align 8
  %231 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %233 = call i32 @sfxge_tx_qlist_post(%struct.sfxge_txq* %232)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %255

234:                                              ; preds = %149
  %235 = load i8*, i8** %18, align 8
  %236 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %237 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %236, i32 0, i32 8
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** %17, align 8
  %239 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %240 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %239, i32 0, i32 7
  store i8* %238, i8** %240, align 8
  %241 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %242 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load i64*, i64** %6, align 8
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @bus_dmamap_unload(i32 %243, i64 %245)
  br label %247

247:                                              ; preds = %234, %106, %88, %54
  %248 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %249 = call i32 @m_freem(%struct.mbuf* %248)
  %250 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %251 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %255

255:                                              ; preds = %247, %222
  %256 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @prefetch_read_many(i32) #2

declare dso_local i64 @__predict_false(i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i64, %struct.mbuf*, %struct.TYPE_8__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #2

declare dso_local i32 @sfxge_tx_maybe_toggle_cksum_offload(%struct.sfxge_txq*, %struct.mbuf*, %struct.sfxge_tx_mapping**) #2

declare dso_local i64 @sfxge_tx_maybe_insert_tag(%struct.sfxge_txq*, %struct.mbuf*, %struct.sfxge_tx_mapping**) #2

declare dso_local i32 @sfxge_tx_queue_tso(%struct.sfxge_txq*, %struct.mbuf*, %struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @efx_tx_qdesc_dma_create(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @sfxge_next_stmp(%struct.sfxge_txq*, %struct.sfxge_tx_mapping**) #2

declare dso_local i32 @sfxge_tx_qlist_post(%struct.sfxge_txq*) #2

declare dso_local i32 @bus_dmamap_unload(i32, i64) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
