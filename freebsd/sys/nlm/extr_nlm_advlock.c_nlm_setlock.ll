; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_setlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_setlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i64 }
%struct.nlm4_lockargs = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.nlm4_res = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }

@F_WAIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@nlm_nsm_state = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@nlm_xid = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@xdr_nlm4_res = common dso_local global i64 0, align 8
@nlm4_blocked = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nlmgrace\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"nlmcancel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i8*, i32, i32)* @nlm_setlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_setlock(%struct.nlm_host* %0, %struct.rpc_callextra* %1, i32 %2, %struct.timeval* %3, i32 %4, %struct.vnode* %5, i32 %6, %struct.flock* %7, i32 %8, i32 %9, i64 %10, i8* %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlm_host*, align 8
  %17 = alloca %struct.rpc_callextra*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.timeval*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.vnode*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.flock*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.nlm4_lockargs, align 8
  %31 = alloca [32 x i8], align 16
  %32 = alloca %struct.nlm4_res, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca %struct.nlm4_res, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %16, align 8
  store %struct.rpc_callextra* %1, %struct.rpc_callextra** %17, align 8
  store i32 %2, i32* %18, align 4
  store %struct.timeval* %3, %struct.timeval** %19, align 8
  store i32 %4, i32* %20, align 4
  store %struct.vnode* %5, %struct.vnode** %21, align 8
  store i32 %6, i32* %22, align 4
  store %struct.flock* %7, %struct.flock** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i64 %10, i64* %26, align 8
  store i8* %11, i8** %27, align 8
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i8* null, i8** %39, align 8
  %42 = bitcast %struct.nlm4_lockargs* %30 to %struct.nlm4_res*
  %43 = call i32 @memset(%struct.nlm4_res* %42, i32 0, i32 40)
  %44 = call i32 @memset(%struct.nlm4_res* %32, i32 0, i32 40)
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* @F_WAIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %14
  %50 = load i32, i32* @TRUE, align 4
  br label %53

51:                                               ; preds = %14
  %52 = load i32, i32* @FALSE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %37, align 4
  %55 = load %struct.flock*, %struct.flock** %23, align 8
  %56 = getelementptr inbounds %struct.flock, %struct.flock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @F_WRLCK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %38, align 4
  %61 = load %struct.flock*, %struct.flock** %23, align 8
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %25, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i64, i64* %26, align 8
  %66 = load i8*, i8** %27, align 8
  %67 = load i32, i32* %28, align 4
  %68 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 2
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %70 = call i32 @nlm_init_lock(%struct.flock* %61, i32 %62, i32 %63, i32 %64, i64 %65, i8* %66, i32 %67, %struct.TYPE_7__* %68, i8* %69)
  store i32 %70, i32* %40, align 4
  %71 = load i32, i32* %40, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* %40, align 4
  store i32 %74, i32* %15, align 4
  br label %294

75:                                               ; preds = %53
  %76 = load i32, i32* %37, align 4
  %77 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %38, align 4
  %79 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %29, align 4
  %81 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 6
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @nlm_nsm_state, align 4
  %83 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 5
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @hz, align 4
  %85 = mul nsw i32 5, %84
  store i32 %85, i32* %36, align 4
  br label %86

86:                                               ; preds = %205, %178, %130, %75
  %87 = load %struct.nlm_host*, %struct.nlm_host** %16, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %87, i32 %88)
  store i32* %89, i32** %34, align 8
  %90 = load i32*, i32** %34, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOLCK, align 4
  store i32 %93, i32* %15, align 4
  br label %294

94:                                               ; preds = %86
  %95 = load i32, i32* %37, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 2
  %99 = load %struct.vnode*, %struct.vnode** %21, align 8
  %100 = call i8* @nlm_register_wait_lock(%struct.TYPE_7__* %98, %struct.vnode* %99)
  store i8* %100, i8** %39, align 8
  br label %101

101:                                              ; preds = %97, %94
  %102 = call i64 @atomic_fetchadd_int(i32* @nlm_xid, i32 1)
  store i64 %102, i64* %33, align 8
  %103 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 8, i32* %104, align 8
  %105 = bitcast i64* %33 to i8*
  %106 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %18, align 4
  %109 = bitcast %struct.nlm4_lockargs* %30 to %struct.nlm4_res*
  %110 = load i32*, i32** %34, align 8
  %111 = load %struct.rpc_callextra*, %struct.rpc_callextra** %17, align 8
  %112 = load %struct.timeval*, %struct.timeval** %19, align 8
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nlm_lock_rpc(i32 %108, %struct.nlm4_res* %109, %struct.nlm4_res* %32, i32* %110, %struct.rpc_callextra* %111, i32 %114)
  store i32 %115, i32* %35, align 4
  %116 = load i32*, i32** %34, align 8
  %117 = call i32 @CLNT_RELEASE(i32* %116)
  %118 = load i32, i32* %35, align 4
  %119 = load i32, i32* @RPC_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %101
  %122 = load i32, i32* %37, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %39, align 8
  %126 = call i32 @nlm_deregister_wait_lock(i8* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %20, align 4
  br label %86

133:                                              ; preds = %127
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %15, align 4
  br label %294

135:                                              ; preds = %101
  %136 = load i64, i64* @xdr_nlm4_res, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @xdr_free(i32 %137, %struct.nlm4_res* %32)
  %139 = load i32, i32* %37, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %32, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @nlm4_blocked, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i8*, i8** %39, align 8
  %149 = call i32 @nlm_deregister_wait_lock(i8* %148)
  br label %150

150:                                              ; preds = %147, %141, %135
  %151 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %32, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 130
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = bitcast %struct.nlm4_lockargs* %30 to %struct.nlm4_res*
  %157 = load i32, i32* @PCATCH, align 4
  %158 = load i32, i32* %36, align 4
  %159 = call i32 @tsleep(%struct.nlm4_res* %156, i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %158)
  store i32 %159, i32* %40, align 4
  %160 = load i32, i32* %40, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* %40, align 4
  %164 = load i32, i32* @EWOULDBLOCK, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* %40, align 4
  store i32 %167, i32* %15, align 4
  br label %294

168:                                              ; preds = %162, %155
  %169 = load i32, i32* %36, align 4
  %170 = mul nsw i32 2, %169
  store i32 %170, i32* %36, align 4
  %171 = load i32, i32* %36, align 4
  %172 = load i32, i32* @hz, align 4
  %173 = mul nsw i32 30, %172
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* @hz, align 4
  %177 = mul nsw i32 30, %176
  store i32 %177, i32* %36, align 4
  br label %178

178:                                              ; preds = %175, %168
  br label %86

179:                                              ; preds = %150
  %180 = load i32, i32* %37, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %268

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %32, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @nlm4_blocked, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %268

188:                                              ; preds = %182
  %189 = load i8*, i8** %39, align 8
  %190 = load i32, i32* %36, align 4
  %191 = call i32 @nlm_wait_lock(i8* %189, i32 %190)
  store i32 %191, i32* %40, align 4
  %192 = load i32, i32* %40, align 4
  %193 = load i32, i32* @EWOULDBLOCK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load i32, i32* %36, align 4
  %197 = mul nsw i32 2, %196
  store i32 %197, i32* %36, align 4
  %198 = load i32, i32* %36, align 4
  %199 = load i32, i32* @hz, align 4
  %200 = mul nsw i32 30, %199
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load i32, i32* @hz, align 4
  %204 = mul nsw i32 30, %203
  store i32 %204, i32* %36, align 4
  br label %205

205:                                              ; preds = %202, %195
  br label %86

206:                                              ; preds = %188
  %207 = load i32, i32* %40, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %267

209:                                              ; preds = %206
  %210 = call i32 @memset(%struct.nlm4_res* %41, i32 0, i32 40)
  %211 = call i64 @atomic_fetchadd_int(i32* @nlm_xid, i32 1)
  store i64 %211, i64* %33, align 8
  %212 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %41, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 8, i32* %213, align 8
  %214 = bitcast i64* %33 to i8*
  %215 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %41, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %37, align 4
  %218 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %41, i32 0, i32 0
  store i32 %217, i32* %218, align 8
  %219 = load i32, i32* %38, align 4
  %220 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %41, i32 0, i32 1
  store i32 %219, i32* %220, align 4
  %221 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %41, i32 0, i32 2
  %222 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 2
  %223 = bitcast %struct.TYPE_7__* %221 to i8*
  %224 = bitcast %struct.TYPE_7__* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 4, i1 false)
  br label %225

225:                                              ; preds = %251, %209
  %226 = load %struct.nlm_host*, %struct.nlm_host** %16, align 8
  %227 = load i32, i32* @FALSE, align 4
  %228 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %226, i32 %227)
  store i32* %228, i32** %34, align 8
  %229 = load i32*, i32** %34, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %225
  %232 = load i32, i32* @ENOLCK, align 4
  store i32 %232, i32* %15, align 4
  br label %294

233:                                              ; preds = %225
  %234 = load i32, i32* %18, align 4
  %235 = load i32*, i32** %34, align 8
  %236 = load %struct.rpc_callextra*, %struct.rpc_callextra** %17, align 8
  %237 = load %struct.timeval*, %struct.timeval** %19, align 8
  %238 = getelementptr inbounds %struct.timeval, %struct.timeval* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @nlm_cancel_rpc(i32 %234, %struct.nlm4_res* %41, %struct.nlm4_res* %32, i32* %235, %struct.rpc_callextra* %236, i32 %239)
  store i32 %240, i32* %35, align 4
  %241 = load i32*, i32** %34, align 8
  %242 = call i32 @CLNT_RELEASE(i32* %241)
  %243 = load i32, i32* %35, align 4
  %244 = load i32, i32* @RPC_SUCCESS, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %233
  %247 = load i32, i32* @hz, align 4
  %248 = mul nsw i32 10, %247
  %249 = call i32 @pause(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %233
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %35, align 4
  %253 = load i32, i32* @RPC_SUCCESS, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %225, label %255

255:                                              ; preds = %251
  %256 = load i64, i64* @xdr_nlm4_res, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 @xdr_free(i32 %257, %struct.nlm4_res* %32)
  %259 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %32, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  switch i32 %261, label %265 [
    i32 128, label %262
    i32 130, label %263
    i32 129, label %264
  ]

262:                                              ; preds = %255
  store i32 0, i32* %40, align 4
  br label %266

263:                                              ; preds = %255
  br label %266

264:                                              ; preds = %255
  br label %266

265:                                              ; preds = %255
  br label %266

266:                                              ; preds = %265, %264, %263, %262
  br label %267

267:                                              ; preds = %266, %206
  br label %273

268:                                              ; preds = %182, %179
  %269 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %32, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @nlm_map_status(i32 %271)
  store i32 %272, i32* %40, align 4
  br label %273

273:                                              ; preds = %268, %267
  %274 = load i32, i32* %40, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %292, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %29, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %276
  %280 = load %struct.vnode*, %struct.vnode** %21, align 8
  %281 = load i32, i32* %22, align 4
  %282 = load %struct.flock*, %struct.flock** %23, align 8
  %283 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %30, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.nlm_host*, %struct.nlm_host** %16, align 8
  %287 = call i32 @nlm_host_get_sysid(%struct.nlm_host* %286)
  %288 = load i32, i32* %28, align 4
  %289 = call i32 @nlm_record_lock(%struct.vnode* %280, i32 %281, %struct.flock* %282, i32 %285, i32 %287, i32 %288)
  %290 = load %struct.nlm_host*, %struct.nlm_host** %16, align 8
  %291 = call i32 @nlm_host_monitor(%struct.nlm_host* %290, i32 0)
  br label %292

292:                                              ; preds = %279, %276, %273
  %293 = load i32, i32* %40, align 4
  store i32 %293, i32* %15, align 4
  br label %294

294:                                              ; preds = %292, %231, %166, %133, %92, %73
  %295 = load i32, i32* %15, align 4
  ret i32 %295
}

declare dso_local i32 @memset(%struct.nlm4_res*, i32, i32) #1

declare dso_local i32 @nlm_init_lock(%struct.flock*, i32, i32, i32, i64, i8*, i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32* @nlm_host_get_rpc(%struct.nlm_host*, i32) #1

declare dso_local i8* @nlm_register_wait_lock(%struct.TYPE_7__*, %struct.vnode*) #1

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @nlm_lock_rpc(i32, %struct.nlm4_res*, %struct.nlm4_res*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @nlm_deregister_wait_lock(i8*) #1

declare dso_local i32 @xdr_free(i32, %struct.nlm4_res*) #1

declare dso_local i32 @tsleep(%struct.nlm4_res*, i32, i8*, i32) #1

declare dso_local i32 @nlm_wait_lock(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nlm_cancel_rpc(i32, %struct.nlm4_res*, %struct.nlm4_res*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @nlm_map_status(i32) #1

declare dso_local i32 @nlm_record_lock(%struct.vnode*, i32, %struct.flock*, i32, i32, i32) #1

declare dso_local i32 @nlm_host_get_sysid(%struct.nlm_host*) #1

declare dso_local i32 @nlm_host_monitor(%struct.nlm_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
