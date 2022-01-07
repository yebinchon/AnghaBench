; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_rdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_rdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.urwlock = type { i32, i32, i32 }
%struct._umtx_time = type { i32 }
%struct.abs_timeout = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_RWLOCK = common dso_local global i32 0, align 4
@URWLOCK_WRITE_OWNER = common dso_local global i64 0, align 8
@URWLOCK_PREFER_READER = common dso_local global i64 0, align 8
@URWLOCK_WRITE_WAITERS = common dso_local global i64 0, align 8
@URWLOCK_MAX_READERS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@URWLOCK_READ_WAITERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"urdlck\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.urwlock*, i64, %struct._umtx_time*)* @do_rw_rdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rw_rdlock(%struct.thread* %0, %struct.urwlock* %1, i64 %2, %struct._umtx_time* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.urwlock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._umtx_time*, align 8
  %10 = alloca %struct.abs_timeout, align 4
  %11 = alloca %struct.umtx_q*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.urwlock* %1, %struct.urwlock** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct._umtx_time* %3, %struct._umtx_time** %9, align 8
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load %struct.umtx_q*, %struct.umtx_q** %21, align 8
  store %struct.umtx_q* %22, %struct.umtx_q** %11, align 8
  %23 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %24 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %23, i32 0, i32 2
  %25 = call i32 @fueword32(i32* %24, i64* %12)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @EFAULT, align 4
  store i32 %29, i32* %5, align 4
  br label %364

30:                                               ; preds = %4
  %31 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %32 = load i32, i32* @TYPE_RWLOCK, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @GET_SHARE(i64 %33)
  %35 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %36 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %35, i32 0, i32 0
  %37 = call i32 @umtx_key_get(%struct.urwlock* %31, i32 %32, i32 %34, i32* %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %5, align 4
  br label %364

42:                                               ; preds = %30
  %43 = load %struct._umtx_time*, %struct._umtx_time** %9, align 8
  %44 = icmp ne %struct._umtx_time* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct._umtx_time*, %struct._umtx_time** %9, align 8
  %47 = call i32 @abs_timeout_init2(%struct.abs_timeout* %10, %struct._umtx_time* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @URWLOCK_PREFER_READER, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @URWLOCK_PREFER_READER, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @URWLOCK_WRITE_WAITERS, align 8
  %61 = load i64, i64* %13, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %59, %54, %48
  br label %64

64:                                               ; preds = %352, %217, %63
  %65 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %66 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %65, i32 0, i32 0
  %67 = call i32 @fueword32(i32* %66, i64* %14)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %72 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %71, i32 0, i32 0
  %73 = call i32 @umtx_key_release(i32* %72)
  %74 = load i32, i32* @EFAULT, align 4
  store i32 %74, i32* %5, align 4
  br label %364

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %127, %75
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %13, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %82, label %129

82:                                               ; preds = %76
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @URWLOCK_READER_COUNT(i64 %83)
  %85 = load i64, i64* @URWLOCK_MAX_READERS, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @__predict_false(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %92 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %91, i32 0, i32 0
  %93 = call i32 @umtx_key_release(i32* %92)
  %94 = load i32, i32* @EAGAIN, align 4
  store i32 %94, i32* %5, align 4
  br label %364

95:                                               ; preds = %82
  %96 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %97 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %96, i32 0, i32 0
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i32 @casueword32(i32* %97, i64 %98, i64* %15, i64 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %106 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %105, i32 0, i32 0
  %107 = call i32 @umtx_key_release(i32* %106)
  %108 = load i32, i32* @EFAULT, align 4
  store i32 %108, i32* %5, align 4
  br label %364

109:                                              ; preds = %95
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @MPASS(i32 %116)
  %118 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %119 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %118, i32 0, i32 0
  %120 = call i32 @umtx_key_release(i32* %119)
  store i32 0, i32* %5, align 4
  br label %364

121:                                              ; preds = %109
  %122 = load %struct.thread*, %struct.thread** %6, align 8
  %123 = call i32 @umtxq_check_susp(%struct.thread* %122, i32 1)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %15, align 8
  store i64 %128, i64* %14, align 8
  br label %76

129:                                              ; preds = %126, %76
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %353

133:                                              ; preds = %129
  %134 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %135 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %134, i32 0, i32 0
  %136 = call i32 @umtxq_lock(i32* %135)
  %137 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %138 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %137, i32 0, i32 0
  %139 = call i32 @umtxq_busy(i32* %138)
  %140 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %141 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %140, i32 0, i32 0
  %142 = call i32 @umtxq_unlock(i32* %141)
  %143 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %144 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %143, i32 0, i32 0
  %145 = call i32 @fueword32(i32* %144, i64* %14)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %150

148:                                              ; preds = %133
  %149 = load i32, i32* @EFAULT, align 4
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %148, %133
  br label %151

151:                                              ; preds = %195, %150
  %152 = load i32, i32* %17, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %13, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* @URWLOCK_READ_WAITERS, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %159, %154, %151
  %166 = phi i1 [ false, %154 ], [ false, %151 ], [ %164, %159 ]
  br i1 %166, label %167, label %196

167:                                              ; preds = %165
  %168 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %169 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %168, i32 0, i32 0
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @URWLOCK_READ_WAITERS, align 8
  %173 = or i64 %171, %172
  %174 = call i32 @casueword32(i32* %169, i64 %170, i64* %15, i64 %173)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i32, i32* @EFAULT, align 4
  store i32 %178, i32* %17, align 4
  br label %196

179:                                              ; preds = %167
  %180 = load i32, i32* %19, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i64, i64* %15, align 8
  %184 = load i64, i64* %14, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @MPASS(i32 %186)
  br label %219

188:                                              ; preds = %179
  %189 = load i64, i64* %15, align 8
  store i64 %189, i64* %14, align 8
  %190 = load %struct.thread*, %struct.thread** %6, align 8
  %191 = call i32 @umtxq_check_susp(%struct.thread* %190, i32 0)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %196

195:                                              ; preds = %188
  br label %151

196:                                              ; preds = %194, %177, %165
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %201 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %200, i32 0, i32 0
  %202 = call i32 @umtxq_unbusy_unlocked(i32* %201)
  br label %353

203:                                              ; preds = %196
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* %13, align 8
  %206 = and i64 %204, %205
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %203
  %209 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %210 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %209, i32 0, i32 0
  %211 = call i32 @umtxq_unbusy_unlocked(i32* %210)
  %212 = load %struct.thread*, %struct.thread** %6, align 8
  %213 = call i32 @umtxq_check_susp(%struct.thread* %212, i32 1)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %353

217:                                              ; preds = %208
  br label %64

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218, %182
  %220 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %221 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %220, i32 0, i32 1
  %222 = call i32 @fueword32(i32* %221, i64* %16)
  store i32 %222, i32* %19, align 4
  %223 = load i32, i32* %19, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %227 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %226, i32 0, i32 0
  %228 = call i32 @umtxq_unbusy_unlocked(i32* %227)
  %229 = load i32, i32* @EFAULT, align 4
  store i32 %229, i32* %17, align 4
  br label %353

230:                                              ; preds = %219
  %231 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %232 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %231, i32 0, i32 1
  %233 = load i64, i64* %16, align 8
  %234 = add nsw i64 %233, 1
  %235 = call i32 @suword32(i32* %232, i64 %234)
  br label %236

236:                                              ; preds = %277, %230
  %237 = load i64, i64* %14, align 8
  %238 = load i64, i64* %13, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %278

241:                                              ; preds = %236
  %242 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %243 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %242, i32 0, i32 0
  %244 = call i32 @umtxq_lock(i32* %243)
  %245 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %246 = call i32 @umtxq_insert(%struct.umtx_q* %245)
  %247 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %248 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %247, i32 0, i32 0
  %249 = call i32 @umtxq_unbusy(i32* %248)
  %250 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %251 = load %struct._umtx_time*, %struct._umtx_time** %9, align 8
  %252 = icmp eq %struct._umtx_time* %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  br label %255

254:                                              ; preds = %241
  br label %255

255:                                              ; preds = %254, %253
  %256 = phi %struct.abs_timeout* [ null, %253 ], [ %10, %254 ]
  %257 = call i32 @umtxq_sleep(%struct.umtx_q* %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %256)
  store i32 %257, i32* %17, align 4
  %258 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %259 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %258, i32 0, i32 0
  %260 = call i32 @umtxq_busy(i32* %259)
  %261 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %262 = call i32 @umtxq_remove(%struct.umtx_q* %261)
  %263 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %264 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %263, i32 0, i32 0
  %265 = call i32 @umtxq_unlock(i32* %264)
  %266 = load i32, i32* %17, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %255
  br label %278

269:                                              ; preds = %255
  %270 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %271 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %270, i32 0, i32 0
  %272 = call i32 @fueword32(i32* %271, i64* %14)
  store i32 %272, i32* %19, align 4
  %273 = load i32, i32* %19, align 4
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load i32, i32* @EFAULT, align 4
  store i32 %276, i32* %17, align 4
  br label %278

277:                                              ; preds = %269
  br label %236

278:                                              ; preds = %275, %268, %236
  %279 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %280 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %279, i32 0, i32 1
  %281 = call i32 @fueword32(i32* %280, i64* %16)
  store i32 %281, i32* %19, align 4
  %282 = load i32, i32* %19, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %286 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %285, i32 0, i32 0
  %287 = call i32 @umtxq_unbusy_unlocked(i32* %286)
  %288 = load i32, i32* @EFAULT, align 4
  store i32 %288, i32* %17, align 4
  br label %353

289:                                              ; preds = %278
  %290 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %291 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %290, i32 0, i32 1
  %292 = load i64, i64* %16, align 8
  %293 = sub nsw i64 %292, 1
  %294 = call i32 @suword32(i32* %291, i64 %293)
  %295 = load i64, i64* %16, align 8
  %296 = icmp eq i64 %295, 1
  br i1 %296, label %297, label %345

297:                                              ; preds = %289
  %298 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %299 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %298, i32 0, i32 0
  %300 = call i32 @fueword32(i32* %299, i64* %14)
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %19, align 4
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %308

303:                                              ; preds = %297
  %304 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %305 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %304, i32 0, i32 0
  %306 = call i32 @umtxq_unbusy_unlocked(i32* %305)
  %307 = load i32, i32* @EFAULT, align 4
  store i32 %307, i32* %17, align 4
  br label %353

308:                                              ; preds = %297
  br label %309

309:                                              ; preds = %343, %308
  %310 = load %struct.urwlock*, %struct.urwlock** %7, align 8
  %311 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %310, i32 0, i32 0
  %312 = load i64, i64* %14, align 8
  %313 = load i64, i64* %14, align 8
  %314 = load i64, i64* @URWLOCK_READ_WAITERS, align 8
  %315 = xor i64 %314, -1
  %316 = and i64 %313, %315
  %317 = call i32 @casueword32(i32* %311, i64 %312, i64* %15, i64 %316)
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %19, align 4
  %319 = icmp eq i32 %318, -1
  br i1 %319, label %320, label %322

320:                                              ; preds = %309
  %321 = load i32, i32* @EFAULT, align 4
  store i32 %321, i32* %17, align 4
  br label %344

322:                                              ; preds = %309
  %323 = load i32, i32* %19, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i64, i64* %15, align 8
  %327 = load i64, i64* %14, align 8
  %328 = icmp eq i64 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @MPASS(i32 %329)
  br label %344

331:                                              ; preds = %322
  %332 = load i64, i64* %15, align 8
  store i64 %332, i64* %14, align 8
  %333 = load %struct.thread*, %struct.thread** %6, align 8
  %334 = call i32 @umtxq_check_susp(%struct.thread* %333, i32 0)
  store i32 %334, i32* %18, align 4
  %335 = load i32, i32* %18, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %331
  %338 = load i32, i32* %17, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = load i32, i32* %18, align 4
  store i32 %341, i32* %17, align 4
  br label %342

342:                                              ; preds = %340, %337
  br label %344

343:                                              ; preds = %331
  br label %309

344:                                              ; preds = %342, %325, %320
  br label %345

345:                                              ; preds = %344, %289
  %346 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %347 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %346, i32 0, i32 0
  %348 = call i32 @umtxq_unbusy_unlocked(i32* %347)
  %349 = load i32, i32* %17, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  br label %353

352:                                              ; preds = %345
  br label %64

353:                                              ; preds = %351, %303, %284, %225, %216, %199, %132
  %354 = load %struct.umtx_q*, %struct.umtx_q** %11, align 8
  %355 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %354, i32 0, i32 0
  %356 = call i32 @umtx_key_release(i32* %355)
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* @ERESTART, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %353
  %361 = load i32, i32* @EINTR, align 4
  store i32 %361, i32* %17, align 4
  br label %362

362:                                              ; preds = %360, %353
  %363 = load i32, i32* %17, align 4
  store i32 %363, i32* %5, align 4
  br label %364

364:                                              ; preds = %362, %112, %104, %90, %70, %40, %28
  %365 = load i32, i32* %5, align 4
  ret i32 %365
}

declare dso_local i32 @fueword32(i32*, i64*) #1

declare dso_local i32 @umtx_key_get(%struct.urwlock*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i64) #1

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @URWLOCK_READER_COUNT(i64) #1

declare dso_local i32 @casueword32(i32*, i64, i64*, i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @umtxq_unbusy_unlocked(i32*) #1

declare dso_local i32 @suword32(i32*, i64) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
