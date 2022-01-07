; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_if_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_if_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dtsec_rm_frame_info = type { i32*, %struct.mbuf* }
%struct.mbuf = type { i64, %struct.mbuf*, i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@e_QM_FQR_COUNTERS_FRAME = common dso_local global i32 0, align 4
@DTSEC_MAX_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@DPAA_NUM_OF_SG_TABLE_ENTRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtsec_rm_if_start_locked(%struct.dtsec_softc* %0) #0 {
  %2 = alloca %struct.dtsec_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dtsec_rm_frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %2, align 8
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %14 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %13)
  %15 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFM_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %293

24:                                               ; preds = %1
  %25 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %26 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %293

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %290, %248, %35
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %38 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = call i32 @IFQ_DRV_IS_EMPTY(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %293

44:                                               ; preds = %36
  %45 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %46 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @e_QM_FQR_COUNTERS_FRAME, align 4
  %49 = call i32 @qman_fqr_get_counter(i32 %47, i32 0, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DTSEC_MAX_TX_QUEUE_LEN, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %55 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %293

56:                                               ; preds = %44
  %57 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %58 = call %struct.dtsec_rm_frame_info* @dtsec_rm_fi_alloc(%struct.dtsec_softc* %57)
  store %struct.dtsec_rm_frame_info* %58, %struct.dtsec_rm_frame_info** %6, align 8
  %59 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %60 = icmp eq %struct.dtsec_rm_frame_info* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %293

62:                                               ; preds = %56
  %63 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %64 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %68 = call i32 @IFQ_DRV_DEQUEUE(i32* %66, %struct.mbuf* %67)
  %69 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %70 = icmp eq %struct.mbuf* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %73 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %74 = call i32 @dtsec_rm_fi_free(%struct.dtsec_softc* %72, %struct.dtsec_rm_frame_info* %73)
  br label %293

75:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %76, %struct.mbuf** %10, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %78 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %79 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %78, i32 0, i32 1
  store %struct.mbuf* %77, %struct.mbuf** %79, align 8
  br label %80

80:                                               ; preds = %238, %94, %75
  %81 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %82 = icmp ne %struct.mbuf* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @DPAA_NUM_OF_SG_TABLE_ENTRY, align 4
  %86 = icmp ult i32 %84, %85
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i1 [ false, %80 ], [ %86, %83 ]
  br i1 %88, label %89, label %242

89:                                               ; preds = %87
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %80

95:                                               ; preds = %89
  %96 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %97 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %103 = bitcast %struct.dtsec_rm_frame_info* %102 to i8*
  %104 = call i32 @DPAA_SGTE_SET_ADDR(i32* %101, i8* %103)
  %105 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %106 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @DPAA_SGTE_SET_LENGTH(i32* %110, i64 0)
  %112 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %113 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @DPAA_SGTE_SET_EXTENSION(i32* %117, i32 0)
  %119 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %120 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @DPAA_SGTE_SET_FINAL(i32* %124, i32 0)
  %126 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %127 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @DPAA_SGTE_SET_BPID(i32* %131, i32 0)
  %133 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %134 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @DPAA_SGTE_SET_OFFSET(i32* %138, i32 0)
  %140 = load i32, i32* %8, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %143 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %3, align 8
  %145 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %146 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %174, %95
  %150 = load i64, i64* %3, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @DPAA_NUM_OF_SG_TABLE_ENTRY, align 4
  %155 = icmp ult i32 %153, %154
  br label %156

156:                                              ; preds = %152, %149
  %157 = phi i1 [ false, %149 ], [ %155, %152 ]
  br i1 %157, label %158, label %234

158:                                              ; preds = %156
  %159 = load i64, i64* @PAGE_SIZE, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @PAGE_MASK, align 4
  %162 = and i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %159, %163
  store i64 %164, i64* %5, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %5, align 8
  br label %174

174:                                              ; preds = %170, %158
  %175 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %176 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @DPAA_SGTE_SET_ADDR(i32* %180, i8* %183)
  %185 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %186 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i64, i64* %5, align 8
  %192 = call i32 @DPAA_SGTE_SET_LENGTH(i32* %190, i64 %191)
  %193 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %194 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = call i32 @DPAA_SGTE_SET_EXTENSION(i32* %198, i32 0)
  %200 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %201 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = call i32 @DPAA_SGTE_SET_FINAL(i32* %205, i32 0)
  %207 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %208 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = call i32 @DPAA_SGTE_SET_BPID(i32* %212, i32 0)
  %214 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %215 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i32 @DPAA_SGTE_SET_OFFSET(i32* %219, i32 0)
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* %3, align 8
  %223 = sub nsw i64 %222, %221
  store i64 %223, i64* %3, align 8
  %224 = load i64, i64* %5, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %11, align 4
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* %4, align 8
  %231 = add nsw i64 %230, %229
  store i64 %231, i64* %4, align 8
  %232 = load i32, i32* %8, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %149

234:                                              ; preds = %156
  %235 = load i64, i64* %3, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %242

238:                                              ; preds = %234
  %239 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %240 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %239, i32 0, i32 1
  %241 = load %struct.mbuf*, %struct.mbuf** %240, align 8
  store %struct.mbuf* %241, %struct.mbuf** %10, align 8
  br label %80

242:                                              ; preds = %237, %87
  %243 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %244 = icmp ne %struct.mbuf* %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* %3, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245, %242
  %249 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %250 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %251 = call i32 @dtsec_rm_fi_free(%struct.dtsec_softc* %249, %struct.dtsec_rm_frame_info* %250)
  %252 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %253 = call i32 @m_freem(%struct.mbuf* %252)
  br label %36

254:                                              ; preds = %245
  %255 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %256 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sub i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = call i32 @DPAA_SGTE_SET_FINAL(i32* %261, i32 1)
  %263 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %264 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @DPAA_FD_SET_ADDR(%struct.TYPE_12__* %12, i32* %265)
  %267 = load i64, i64* %4, align 8
  %268 = call i32 @DPAA_FD_SET_LENGTH(%struct.TYPE_12__* %12, i64 %267)
  %269 = load i32, i32* @e_DPAA_FD_FORMAT_TYPE_SHORT_MBSF, align 4
  %270 = call i32 @DPAA_FD_SET_FORMAT(%struct.TYPE_12__* %12, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i64 0, i64* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i64 0, i64* %272, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i64 0, i64* %273, align 8
  %274 = call i32 @DPAA_FD_SET_OFFSET(%struct.TYPE_12__* %12, i32 0)
  %275 = call i32 @DPAA_FD_SET_STATUS(%struct.TYPE_12__* %12, i32 0)
  %276 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %277 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %276)
  %278 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %279 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @qman_fqr_enqueue(i32 %280, i32 0, %struct.TYPE_12__* %12)
  %282 = load i64, i64* @E_OK, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %254
  %285 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %286 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %6, align 8
  %287 = call i32 @dtsec_rm_fi_free(%struct.dtsec_softc* %285, %struct.dtsec_rm_frame_info* %286)
  %288 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %289 = call i32 @m_freem(%struct.mbuf* %288)
  br label %290

290:                                              ; preds = %284, %254
  %291 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %292 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %291)
  br label %36

293:                                              ; preds = %23, %34, %53, %61, %71, %36
  ret void
}

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @qman_fqr_get_counter(i32, i32, i32) #1

declare dso_local %struct.dtsec_rm_frame_info* @dtsec_rm_fi_alloc(%struct.dtsec_softc*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @dtsec_rm_fi_free(%struct.dtsec_softc*, %struct.dtsec_rm_frame_info*) #1

declare dso_local i32 @DPAA_SGTE_SET_ADDR(i32*, i8*) #1

declare dso_local i32 @DPAA_SGTE_SET_LENGTH(i32*, i64) #1

declare dso_local i32 @DPAA_SGTE_SET_EXTENSION(i32*, i32) #1

declare dso_local i32 @DPAA_SGTE_SET_FINAL(i32*, i32) #1

declare dso_local i32 @DPAA_SGTE_SET_BPID(i32*, i32) #1

declare dso_local i32 @DPAA_SGTE_SET_OFFSET(i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @DPAA_FD_SET_ADDR(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @DPAA_FD_SET_LENGTH(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @DPAA_FD_SET_FORMAT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DPAA_FD_SET_OFFSET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DPAA_FD_SET_STATUS(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DTSEC_UNLOCK(%struct.dtsec_softc*) #1

declare dso_local i64 @qman_fqr_enqueue(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @DTSEC_LOCK(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
