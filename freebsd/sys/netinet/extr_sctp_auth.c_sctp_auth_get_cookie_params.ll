; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_auth_get_cookie_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_auth_get_cookie_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i32*, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }
%struct.sctp_auth_random = type { i32*, i32* }
%struct.sctp_auth_hmac_algo = type { i32*, i32* }
%struct.sctp_auth_chunk_list = type { i32*, i32* }

@SCTP_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SCTP_RANDOM = common dso_local global i64 0, align 8
@SCTP_HMAC_LIST = common dso_local global i64 0, align 8
@SCTP_CHUNK_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_get_cookie_params(%struct.sctp_tcb* %0, %struct.mbuf* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_paramhdr*, align 8
  %10 = alloca %struct.sctp_paramhdr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sctp_auth_random*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sctp_auth_hmac_algo*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sctp_auth_chunk_list*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %29 = load i32, i32* @SCTP_PARAM_BUFFER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store %struct.sctp_auth_random* null, %struct.sctp_auth_random** %15, align 8
  store i64 0, i64* %16, align 8
  %33 = load i32, i32* @SCTP_PARAM_BUFFER_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %17, align 8
  store %struct.sctp_auth_hmac_algo* null, %struct.sctp_auth_hmac_algo** %18, align 8
  store i64 0, i64* %19, align 8
  %36 = load i32, i32* @SCTP_PARAM_BUFFER_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %20, align 8
  store %struct.sctp_auth_chunk_list* null, %struct.sctp_auth_chunk_list** %21, align 8
  store i64 0, i64* %22, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = bitcast %struct.sctp_paramhdr* %10 to i32*
  %45 = call i64 @sctp_m_getptr(%struct.mbuf* %42, i64 %43, i32 8, i32* %44)
  %46 = inttoptr i64 %45 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %46, %struct.sctp_paramhdr** %9, align 8
  br label %47

47:                                               ; preds = %235, %4
  %48 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %49 = icmp ne %struct.sctp_paramhdr* %48, null
  br i1 %49, label %50, label %241

50:                                               ; preds = %47
  %51 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %52 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %56 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohs(i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %8, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %50
  br label %241

68:                                               ; preds = %61
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @SCTP_RANDOM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i64, i64* %11, align 8
  %74 = mul nuw i64 4, %30
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %241

77:                                               ; preds = %72
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = bitcast i32* %32 to %struct.sctp_paramhdr*
  %81 = load i64, i64* %11, align 8
  %82 = call %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf* %78, i64 %79, %struct.sctp_paramhdr* %80, i64 %81)
  store %struct.sctp_paramhdr* %82, %struct.sctp_paramhdr** %9, align 8
  %83 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %84 = icmp eq %struct.sctp_paramhdr* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 1, i32* %25, align 4
  br label %378

86:                                               ; preds = %77
  %87 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %88 = bitcast %struct.sctp_paramhdr* %87 to %struct.sctp_auth_random*
  store %struct.sctp_auth_random* %88, %struct.sctp_auth_random** %15, align 8
  %89 = load i64, i64* %11, align 8
  %90 = sub i64 %89, 16
  store i64 %90, i64* %16, align 8
  br label %225

91:                                               ; preds = %68
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @SCTP_HMAC_LIST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %161

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = mul nuw i64 4, %34
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %241

100:                                              ; preds = %95
  %101 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = bitcast i32* %35 to %struct.sctp_paramhdr*
  %104 = load i64, i64* %11, align 8
  %105 = call %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf* %101, i64 %102, %struct.sctp_paramhdr* %103, i64 %104)
  store %struct.sctp_paramhdr* %105, %struct.sctp_paramhdr** %9, align 8
  %106 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %107 = icmp eq %struct.sctp_paramhdr* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %25, align 4
  br label %378

109:                                              ; preds = %100
  %110 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %111 = bitcast %struct.sctp_paramhdr* %110 to %struct.sctp_auth_hmac_algo*
  store %struct.sctp_auth_hmac_algo* %111, %struct.sctp_auth_hmac_algo** %18, align 8
  %112 = load i64, i64* %11, align 8
  %113 = sub i64 %112, 16
  store i64 %113, i64* %19, align 8
  %114 = load i64, i64* %19, align 8
  %115 = udiv i64 %114, 4
  store i64 %115, i64* %26, align 8
  %116 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %117 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %123 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @sctp_free_hmaclist(i32* %125)
  br label %127

127:                                              ; preds = %121, %109
  %128 = load i64, i64* %26, align 8
  %129 = call i32* @sctp_alloc_hmaclist(i64 %128)
  %130 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %131 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  store i32* %129, i32** %132, align 8
  %133 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %134 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %160

138:                                              ; preds = %127
  store i64 0, i64* %27, align 8
  br label %139

139:                                              ; preds = %156, %138
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* %26, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %145 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.sctp_auth_hmac_algo*, %struct.sctp_auth_hmac_algo** %18, align 8
  %149 = getelementptr inbounds %struct.sctp_auth_hmac_algo, %struct.sctp_auth_hmac_algo* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %27, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @ntohs(i32 %153)
  %155 = call i32 @sctp_auth_add_hmacid(i32* %147, i64 %154)
  br label %156

156:                                              ; preds = %143
  %157 = load i64, i64* %27, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %27, align 8
  br label %139

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %127
  br label %224

161:                                              ; preds = %91
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* @SCTP_CHUNK_LIST, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %223

165:                                              ; preds = %161
  %166 = load i64, i64* %11, align 8
  %167 = mul nuw i64 4, %37
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %241

170:                                              ; preds = %165
  %171 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = bitcast i32* %38 to %struct.sctp_paramhdr*
  %174 = load i64, i64* %11, align 8
  %175 = call %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf* %171, i64 %172, %struct.sctp_paramhdr* %173, i64 %174)
  store %struct.sctp_paramhdr* %175, %struct.sctp_paramhdr** %9, align 8
  %176 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %177 = icmp eq %struct.sctp_paramhdr* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store i32 1, i32* %25, align 4
  br label %378

179:                                              ; preds = %170
  %180 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %181 = bitcast %struct.sctp_paramhdr* %180 to %struct.sctp_auth_chunk_list*
  store %struct.sctp_auth_chunk_list* %181, %struct.sctp_auth_chunk_list** %21, align 8
  %182 = load i64, i64* %11, align 8
  %183 = sub i64 %182, 16
  store i64 %183, i64* %22, align 8
  %184 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %185 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %191 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @sctp_clear_chunklist(i32* %193)
  br label %200

195:                                              ; preds = %179
  %196 = call i32* (...) @sctp_alloc_chunklist()
  %197 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %198 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 5
  store i32* %196, i32** %199, align 8
  br label %200

200:                                              ; preds = %195, %189
  store i32 0, i32* %28, align 4
  br label %201

201:                                              ; preds = %219, %200
  %202 = load i32, i32* %28, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %22, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = load %struct.sctp_auth_chunk_list*, %struct.sctp_auth_chunk_list** %21, align 8
  %208 = getelementptr inbounds %struct.sctp_auth_chunk_list, %struct.sctp_auth_chunk_list* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %28, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %215 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @sctp_auth_add_chunk(i32 %213, i32* %217)
  br label %219

219:                                              ; preds = %206
  %220 = load i32, i32* %28, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %28, align 4
  br label %201

222:                                              ; preds = %201
  br label %223

223:                                              ; preds = %222, %161
  br label %224

224:                                              ; preds = %223, %160
  br label %225

225:                                              ; preds = %224, %86
  %226 = load i64, i64* %11, align 8
  %227 = call i64 @SCTP_SIZE32(i64 %226)
  %228 = load i64, i64* %7, align 8
  %229 = add nsw i64 %228, %227
  store i64 %229, i64* %7, align 8
  %230 = load i64, i64* %7, align 8
  %231 = add i64 %230, 8
  %232 = load i64, i64* %8, align 8
  %233 = icmp ugt i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  br label %241

235:                                              ; preds = %225
  %236 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %237 = load i64, i64* %7, align 8
  %238 = bitcast %struct.sctp_paramhdr* %10 to i32*
  %239 = call i64 @sctp_m_getptr(%struct.mbuf* %236, i64 %237, i32 8, i32* %238)
  %240 = inttoptr i64 %239 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %240, %struct.sctp_paramhdr** %9, align 8
  br label %47

241:                                              ; preds = %234, %169, %99, %76, %67, %47
  %242 = load i64, i64* %16, align 8
  %243 = add i64 16, %242
  %244 = add i64 %243, 16
  %245 = load i64, i64* %19, align 8
  %246 = add i64 %244, %245
  store i64 %246, i64* %24, align 8
  %247 = load %struct.sctp_auth_chunk_list*, %struct.sctp_auth_chunk_list** %21, align 8
  %248 = icmp ne %struct.sctp_auth_chunk_list* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %241
  %250 = load i64, i64* %22, align 8
  %251 = add i64 16, %250
  %252 = load i64, i64* %24, align 8
  %253 = add i64 %252, %251
  store i64 %253, i64* %24, align 8
  br label %254

254:                                              ; preds = %249, %241
  %255 = load i64, i64* %24, align 8
  %256 = call %struct.TYPE_12__* @sctp_alloc_key(i64 %255)
  store %struct.TYPE_12__* %256, %struct.TYPE_12__** %23, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %258 = icmp ne %struct.TYPE_12__* %257, null
  br i1 %258, label %259, label %308

259:                                              ; preds = %254
  %260 = load %struct.sctp_auth_random*, %struct.sctp_auth_random** %15, align 8
  %261 = icmp ne %struct.sctp_auth_random* %260, null
  br i1 %261, label %262, label %272

262:                                              ; preds = %259
  %263 = load i64, i64* %16, align 8
  %264 = add i64 16, %263
  store i64 %264, i64* %24, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.sctp_auth_random*, %struct.sctp_auth_random** %15, align 8
  %269 = load i64, i64* %24, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 @memcpy(i64 %267, %struct.sctp_auth_random* %268, i32 %270)
  br label %273

272:                                              ; preds = %259
  store i64 0, i64* %24, align 8
  br label %273

273:                                              ; preds = %272, %262
  %274 = load %struct.sctp_auth_chunk_list*, %struct.sctp_auth_chunk_list** %21, align 8
  %275 = icmp ne %struct.sctp_auth_chunk_list* %274, null
  br i1 %275, label %276, label %292

276:                                              ; preds = %273
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %24, align 8
  %281 = add nsw i64 %279, %280
  %282 = load %struct.sctp_auth_chunk_list*, %struct.sctp_auth_chunk_list** %21, align 8
  %283 = bitcast %struct.sctp_auth_chunk_list* %282 to %struct.sctp_auth_random*
  %284 = load i64, i64* %22, align 8
  %285 = add i64 16, %284
  %286 = trunc i64 %285 to i32
  %287 = call i32 @memcpy(i64 %281, %struct.sctp_auth_random* %283, i32 %286)
  %288 = load i64, i64* %22, align 8
  %289 = add i64 16, %288
  %290 = load i64, i64* %24, align 8
  %291 = add i64 %290, %289
  store i64 %291, i64* %24, align 8
  br label %292

292:                                              ; preds = %276, %273
  %293 = load %struct.sctp_auth_hmac_algo*, %struct.sctp_auth_hmac_algo** %18, align 8
  %294 = icmp ne %struct.sctp_auth_hmac_algo* %293, null
  br i1 %294, label %295, label %307

295:                                              ; preds = %292
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* %24, align 8
  %300 = add nsw i64 %298, %299
  %301 = load %struct.sctp_auth_hmac_algo*, %struct.sctp_auth_hmac_algo** %18, align 8
  %302 = bitcast %struct.sctp_auth_hmac_algo* %301 to %struct.sctp_auth_random*
  %303 = load i64, i64* %19, align 8
  %304 = add i64 16, %303
  %305 = trunc i64 %304 to i32
  %306 = call i32 @memcpy(i64 %300, %struct.sctp_auth_random* %302, i32 %305)
  br label %307

307:                                              ; preds = %295, %292
  br label %308

308:                                              ; preds = %307, %254
  %309 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %310 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %312, align 8
  %314 = icmp ne %struct.TYPE_12__* %313, null
  br i1 %314, label %315, label %322

315:                                              ; preds = %308
  %316 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %317 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = call i32 @sctp_free_key(%struct.TYPE_12__* %320)
  br label %322

322:                                              ; preds = %315, %308
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %324 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %325 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 4
  store %struct.TYPE_12__* %323, %struct.TYPE_12__** %327, align 8
  %328 = load i64, i64* %16, align 8
  %329 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %330 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 3
  store i64 %328, i64* %332, align 8
  %333 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %334 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %335 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @sctp_clear_cachedkeys(%struct.sctp_tcb* %333, i32 %338)
  %340 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %341 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %342 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @sctp_clear_cachedkeys(%struct.sctp_tcb* %340, i32 %345)
  %347 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %348 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %352 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 @sctp_negotiate_hmacid(i32 %350, i32* %354)
  %356 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %357 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 4
  store i32 %355, i32* %358, align 4
  %359 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %360 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %359, i32 0, i32 1
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %366 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  store i32 %364, i32* %368, align 8
  %369 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %370 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %369, i32 0, i32 1
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  %374 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %375 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = call i32 @sctp_copy_skeylist(i32* %373, i32* %376)
  store i32 0, i32* %25, align 4
  br label %378

378:                                              ; preds = %322, %178, %108, %85
  %379 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %379)
  %380 = load i32, i32* %25, align 4
  switch i32 %380, label %382 [
    i32 0, label %381
    i32 1, label %381
  ]

381:                                              ; preds = %378, %378
  ret void

382:                                              ; preds = %378
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i64, i32, i32*) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local %struct.sctp_paramhdr* @sctp_get_next_param(%struct.mbuf*, i64, %struct.sctp_paramhdr*, i64) #2

declare dso_local i32 @sctp_free_hmaclist(i32*) #2

declare dso_local i32* @sctp_alloc_hmaclist(i64) #2

declare dso_local i32 @sctp_auth_add_hmacid(i32*, i64) #2

declare dso_local i32 @sctp_clear_chunklist(i32*) #2

declare dso_local i32* @sctp_alloc_chunklist(...) #2

declare dso_local i32 @sctp_auth_add_chunk(i32, i32*) #2

declare dso_local i64 @SCTP_SIZE32(i64) #2

declare dso_local %struct.TYPE_12__* @sctp_alloc_key(i64) #2

declare dso_local i32 @memcpy(i64, %struct.sctp_auth_random*, i32) #2

declare dso_local i32 @sctp_free_key(%struct.TYPE_12__*) #2

declare dso_local i32 @sctp_clear_cachedkeys(%struct.sctp_tcb*, i32) #2

declare dso_local i32 @sctp_negotiate_hmacid(i32, i32*) #2

declare dso_local i32 @sctp_copy_skeylist(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
