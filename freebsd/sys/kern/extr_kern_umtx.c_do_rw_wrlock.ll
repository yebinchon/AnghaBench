; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_wrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_wrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.urwlock = type { i32, i32, i32, i32 }
%struct._umtx_time = type { i32 }
%struct.abs_timeout = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_RWLOCK = common dso_local global i32 0, align 4
@URWLOCK_WRITE_OWNER = common dso_local global i64 0, align 8
@URWLOCK_WRITE_WAITERS = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@UMTX_SHARED_QUEUE = common dso_local global i32 0, align 4
@UMTX_EXCLUSIVE_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"uwrlck\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.urwlock*, %struct._umtx_time*)* @do_rw_wrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rw_wrlock(%struct.thread* %0, %struct.urwlock* %1, %struct._umtx_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.urwlock*, align 8
  %7 = alloca %struct._umtx_time*, align 8
  %8 = alloca %struct.abs_timeout, align 4
  %9 = alloca %struct.umtx_q*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.urwlock* %1, %struct.urwlock** %6, align 8
  store %struct._umtx_time* %2, %struct._umtx_time** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.umtx_q*, %struct.umtx_q** %19, align 8
  store %struct.umtx_q* %20, %struct.umtx_q** %9, align 8
  %21 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %22 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %21, i32 0, i32 3
  %23 = call i32 @fueword32(i32* %22, i64* %10)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EFAULT, align 4
  store i32 %27, i32* %4, align 4
  br label %391

28:                                               ; preds = %3
  %29 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %30 = load i32, i32* @TYPE_RWLOCK, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @GET_SHARE(i64 %31)
  %33 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %34 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %33, i32 0, i32 0
  %35 = call i32 @umtx_key_get(%struct.urwlock* %29, i32 %30, i32 %32, i32* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %4, align 4
  br label %391

40:                                               ; preds = %28
  %41 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %42 = icmp ne %struct._umtx_time* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %45 = call i32 @abs_timeout_init2(%struct.abs_timeout* %8, %struct._umtx_time* %44)
  br label %46

46:                                               ; preds = %43, %40
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %376, %228, %46
  %48 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %49 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %48, i32 0, i32 1
  %50 = call i32 @fueword32(i32* %49, i64* %11)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %55 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %54, i32 0, i32 0
  %56 = call i32 @umtx_key_release(i32* %55)
  %57 = load i32, i32* @EFAULT, align 4
  store i32 %57, i32* %4, align 4
  br label %391

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %104, %58
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %62 = and i64 %60, %61
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @URWLOCK_READER_COUNT(i64 %65)
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i1 [ false, %59 ], [ %67, %64 ]
  br i1 %69, label %70, label %105

70:                                               ; preds = %68
  %71 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %72 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %71, i32 0, i32 1
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %76 = or i64 %74, %75
  %77 = call i32 @casueword32(i32* %72, i64 %73, i64* %12, i64 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %82 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %81, i32 0, i32 0
  %83 = call i32 @umtx_key_release(i32* %82)
  %84 = load i32, i32* @EFAULT, align 4
  store i32 %84, i32* %4, align 4
  br label %391

85:                                               ; preds = %70
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @MPASS(i32 %92)
  %94 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %95 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %94, i32 0, i32 0
  %96 = call i32 @umtx_key_release(i32* %95)
  store i32 0, i32* %4, align 4
  br label %391

97:                                               ; preds = %85
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %11, align 8
  %99 = load %struct.thread*, %struct.thread** %5, align 8
  %100 = call i32 @umtxq_check_susp(%struct.thread* %99, i32 1)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %105

104:                                              ; preds = %97
  br label %59

105:                                              ; preds = %103, %68
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %111 = load i64, i64* @URWLOCK_WRITE_WAITERS, align 8
  %112 = or i64 %110, %111
  %113 = and i64 %109, %112
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %108
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %120 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %119, i32 0, i32 0
  %121 = call i32 @umtxq_lock(i32* %120)
  %122 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %123 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %122, i32 0, i32 0
  %124 = call i32 @umtxq_busy(i32* %123)
  %125 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %126 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %125, i32 0, i32 0
  %127 = load i32, i32* @INT_MAX, align 4
  %128 = load i32, i32* @UMTX_SHARED_QUEUE, align 4
  %129 = call i32 @umtxq_signal_queue(i32* %126, i32 %127, i32 %128)
  %130 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %131 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %130, i32 0, i32 0
  %132 = call i32 @umtxq_unbusy(i32* %131)
  %133 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %134 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %133, i32 0, i32 0
  %135 = call i32 @umtxq_unlock(i32* %134)
  br label %136

136:                                              ; preds = %118, %115, %108
  br label %380

137:                                              ; preds = %105
  %138 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %139 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %138, i32 0, i32 0
  %140 = call i32 @umtxq_lock(i32* %139)
  %141 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %142 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %141, i32 0, i32 0
  %143 = call i32 @umtxq_busy(i32* %142)
  %144 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %145 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %144, i32 0, i32 0
  %146 = call i32 @umtxq_unlock(i32* %145)
  %147 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %148 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %147, i32 0, i32 1
  %149 = call i32 @fueword32(i32* %148, i64* %11)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* @EFAULT, align 4
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %152, %137
  br label %155

155:                                              ; preds = %202, %154
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @URWLOCK_READER_COUNT(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163, %158
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* @URWLOCK_WRITE_WAITERS, align 8
  %170 = and i64 %168, %169
  %171 = icmp eq i64 %170, 0
  br label %172

172:                                              ; preds = %167, %163, %155
  %173 = phi i1 [ false, %163 ], [ false, %155 ], [ %171, %167 ]
  br i1 %173, label %174, label %203

174:                                              ; preds = %172
  %175 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %176 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %175, i32 0, i32 1
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @URWLOCK_WRITE_WAITERS, align 8
  %180 = or i64 %178, %179
  %181 = call i32 @casueword32(i32* %176, i64 %177, i64* %12, i64 %180)
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* @EFAULT, align 4
  store i32 %185, i32* %15, align 4
  br label %203

186:                                              ; preds = %174
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @MPASS(i32 %193)
  br label %230

195:                                              ; preds = %186
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %11, align 8
  %197 = load %struct.thread*, %struct.thread** %5, align 8
  %198 = call i32 @umtxq_check_susp(%struct.thread* %197, i32 0)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %203

202:                                              ; preds = %195
  br label %155

203:                                              ; preds = %201, %184, %172
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %208 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %207, i32 0, i32 0
  %209 = call i32 @umtxq_unbusy_unlocked(i32* %208)
  br label %380

210:                                              ; preds = %203
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %213 = and i64 %211, %212
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = load i64, i64* %11, align 8
  %217 = call i64 @URWLOCK_READER_COUNT(i64 %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %221 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %220, i32 0, i32 0
  %222 = call i32 @umtxq_unbusy_unlocked(i32* %221)
  %223 = load %struct.thread*, %struct.thread** %5, align 8
  %224 = call i32 @umtxq_check_susp(%struct.thread* %223, i32 0)
  store i32 %224, i32* %15, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %380

228:                                              ; preds = %219
  br label %47

229:                                              ; preds = %215, %210
  br label %230

230:                                              ; preds = %229, %189
  %231 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %232 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %231, i32 0, i32 2
  %233 = call i32 @fueword32(i32* %232, i64* %13)
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %238 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %237, i32 0, i32 0
  %239 = call i32 @umtxq_unbusy_unlocked(i32* %238)
  %240 = load i32, i32* @EFAULT, align 4
  store i32 %240, i32* %15, align 4
  br label %380

241:                                              ; preds = %230
  %242 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %243 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %242, i32 0, i32 2
  %244 = load i64, i64* %13, align 8
  %245 = add nsw i64 %244, 1
  %246 = call i32 @suword32(i32* %243, i64 %245)
  br label %247

247:                                              ; preds = %296, %241
  %248 = load i64, i64* %11, align 8
  %249 = load i64, i64* @URWLOCK_WRITE_OWNER, align 8
  %250 = and i64 %248, %249
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %247
  %253 = load i64, i64* %11, align 8
  %254 = call i64 @URWLOCK_READER_COUNT(i64 %253)
  %255 = icmp ne i64 %254, 0
  br label %256

256:                                              ; preds = %252, %247
  %257 = phi i1 [ true, %247 ], [ %255, %252 ]
  br i1 %257, label %258, label %297

258:                                              ; preds = %256
  %259 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %260 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %259, i32 0, i32 0
  %261 = call i32 @umtxq_lock(i32* %260)
  %262 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %263 = load i32, i32* @UMTX_EXCLUSIVE_QUEUE, align 4
  %264 = call i32 @umtxq_insert_queue(%struct.umtx_q* %262, i32 %263)
  %265 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %266 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %265, i32 0, i32 0
  %267 = call i32 @umtxq_unbusy(i32* %266)
  %268 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %269 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %270 = icmp eq %struct._umtx_time* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %258
  br label %273

272:                                              ; preds = %258
  br label %273

273:                                              ; preds = %272, %271
  %274 = phi %struct.abs_timeout* [ null, %271 ], [ %8, %272 ]
  %275 = call i32 @umtxq_sleep(%struct.umtx_q* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %274)
  store i32 %275, i32* %15, align 4
  %276 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %277 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %276, i32 0, i32 0
  %278 = call i32 @umtxq_busy(i32* %277)
  %279 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %280 = load i32, i32* @UMTX_EXCLUSIVE_QUEUE, align 4
  %281 = call i32 @umtxq_remove_queue(%struct.umtx_q* %279, i32 %280)
  %282 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %283 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %282, i32 0, i32 0
  %284 = call i32 @umtxq_unlock(i32* %283)
  %285 = load i32, i32* %15, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %273
  br label %297

288:                                              ; preds = %273
  %289 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %290 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %289, i32 0, i32 1
  %291 = call i32 @fueword32(i32* %290, i64* %11)
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %17, align 4
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = load i32, i32* @EFAULT, align 4
  store i32 %295, i32* %15, align 4
  br label %297

296:                                              ; preds = %288
  br label %247

297:                                              ; preds = %294, %287, %256
  %298 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %299 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %298, i32 0, i32 2
  %300 = call i32 @fueword32(i32* %299, i64* %13)
  store i32 %300, i32* %17, align 4
  %301 = load i32, i32* %17, align 4
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %308

303:                                              ; preds = %297
  %304 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %305 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %304, i32 0, i32 0
  %306 = call i32 @umtxq_unbusy_unlocked(i32* %305)
  %307 = load i32, i32* @EFAULT, align 4
  store i32 %307, i32* %15, align 4
  br label %380

308:                                              ; preds = %297
  %309 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %310 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %309, i32 0, i32 2
  %311 = load i64, i64* %13, align 8
  %312 = sub nsw i64 %311, 1
  %313 = call i32 @suword32(i32* %310, i64 %312)
  %314 = load i64, i64* %13, align 8
  %315 = icmp eq i64 %314, 1
  br i1 %315, label %316, label %375

316:                                              ; preds = %308
  %317 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %318 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %317, i32 0, i32 1
  %319 = call i32 @fueword32(i32* %318, i64* %11)
  store i32 %319, i32* %17, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %324 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %323, i32 0, i32 0
  %325 = call i32 @umtxq_unbusy_unlocked(i32* %324)
  %326 = load i32, i32* @EFAULT, align 4
  store i32 %326, i32* %15, align 4
  br label %380

327:                                              ; preds = %316
  br label %328

328:                                              ; preds = %362, %327
  %329 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %330 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %329, i32 0, i32 1
  %331 = load i64, i64* %11, align 8
  %332 = load i64, i64* %11, align 8
  %333 = load i64, i64* @URWLOCK_WRITE_WAITERS, align 8
  %334 = xor i64 %333, -1
  %335 = and i64 %332, %334
  %336 = call i32 @casueword32(i32* %330, i64 %331, i64* %12, i64 %335)
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %17, align 4
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %339, label %341

339:                                              ; preds = %328
  %340 = load i32, i32* @EFAULT, align 4
  store i32 %340, i32* %15, align 4
  br label %363

341:                                              ; preds = %328
  %342 = load i32, i32* %17, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %341
  %345 = load i64, i64* %12, align 8
  %346 = load i64, i64* %11, align 8
  %347 = icmp eq i64 %345, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @MPASS(i32 %348)
  br label %363

350:                                              ; preds = %341
  %351 = load i64, i64* %12, align 8
  store i64 %351, i64* %11, align 8
  %352 = load %struct.thread*, %struct.thread** %5, align 8
  %353 = call i32 @umtxq_check_susp(%struct.thread* %352, i32 0)
  store i32 %353, i32* %16, align 4
  %354 = load i32, i32* %16, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %350
  %357 = load i32, i32* %15, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = load i32, i32* %16, align 4
  store i32 %360, i32* %15, align 4
  br label %361

361:                                              ; preds = %359, %356
  br label %363

362:                                              ; preds = %350
  br label %328

363:                                              ; preds = %361, %344, %339
  %364 = load %struct.urwlock*, %struct.urwlock** %6, align 8
  %365 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %364, i32 0, i32 0
  %366 = call i32 @fueword32(i32* %365, i64* %14)
  store i32 %366, i32* %17, align 4
  %367 = load i32, i32* %17, align 4
  %368 = icmp eq i32 %367, -1
  br i1 %368, label %369, label %374

369:                                              ; preds = %363
  %370 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %371 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %370, i32 0, i32 0
  %372 = call i32 @umtxq_unbusy_unlocked(i32* %371)
  %373 = load i32, i32* @EFAULT, align 4
  store i32 %373, i32* %15, align 4
  br label %380

374:                                              ; preds = %363
  br label %376

375:                                              ; preds = %308
  store i64 0, i64* %14, align 8
  br label %376

376:                                              ; preds = %375, %374
  %377 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %378 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %377, i32 0, i32 0
  %379 = call i32 @umtxq_unbusy_unlocked(i32* %378)
  br label %47

380:                                              ; preds = %369, %322, %303, %236, %227, %206, %136
  %381 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %382 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %381, i32 0, i32 0
  %383 = call i32 @umtx_key_release(i32* %382)
  %384 = load i32, i32* %15, align 4
  %385 = load i32, i32* @ERESTART, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %380
  %388 = load i32, i32* @EINTR, align 4
  store i32 %388, i32* %15, align 4
  br label %389

389:                                              ; preds = %387, %380
  %390 = load i32, i32* %15, align 4
  store i32 %390, i32* %4, align 4
  br label %391

391:                                              ; preds = %389, %88, %80, %53, %38, %26
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local i32 @fueword32(i32*, i64*) #1

declare dso_local i32 @umtx_key_get(%struct.urwlock*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i64) #1

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

declare dso_local i64 @URWLOCK_READER_COUNT(i64) #1

declare dso_local i32 @casueword32(i32*, i64, i64*, i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_signal_queue(i32*, i32, i32) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @umtxq_unbusy_unlocked(i32*) #1

declare dso_local i32 @suword32(i32*, i64) #1

declare dso_local i32 @umtxq_insert_queue(%struct.umtx_q*, i32) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

declare dso_local i32 @umtxq_remove_queue(%struct.umtx_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
