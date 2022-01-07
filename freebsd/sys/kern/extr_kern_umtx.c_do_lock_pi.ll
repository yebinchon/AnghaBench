; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_pi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.umutex = type { i32 }
%struct._umtx_time = type { i32 }
%struct.abs_timeout = type { i32 }
%struct.umtx_pi = type { i32 }

@UMUTEX_ROBUST = common dso_local global i64 0, align 8
@TYPE_PI_ROBUST_UMUTEX = common dso_local global i32 0, align 4
@TYPE_PI_UMUTEX = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UMUTEX_UNOWNED = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i64 0, align 8
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i64 0, align 8
@UMUTEX_RB_OWNERDEAD = common dso_local global i64 0, align 8
@EOWNERDEAD = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"umtxpi\00", align 1
@USYNC_PROCESS_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, i64, %struct._umtx_time*, i32)* @do_lock_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lock_pi(%struct.thread* %0, %struct.umutex* %1, i64 %2, %struct._umtx_time* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.umutex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._umtx_time*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.abs_timeout, align 4
  %13 = alloca %struct.umtx_q*, align 8
  %14 = alloca %struct.umtx_pi*, align 8
  %15 = alloca %struct.umtx_pi*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.umutex* %1, %struct.umutex** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct._umtx_time* %3, %struct._umtx_time** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load %struct.thread*, %struct.thread** %7, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  %27 = load %struct.umtx_q*, %struct.umtx_q** %26, align 8
  store %struct.umtx_q* %27, %struct.umtx_q** %13, align 8
  %28 = load %struct.umutex*, %struct.umutex** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @UMUTEX_ROBUST, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @TYPE_PI_ROBUST_UMUTEX, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @TYPE_PI_UMUTEX, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @GET_SHARE(i64 %39)
  %41 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %42 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %41, i32 0, i32 0
  %43 = call i32 @umtx_key_get(%struct.umutex* %28, i32 %38, i32 %40, i32* %42)
  store i32 %43, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %6, align 4
  br label %324

47:                                               ; preds = %37
  %48 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %49 = icmp ne %struct._umtx_time* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %52 = call i32 @abs_timeout_init2(%struct.abs_timeout* %12, %struct._umtx_time* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %55 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %54, i32 0, i32 0
  %56 = call i32 @umtxq_lock(i32* %55)
  %57 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %58 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %57, i32 0, i32 0
  %59 = call %struct.umtx_pi* @umtx_pi_lookup(i32* %58)
  store %struct.umtx_pi* %59, %struct.umtx_pi** %14, align 8
  %60 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %61 = icmp eq %struct.umtx_pi* %60, null
  br i1 %61, label %62, label %98

62:                                               ; preds = %53
  %63 = load i32, i32* @M_NOWAIT, align 4
  %64 = call %struct.umtx_pi* @umtx_pi_alloc(i32 %63)
  store %struct.umtx_pi* %64, %struct.umtx_pi** %15, align 8
  %65 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  %66 = icmp eq %struct.umtx_pi* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %69 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %68, i32 0, i32 0
  %70 = call i32 @umtxq_unlock(i32* %69)
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call %struct.umtx_pi* @umtx_pi_alloc(i32 %71)
  store %struct.umtx_pi* %72, %struct.umtx_pi** %15, align 8
  %73 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %74 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %73, i32 0, i32 0
  %75 = call i32 @umtxq_lock(i32* %74)
  %76 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %77 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %76, i32 0, i32 0
  %78 = call %struct.umtx_pi* @umtx_pi_lookup(i32* %77)
  store %struct.umtx_pi* %78, %struct.umtx_pi** %14, align 8
  %79 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %80 = icmp ne %struct.umtx_pi* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  %83 = call i32 @umtx_pi_free(%struct.umtx_pi* %82)
  store %struct.umtx_pi* null, %struct.umtx_pi** %15, align 8
  br label %84

84:                                               ; preds = %81, %67
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  %87 = icmp ne %struct.umtx_pi* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %90 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  %93 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  %95 = call i32 @umtx_pi_insert(%struct.umtx_pi* %94)
  %96 = load %struct.umtx_pi*, %struct.umtx_pi** %15, align 8
  store %struct.umtx_pi* %96, %struct.umtx_pi** %14, align 8
  br label %97

97:                                               ; preds = %88, %85
  br label %98

98:                                               ; preds = %97, %53
  %99 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %100 = call i32 @umtx_pi_ref(%struct.umtx_pi* %99)
  %101 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %102 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %101, i32 0, i32 0
  %103 = call i32 @umtxq_unlock(i32* %102)
  br label %104

104:                                              ; preds = %310, %303, %273, %173, %98
  %105 = load %struct.umutex*, %struct.umutex** %8, align 8
  %106 = getelementptr inbounds %struct.umutex, %struct.umutex* %105, i32 0, i32 0
  %107 = load i64, i64* @UMUTEX_UNOWNED, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @casueword32(i32* %106, i64 %107, i64* %18, i64 %108)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @EFAULT, align 4
  store i32 %113, i32* %20, align 4
  br label %311

114:                                              ; preds = %104
  %115 = load i32, i32* %21, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* @UMUTEX_UNOWNED, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @MPASS(i32 %121)
  store i32 0, i32* %20, align 4
  br label %311

123:                                              ; preds = %114
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* @UMUTEX_RB_NOTRECOV, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %128, i32* %20, align 4
  br label %311

129:                                              ; preds = %123
  %130 = load i32, i32* %20, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.thread*, %struct.thread** %7, align 8
  %134 = call i32 @umtxq_check_susp(%struct.thread* %133, i32 1)
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %311

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %129
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %219

147:                                              ; preds = %143, %139
  %148 = load i64, i64* %18, align 8
  store i64 %148, i64* %17, align 8
  %149 = load %struct.umutex*, %struct.umutex** %8, align 8
  %150 = getelementptr inbounds %struct.umutex, %struct.umutex* %149, i32 0, i32 0
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %154 = or i64 %152, %153
  %155 = call i32 @casueword32(i32* %150, i64 %151, i64* %18, i64 %154)
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* @EFAULT, align 4
  store i32 %159, i32* %20, align 4
  br label %311

160:                                              ; preds = %147
  %161 = load i32, i32* %21, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load i32, i32* %20, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.thread*, %struct.thread** %7, align 8
  %168 = call i32 @umtxq_check_susp(%struct.thread* %167, i32 1)
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %311

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %163
  br label %104

174:                                              ; preds = %160
  %175 = load i32, i32* %21, align 4
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @MPASS(i32 %177)
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %17, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @MPASS(i32 %182)
  %184 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %185 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %184, i32 0, i32 0
  %186 = call i32 @umtxq_lock(i32* %185)
  %187 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %188 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %187, i32 0, i32 0
  %189 = call i32 @umtxq_busy(i32* %188)
  %190 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %191 = load %struct.thread*, %struct.thread** %7, align 8
  %192 = call i32 @umtx_pi_claim(%struct.umtx_pi* %190, %struct.thread* %191)
  store i32 %192, i32* %20, align 4
  %193 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %194 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %193, i32 0, i32 0
  %195 = call i32 @umtxq_unbusy(i32* %194)
  %196 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %197 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %196, i32 0, i32 0
  %198 = call i32 @umtxq_unlock(i32* %197)
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %174
  %202 = load %struct.umutex*, %struct.umutex** %8, align 8
  %203 = getelementptr inbounds %struct.umutex, %struct.umutex* %202, i32 0, i32 0
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %206 = or i64 %204, %205
  %207 = load i64, i64* %17, align 8
  %208 = call i32 @casuword32(i32* %203, i64 %206, i64 %207)
  br label %209

209:                                              ; preds = %201, %174
  %210 = load i32, i32* %20, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %217, i32* %20, align 4
  br label %218

218:                                              ; preds = %216, %212, %209
  br label %311

219:                                              ; preds = %143
  %220 = load i64, i64* %18, align 8
  %221 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %222 = xor i64 %221, -1
  %223 = and i64 %220, %222
  %224 = load i64, i64* %16, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* @EDEADLK, align 4
  store i32 %227, i32* %20, align 4
  br label %311

228:                                              ; preds = %219
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @EBUSY, align 4
  store i32 %232, i32* %20, align 4
  br label %311

233:                                              ; preds = %228
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %311

237:                                              ; preds = %233
  %238 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %239 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %238, i32 0, i32 0
  %240 = call i32 @umtxq_lock(i32* %239)
  %241 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %242 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %241, i32 0, i32 0
  %243 = call i32 @umtxq_busy(i32* %242)
  %244 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %245 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %244, i32 0, i32 0
  %246 = call i32 @umtxq_unlock(i32* %245)
  %247 = load %struct.umutex*, %struct.umutex** %8, align 8
  %248 = getelementptr inbounds %struct.umutex, %struct.umutex* %247, i32 0, i32 0
  %249 = load i64, i64* %18, align 8
  %250 = load i64, i64* %18, align 8
  %251 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %252 = or i64 %250, %251
  %253 = call i32 @casueword32(i32* %248, i64 %249, i64* %19, i64 %252)
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* %21, align 4
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %261

256:                                              ; preds = %237
  %257 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %258 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %257, i32 0, i32 0
  %259 = call i32 @umtxq_unbusy_unlocked(i32* %258)
  %260 = load i32, i32* @EFAULT, align 4
  store i32 %260, i32* %20, align 4
  br label %311

261:                                              ; preds = %237
  %262 = load i32, i32* %21, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %266 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %265, i32 0, i32 0
  %267 = call i32 @umtxq_unbusy_unlocked(i32* %266)
  %268 = load %struct.thread*, %struct.thread** %7, align 8
  %269 = call i32 @umtxq_check_susp(%struct.thread* %268, i32 1)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  br label %311

273:                                              ; preds = %264
  br label %104

274:                                              ; preds = %261
  %275 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %276 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %275, i32 0, i32 0
  %277 = call i32 @umtxq_lock(i32* %276)
  %278 = load i64, i64* %19, align 8
  %279 = load i64, i64* %18, align 8
  %280 = icmp eq i64 %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @MPASS(i32 %281)
  %283 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %284 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %285 = load i64, i64* %18, align 8
  %286 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %287 = xor i64 %286, -1
  %288 = and i64 %285, %287
  %289 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %290 = icmp eq %struct._umtx_time* %289, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %274
  br label %293

292:                                              ; preds = %274
  br label %293

293:                                              ; preds = %292, %291
  %294 = phi %struct.abs_timeout* [ null, %291 ], [ %12, %292 ]
  %295 = load i64, i64* %9, align 8
  %296 = load i64, i64* @USYNC_PROCESS_SHARED, align 8
  %297 = and i64 %295, %296
  %298 = icmp ne i64 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @umtxq_sleep_pi(%struct.umtx_q* %283, %struct.umtx_pi* %284, i64 %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %294, i32 %299)
  store i32 %300, i32* %20, align 4
  %301 = load i32, i32* %20, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %293
  br label %104

304:                                              ; preds = %293
  %305 = load %struct.thread*, %struct.thread** %7, align 8
  %306 = call i32 @umtxq_check_susp(%struct.thread* %305, i32 0)
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %20, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %311

310:                                              ; preds = %304
  br label %104

311:                                              ; preds = %309, %272, %256, %236, %231, %226, %218, %171, %158, %137, %127, %117, %112
  %312 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %313 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %312, i32 0, i32 0
  %314 = call i32 @umtxq_lock(i32* %313)
  %315 = load %struct.umtx_pi*, %struct.umtx_pi** %14, align 8
  %316 = call i32 @umtx_pi_unref(%struct.umtx_pi* %315)
  %317 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %318 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %317, i32 0, i32 0
  %319 = call i32 @umtxq_unlock(i32* %318)
  %320 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %321 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %320, i32 0, i32 0
  %322 = call i32 @umtx_key_release(i32* %321)
  %323 = load i32, i32* %20, align 4
  store i32 %323, i32* %6, align 4
  br label %324

324:                                              ; preds = %311, %45
  %325 = load i32, i32* %6, align 4
  ret i32 %325
}

declare dso_local i32 @umtx_key_get(%struct.umutex*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i64) #1

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local %struct.umtx_pi* @umtx_pi_lookup(i32*) #1

declare dso_local %struct.umtx_pi* @umtx_pi_alloc(i32) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @umtx_pi_free(%struct.umtx_pi*) #1

declare dso_local i32 @umtx_pi_insert(%struct.umtx_pi*) #1

declare dso_local i32 @umtx_pi_ref(%struct.umtx_pi*) #1

declare dso_local i32 @casueword32(i32*, i64, i64*, i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtx_pi_claim(%struct.umtx_pi*, %struct.thread*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @casuword32(i32*, i64, i64) #1

declare dso_local i32 @umtxq_unbusy_unlocked(i32*) #1

declare dso_local i32 @umtxq_sleep_pi(%struct.umtx_q*, %struct.umtx_pi*, i64, i8*, %struct.abs_timeout*, i32) #1

declare dso_local i32 @umtx_pi_unref(%struct.umtx_pi*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
