; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__, i32, %struct.ifnet* }
%struct.TYPE_11__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_16__*, %struct.TYPE_12__*, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i8*, i8*, i64 }
%struct.TYPE_12__ = type { i32, %struct.mbuf*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.mxge_pkt_info = type { i64, i64, i32, i32, i32, i32 }

@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_DELAY_DATA = common dso_local global i32 0, align 4
@CSUM_DELAY_DATA_IPV6 = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"bus_dmamap_load_mbuf_sg returned %d packet len = %d\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MXGEFW_FLAGS_NO_TSO = common dso_local global i64 0, align 8
@MXGEFW_FLAGS_CKSUM = common dso_local global i64 0, align 8
@MXGEFW_FLAGS_ALIGN_ODD = common dso_local global i32 0, align 4
@MXGEFW_SEND_SMALL_SIZE = common dso_local global i64 0, align 8
@MXGEFW_FLAGS_SMALL = common dso_local global i64 0, align 8
@MXGEFW_FLAGS_FIRST = common dso_local global i64 0, align 8
@M_VLANTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxge_slice_state*, %struct.mbuf*)* @mxge_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_encap(%struct.mxge_slice_state* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mxge_slice_state*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mxge_pkt_info, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %21 = bitcast %struct.mxge_pkt_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %23 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load %struct.ifnet*, %struct.ifnet** %26, align 8
  store %struct.ifnet* %27, %struct.ifnet** %10, align 8
  %28 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %29 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %28, i32 0, i32 2
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %11, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CSUM_TSO, align 4
  %35 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CSUM_DELAY_DATA_IPV6, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %2
  %42 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = call i64 @mxge_parse_tx(%struct.mxge_slice_state* %42, %struct.mbuf* %43, %struct.mxge_pkt_info* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %362

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  store i32 %55, i32* %16, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %72 = call i32 @bus_dmamap_load_mbuf_sg(i32 %58, i32 %66, %struct.mbuf* %67, %struct.TYPE_17__* %70, i32* %12, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @EFBIG, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @__predict_false(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %48
  %80 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %81 = load i32, i32* @M_NOWAIT, align 4
  %82 = call %struct.mbuf* @m_defrag(%struct.mbuf* %80, i32 %81)
  store %struct.mbuf* %82, %struct.mbuf** %9, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %84 = icmp eq %struct.mbuf* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %362

86:                                               ; preds = %79
  %87 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %88 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %92, %struct.mbuf** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %109 = call i32 @bus_dmamap_load_mbuf_sg(i32 %95, i32 %103, %struct.mbuf* %104, %struct.TYPE_17__* %107, i32* %12, i32 %108)
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %86, %48
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @__predict_false(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %124)
  br label %362

126:                                              ; preds = %110
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %139 = call i32 @bus_dmamap_sync(i32 %129, i32 %137, i32 %138)
  %140 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  store %struct.mbuf* %140, %struct.mbuf** %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %18, align 4
  %151 = load i64, i64* @MXGEFW_FLAGS_NO_TSO, align 8
  store i64 %151, i64* %19, align 8
  %152 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %153 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %157 = load i32, i32* @CSUM_DELAY_DATA_IPV6, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %126
  %162 = getelementptr inbounds %struct.mxge_pkt_info, %struct.mxge_pkt_info* %5, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.mxge_pkt_info, %struct.mxge_pkt_info* %5, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %163, %165
  store i64 %166, i64* %20, align 8
  %167 = load i64, i64* %20, align 8
  %168 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %169 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %167, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = call i8* @htobe16(i32 %174)
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %18, align 4
  %177 = load i64, i64* %20, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* @MXGEFW_FLAGS_CKSUM, align 8
  %182 = load i64, i64* %19, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %19, align 8
  %184 = load i32, i32* @MXGEFW_FLAGS_ALIGN_ODD, align 4
  store i32 %184, i32* %17, align 4
  br label %186

185:                                              ; preds = %126
  store i32 0, i32* %17, align 4
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %188 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @MXGEFW_SEND_SMALL_SIZE, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i64, i64* @MXGEFW_FLAGS_SMALL, align 8
  %195 = load i64, i64* %19, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %19, align 8
  br label %197

197:                                              ; preds = %193, %186
  store i32 0, i32* %13, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 7
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  store %struct.TYPE_17__* %200, %struct.TYPE_17__** %8, align 8
  %201 = load i64, i64* @MXGEFW_FLAGS_FIRST, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  store i32 0, i32* %15, align 4
  br label %204

204:                                              ; preds = %278, %197
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %281

208:                                              ; preds = %204
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @MXGE_LOWPART_TO_U32(i32 %211)
  %213 = call i8* @htobe32(i32 %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 5
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @MXGE_HIGHPART_TO_U32(i32 %218)
  %220 = call i8* @htobe32(i32 %219)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 6
  store i8* %220, i8** %222, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @htobe16(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load i64, i64* %20, align 8
  %231 = trunc i64 %230 to i32
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load i64, i64* %20, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = icmp sgt i64 %234, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %208
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %20, align 8
  %246 = sub nsw i64 %245, %244
  store i64 %246, i64* %20, align 8
  br label %248

247:                                              ; preds = %208
  store i64 0, i64* %20, align 8
  br label %248

248:                                              ; preds = %247, %240
  %249 = load i32, i32* %18, align 4
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 7
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 4
  store i32 1, i32* %255, align 8
  %256 = load i64, i64* %19, align 8
  %257 = load i32, i32* %13, align 4
  %258 = and i32 %257, 1
  %259 = load i32, i32* %17, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = or i64 %256, %261
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = or i64 %265, %262
  store i64 %266, i64* %264, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %13, align 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 1
  store %struct.TYPE_17__* %273, %struct.TYPE_17__** %8, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 1
  store %struct.TYPE_16__* %275, %struct.TYPE_16__** %7, align 8
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  store i64 0, i64* %277, align 8
  br label %278

278:                                              ; preds = %248
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %204

281:                                              ; preds = %204
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 -1
  store %struct.TYPE_16__* %283, %struct.TYPE_16__** %7, align 8
  %284 = load i32, i32* %13, align 4
  %285 = icmp slt i32 %284, 60
  br i1 %285, label %286, label %333

286:                                              ; preds = %281
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 1
  store %struct.TYPE_16__* %288, %struct.TYPE_16__** %7, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @MXGE_LOWPART_TO_U32(i32 %292)
  %294 = call i8* @htobe32(i32 %293)
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 5
  store i8* %294, i8** %296, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @MXGE_HIGHPART_TO_U32(i32 %300)
  %302 = call i8* @htobe32(i32 %301)
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 6
  store i8* %302, i8** %304, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sub nsw i32 60, %305
  %307 = call i8* @htobe16(i32 %306)
  %308 = ptrtoint i8* %307 to i32
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  %313 = load i32, i32* %18, align 4
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 7
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 4
  store i32 1, i32* %319, align 8
  %320 = load i64, i64* %19, align 8
  %321 = load i32, i32* %13, align 4
  %322 = and i32 %321, 1
  %323 = load i32, i32* %17, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = or i64 %320, %325
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = or i64 %329, %326
  store i64 %330, i64* %328, align 8
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %286, %281
  %334 = load i32, i32* %12, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 4
  store i32 %334, i32* %339, align 8
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 6
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sub nsw i32 %343, 1
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %344, %347
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %348, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  store i32 1, i32* %355, align 8
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 5
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = load i32, i32* %12, align 4
  %361 = call i32 @mxge_submit_req(%struct.TYPE_14__* %356, %struct.TYPE_16__* %359, i32 %360)
  br label %370

362:                                              ; preds = %116, %85, %46
  %363 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %364 = call i32 @m_freem(%struct.mbuf* %363)
  br label %365

365:                                              ; preds = %362
  %366 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %367 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %365, %333
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mxge_parse_tx(%struct.mxge_slice_state*, %struct.mbuf*, %struct.mxge_pkt_info*) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_17__*, i32*, i32) #2

declare dso_local i64 @__predict_false(i32) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i64) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i8* @htobe16(i32) #2

declare dso_local i8* @htobe32(i32) #2

declare dso_local i32 @MXGE_LOWPART_TO_U32(i32) #2

declare dso_local i32 @MXGE_HIGHPART_TO_U32(i32) #2

declare dso_local i32 @mxge_submit_req(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
