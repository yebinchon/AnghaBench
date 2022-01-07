; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32, %struct.sigacts* }
%struct.sigacts = type { i32, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.sigaction = type { i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32* null, align 8
@SIG_IGN = common dso_local global i32* null, align 8
@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@SA_NOCLDWAIT = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@PS_NOCLDSTOP = common dso_local global i32 0, align 4
@PS_NOCLDWAIT = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@PS_CLDSIGIGN = common dso_local global i32 0, align 4
@SIGPROP_IGNORE = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@KSA_FREEBSD4 = common dso_local global i32 0, align 4
@KSA_OSIGSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sigaction(%struct.thread* %0, i32 %1, %struct.sigaction* %2, %struct.sigaction* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigaction*, align 8
  %10 = alloca %struct.sigaction*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sigacts*, align 8
  %13 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sigaction* %2, %struct.sigaction** %9, align 8
  store %struct.sigaction* %3, %struct.sigaction** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @_SIG_VALID(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %505

22:                                               ; preds = %5
  %23 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %24 = icmp ne %struct.sigaction* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** @SIG_DFL, align 8
  %30 = icmp ne i32* %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** @SIG_IGN, align 8
  %36 = icmp ne i32* %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SA_ONSTACK, align 4
  %42 = load i32, i32* @SA_RESTART, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SA_RESETHAND, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SA_NOCLDSTOP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SA_NODEFER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SA_NOCLDWAIT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SA_SIGINFO, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %40, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %505

59:                                               ; preds = %37, %31, %25, %22
  %60 = load %struct.proc*, %struct.proc** %13, align 8
  %61 = call i32 @PROC_LOCK(%struct.proc* %60)
  %62 = load %struct.proc*, %struct.proc** %13, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 1
  %64 = load %struct.sigacts*, %struct.sigacts** %63, align 8
  store %struct.sigacts* %64, %struct.sigacts** %12, align 8
  %65 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %66 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %65, i32 0, i32 1
  %67 = call i32 @mtx_lock(i32* %66)
  %68 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %69 = icmp ne %struct.sigaction* %68, null
  br i1 %69, label %70, label %200

70:                                               ; preds = %59
  %71 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %72 = call i32 @memset(%struct.sigaction* %71, i32 0, i32 32)
  %73 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %74 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %73, i32 0, i32 12
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @_SIG_IDX(i32 %76)
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %81 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %83 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @SIGISMEMBER(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %70
  %89 = load i32, i32* @SA_ONSTACK, align 4
  %90 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %91 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %70
  %95 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %96 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @SIGISMEMBER(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @SA_RESTART, align 4
  %103 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %104 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %109 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @SIGISMEMBER(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @SA_RESETHAND, align 4
  %116 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %117 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %122 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @SIGISMEMBER(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @SA_NODEFER, align 4
  %129 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %130 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %120
  %134 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %135 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @SIGISMEMBER(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load i32, i32* @SA_SIGINFO, align 4
  %142 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %143 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %147 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i64 @_SIG_IDX(i32 %149)
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %154 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %153, i32 0, i32 2
  store i32* %152, i32** %154, align 8
  br label %165

155:                                              ; preds = %133
  %156 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %157 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %156, i32 0, i32 3
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i64 @_SIG_IDX(i32 %159)
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %164 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %163, i32 0, i32 1
  store i32* %162, i32** %164, align 8
  br label %165

165:                                              ; preds = %155, %140
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @SIGCHLD, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %171 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PS_NOCLDSTOP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i32, i32* @SA_NOCLDSTOP, align 4
  %178 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %179 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %169, %165
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @SIGCHLD, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %188 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @PS_NOCLDWAIT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @SA_NOCLDWAIT, align 4
  %195 = load %struct.sigaction*, %struct.sigaction** %10, align 8
  %196 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %186, %182
  br label %200

200:                                              ; preds = %199, %59
  %201 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %202 = icmp ne %struct.sigaction* %201, null
  br i1 %202, label %203, label %499

203:                                              ; preds = %200
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @SIGKILL, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @SIGSTOP, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %207, %203
  %212 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %213 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** @SIG_DFL, align 8
  %216 = icmp ne i32* %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %219 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %218, i32 0, i32 1
  %220 = call i32 @mtx_unlock(i32* %219)
  %221 = load %struct.proc*, %struct.proc** %13, align 8
  %222 = call i32 @PROC_UNLOCK(%struct.proc* %221)
  %223 = load i32, i32* @EINVAL, align 4
  store i32 %223, i32* %6, align 4
  br label %505

224:                                              ; preds = %211, %207
  %225 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %226 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %229 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %228, i32 0, i32 12
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i64 @_SIG_IDX(i32 %231)
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  %234 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %235 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %234, i32 0, i32 12
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i64 @_SIG_IDX(i32 %237)
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @SIG_CANTMASK(i32 %240)
  %242 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %243 = load i32, i32* @SA_SIGINFO, align 4
  %244 = call i64 @sigact_flag_test(%struct.sigaction* %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %224
  %247 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %248 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %251 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %250, i32 0, i32 3
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i64 @_SIG_IDX(i32 %253)
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  store i32* %249, i32** %255, align 8
  %256 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %257 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %256, i32 0, i32 11
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @SIGADDSET(i32 %258, i32 %259)
  br label %276

261:                                              ; preds = %224
  %262 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %263 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %266 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %265, i32 0, i32 3
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i64 @_SIG_IDX(i32 %268)
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  store i32* %264, i32** %270, align 8
  %271 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %272 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %271, i32 0, i32 11
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @SIGDELSET(i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %261, %246
  %277 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %278 = load i32, i32* @SA_RESTART, align 4
  %279 = call i64 @sigact_flag_test(%struct.sigaction* %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %276
  %282 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %283 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @SIGADDSET(i32 %284, i32 %285)
  br label %293

287:                                              ; preds = %276
  %288 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %289 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @SIGDELSET(i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %287, %281
  %294 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %295 = load i32, i32* @SA_ONSTACK, align 4
  %296 = call i64 @sigact_flag_test(%struct.sigaction* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %300 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %299, i32 0, i32 9
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @SIGADDSET(i32 %301, i32 %302)
  br label %310

304:                                              ; preds = %293
  %305 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %306 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %8, align 4
  %309 = call i32 @SIGDELSET(i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %304, %298
  %311 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %312 = load i32, i32* @SA_RESETHAND, align 4
  %313 = call i64 @sigact_flag_test(%struct.sigaction* %311, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %317 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %316, i32 0, i32 8
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @SIGADDSET(i32 %318, i32 %319)
  br label %327

321:                                              ; preds = %310
  %322 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %323 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @SIGDELSET(i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %321, %315
  %328 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %329 = load i32, i32* @SA_NODEFER, align 4
  %330 = call i64 @sigact_flag_test(%struct.sigaction* %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %334 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @SIGADDSET(i32 %335, i32 %336)
  br label %344

338:                                              ; preds = %327
  %339 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %340 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @SIGDELSET(i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %338, %332
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @SIGCHLD, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %425

348:                                              ; preds = %344
  %349 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %350 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @SA_NOCLDSTOP, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %348
  %356 = load i32, i32* @PS_NOCLDSTOP, align 4
  %357 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %358 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  br label %368

361:                                              ; preds = %348
  %362 = load i32, i32* @PS_NOCLDSTOP, align 4
  %363 = xor i32 %362, -1
  %364 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %365 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %361, %355
  %369 = load %struct.sigaction*, %struct.sigaction** %9, align 8
  %370 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @SA_NOCLDWAIT, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %394

375:                                              ; preds = %368
  %376 = load %struct.proc*, %struct.proc** %13, align 8
  %377 = getelementptr inbounds %struct.proc, %struct.proc* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %380, label %387

380:                                              ; preds = %375
  %381 = load i32, i32* @PS_NOCLDWAIT, align 4
  %382 = xor i32 %381, -1
  %383 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %384 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %393

387:                                              ; preds = %375
  %388 = load i32, i32* @PS_NOCLDWAIT, align 4
  %389 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %390 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = or i32 %391, %388
  store i32 %392, i32* %390, align 8
  br label %393

393:                                              ; preds = %387, %380
  br label %401

394:                                              ; preds = %368
  %395 = load i32, i32* @PS_NOCLDWAIT, align 4
  %396 = xor i32 %395, -1
  %397 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %398 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = and i32 %399, %396
  store i32 %400, i32* %398, align 8
  br label %401

401:                                              ; preds = %394, %393
  %402 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %403 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %402, i32 0, i32 3
  %404 = load i32**, i32*** %403, align 8
  %405 = load i32, i32* @SIGCHLD, align 4
  %406 = call i64 @_SIG_IDX(i32 %405)
  %407 = getelementptr inbounds i32*, i32** %404, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = load i32*, i32** @SIG_IGN, align 8
  %410 = icmp eq i32* %408, %409
  br i1 %410, label %411, label %417

411:                                              ; preds = %401
  %412 = load i32, i32* @PS_CLDSIGIGN, align 4
  %413 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %414 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %424

417:                                              ; preds = %401
  %418 = load i32, i32* @PS_CLDSIGIGN, align 4
  %419 = xor i32 %418, -1
  %420 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %421 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = and i32 %422, %419
  store i32 %423, i32* %421, align 8
  br label %424

424:                                              ; preds = %417, %411
  br label %425

425:                                              ; preds = %424, %344
  %426 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %427 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %426, i32 0, i32 3
  %428 = load i32**, i32*** %427, align 8
  %429 = load i32, i32* %8, align 4
  %430 = call i64 @_SIG_IDX(i32 %429)
  %431 = getelementptr inbounds i32*, i32** %428, i64 %430
  %432 = load i32*, i32** %431, align 8
  %433 = load i32*, i32** @SIG_IGN, align 8
  %434 = icmp eq i32* %432, %433
  br i1 %434, label %451, label %435

435:                                              ; preds = %425
  %436 = load i32, i32* %8, align 4
  %437 = call i32 @sigprop(i32 %436)
  %438 = load i32, i32* @SIGPROP_IGNORE, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %470

441:                                              ; preds = %435
  %442 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %443 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %442, i32 0, i32 3
  %444 = load i32**, i32*** %443, align 8
  %445 = load i32, i32* %8, align 4
  %446 = call i64 @_SIG_IDX(i32 %445)
  %447 = getelementptr inbounds i32*, i32** %444, i64 %446
  %448 = load i32*, i32** %447, align 8
  %449 = load i32*, i32** @SIG_DFL, align 8
  %450 = icmp eq i32* %448, %449
  br i1 %450, label %451, label %470

451:                                              ; preds = %441, %425
  %452 = load %struct.proc*, %struct.proc** %13, align 8
  %453 = load i32, i32* %8, align 4
  %454 = call i32 @sigqueue_delete_proc(%struct.proc* %452, i32 %453)
  %455 = load i32, i32* %8, align 4
  %456 = load i32, i32* @SIGCONT, align 4
  %457 = icmp ne i32 %455, %456
  br i1 %457, label %458, label %464

458:                                              ; preds = %451
  %459 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %460 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %459, i32 0, i32 6
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @SIGADDSET(i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %458, %451
  %465 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %466 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %8, align 4
  %469 = call i32 @SIGDELSET(i32 %467, i32 %468)
  br label %498

470:                                              ; preds = %441, %435
  %471 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %472 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* %8, align 4
  %475 = call i32 @SIGDELSET(i32 %473, i32 %474)
  %476 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %477 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %476, i32 0, i32 3
  %478 = load i32**, i32*** %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = call i64 @_SIG_IDX(i32 %479)
  %481 = getelementptr inbounds i32*, i32** %478, i64 %480
  %482 = load i32*, i32** %481, align 8
  %483 = load i32*, i32** @SIG_DFL, align 8
  %484 = icmp eq i32* %482, %483
  br i1 %484, label %485, label %491

485:                                              ; preds = %470
  %486 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %487 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %486, i32 0, i32 5
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %8, align 4
  %490 = call i32 @SIGDELSET(i32 %488, i32 %489)
  br label %497

491:                                              ; preds = %470
  %492 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %493 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %8, align 4
  %496 = call i32 @SIGADDSET(i32 %494, i32 %495)
  br label %497

497:                                              ; preds = %491, %485
  br label %498

498:                                              ; preds = %497, %464
  br label %499

499:                                              ; preds = %498, %200
  %500 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %501 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %500, i32 0, i32 1
  %502 = call i32 @mtx_unlock(i32* %501)
  %503 = load %struct.proc*, %struct.proc** %13, align 8
  %504 = call i32 @PROC_UNLOCK(%struct.proc* %503)
  store i32 0, i32* %6, align 4
  br label %505

505:                                              ; preds = %499, %217, %57, %20
  %506 = load i32, i32* %6, align 4
  ret i32 %506
}

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @_SIG_IDX(i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @SIG_CANTMASK(i32) #1

declare dso_local i64 @sigact_flag_test(%struct.sigaction*, i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local i32 @sigqueue_delete_proc(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
