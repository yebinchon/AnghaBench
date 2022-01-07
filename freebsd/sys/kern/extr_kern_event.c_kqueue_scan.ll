; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i64, i32, i32, i32 }
%struct.kevent_copyops = type { i32 (i32, %struct.kevent*, i32)*, i32 }
%struct.timespec = type { i64, i32 }
%struct.kevent = type { i32 }
%struct.thread = type { i32* }
%struct.knote = type { i32, i32, i64, i64, %struct.kevent, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.knote*, i32)*, i32 (%struct.knote*, %struct.kevent*, i32)*, i32 }
%struct.knlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@tc_tick_sbt = common dso_local global i64 0, align 8
@SBT_MAX = common dso_local global i32 0, align 4
@tc_precexp = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KN_MARKER = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@KQ_SLEEP = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kqread\00", align 1
@C_ABSOLUTE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@kn_tqe = common dso_local global i32 0, align 4
@KQ_FLUXWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"kqflxwt\00", align 1
@KN_DISABLED = common dso_local global i32 0, align 4
@KN_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"knote %p is unexpectedly in flux\00", align 1
@EV_DROP = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@KN_SCAN = common dso_local global i32 0, align 4
@KN_KQUEUE = common dso_local global i32 0, align 4
@kq_global = common dso_local global i32 0, align 4
@KN_ACTIVE = common dso_local global i32 0, align 4
@EVENT_PROCESS = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@KQ_NEVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, i32, %struct.kevent_copyops*, %struct.timespec*, %struct.kevent*, %struct.thread*)* @kqueue_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_scan(%struct.kqueue* %0, i32 %1, %struct.kevent_copyops* %2, %struct.timespec* %3, %struct.kevent* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kevent_copyops*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.kevent*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.kevent*, align 8
  %14 = alloca %struct.knote*, align 8
  %15 = alloca %struct.knote*, align 8
  %16 = alloca %struct.knlist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kevent_copyops* %2, %struct.kevent_copyops** %9, align 8
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.kevent* %4, %struct.kevent** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %502

29:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %30 = load %struct.timespec*, %struct.timespec** %10, align 8
  %31 = icmp ne %struct.timespec* %30, null
  br i1 %31, label %32, label %95

32:                                               ; preds = %29
  %33 = load %struct.timespec*, %struct.timespec** %10, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.timespec*, %struct.timespec** %10, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.timespec*, %struct.timespec** %10, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 1000000000
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %20, align 4
  br label %502

49:                                               ; preds = %42
  %50 = load %struct.timespec*, %struct.timespec** %10, align 8
  %51 = call i64 @timespecisset(%struct.timespec* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load %struct.timespec*, %struct.timespec** %10, align 8
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INT32_MAX, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = load %struct.timespec*, %struct.timespec** %10, align 8
  %61 = bitcast %struct.timespec* %60 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tstosbt(i64 %63, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i64 @TIMESEL(i32* %17, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i64, i64* @tc_tick_sbt, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %70, %59
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @SBT_MAX, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp sle i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %17, align 4
  br label %87

86:                                               ; preds = %76
  store i32 0, i32* %17, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, i32* @tc_precexp, align 4
  %89 = load i32, i32* %18, align 4
  %90 = ashr i32 %89, %88
  store i32 %90, i32* %18, align 4
  br label %92

91:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %94

93:                                               ; preds = %49
  store i32 -1, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %96

95:                                               ; preds = %29
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = call %struct.knote* @knote_alloc(i32 %97)
  store %struct.knote* %98, %struct.knote** %15, align 8
  %99 = load i32, i32* @KN_MARKER, align 4
  %100 = load %struct.knote*, %struct.knote** %15, align 8
  %101 = getelementptr inbounds %struct.knote, %struct.knote* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %103 = call i32 @KQ_LOCK(%struct.kqueue* %102)
  br label %104

104:                                              ; preds = %227, %134, %96
  %105 = load %struct.kevent*, %struct.kevent** %11, align 8
  store %struct.kevent* %105, %struct.kevent** %13, align 8
  %106 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %107 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %148

110:                                              ; preds = %104
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %114, i32* %20, align 4
  br label %131

115:                                              ; preds = %110
  %116 = load i32, i32* @KQ_SLEEP, align 4
  %117 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %118 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %122 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %123 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %122, i32 0, i32 2
  %124 = load i32, i32* @PSOCK, align 4
  %125 = load i32, i32* @PCATCH, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @C_ABSOLUTE, align 4
  %130 = call i32 @msleep_sbt(%struct.kqueue* %121, i32* %123, i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %20, align 4
  br label %131

131:                                              ; preds = %115, %113
  %132 = load i32, i32* %20, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %104

135:                                              ; preds = %131
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @ERESTART, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @EINTR, align 4
  store i32 %140, i32* %20, align 4
  br label %147

141:                                              ; preds = %135
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @EWOULDBLOCK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %20, align 4
  br label %146

146:                                              ; preds = %145, %141
  br label %147

147:                                              ; preds = %146, %139
  br label %495

148:                                              ; preds = %104
  %149 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %150 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %149, i32 0, i32 1
  %151 = load %struct.knote*, %struct.knote** %15, align 8
  %152 = load i32, i32* @kn_tqe, align 4
  %153 = call i32 @TAILQ_INSERT_TAIL(i32* %150, %struct.knote* %151, i32 %152)
  store i32 0, i32* %22, align 4
  br label %154

154:                                              ; preds = %488, %329, %245, %206, %182, %148
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %489

157:                                              ; preds = %154
  %158 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %159 = call i32 @KQ_OWNED(%struct.kqueue* %158)
  %160 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %161 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %160, i32 0, i32 1
  %162 = call %struct.knote* @TAILQ_FIRST(i32* %161)
  store %struct.knote* %162, %struct.knote** %14, align 8
  %163 = load %struct.knote*, %struct.knote** %14, align 8
  %164 = getelementptr inbounds %struct.knote, %struct.knote* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @KN_MARKER, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load %struct.knote*, %struct.knote** %14, align 8
  %170 = load %struct.knote*, %struct.knote** %15, align 8
  %171 = icmp ne %struct.knote* %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168, %157
  %173 = load %struct.knote*, %struct.knote** %14, align 8
  %174 = call i64 @kn_in_flux(%struct.knote* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  store i32 0, i32* %22, align 4
  %180 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %181 = call i32 @KQ_FLUX_WAKEUP(%struct.kqueue* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* @KQ_FLUXWAIT, align 4
  %184 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %185 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %189 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %190 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %189, i32 0, i32 2
  %191 = load i32, i32* @PSOCK, align 4
  %192 = call i32 @msleep(%struct.kqueue* %188, i32* %190, i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %192, i32* %20, align 4
  br label %154

193:                                              ; preds = %172
  %194 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %195 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %194, i32 0, i32 1
  %196 = load %struct.knote*, %struct.knote** %14, align 8
  %197 = load i32, i32* @kn_tqe, align 4
  %198 = call i32 @TAILQ_REMOVE(i32* %195, %struct.knote* %196, i32 %197)
  %199 = load %struct.knote*, %struct.knote** %14, align 8
  %200 = getelementptr inbounds %struct.knote, %struct.knote* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @KN_DISABLED, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @KN_DISABLED, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %193
  %207 = load i32, i32* @KN_QUEUED, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.knote*, %struct.knote** %14, align 8
  %210 = getelementptr inbounds %struct.knote, %struct.knote* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %214 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, -1
  store i64 %216, i64* %214, align 8
  br label %154

217:                                              ; preds = %193
  %218 = load %struct.knote*, %struct.knote** %14, align 8
  %219 = load %struct.knote*, %struct.knote** %15, align 8
  %220 = icmp eq %struct.knote* %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %223 = call i32 @KQ_FLUX_WAKEUP(%struct.kqueue* %222)
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %104

228:                                              ; preds = %221
  br label %495

229:                                              ; preds = %217
  %230 = load %struct.knote*, %struct.knote** %14, align 8
  %231 = call i64 @kn_in_flux(%struct.knote* %230)
  %232 = icmp ne i64 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = load %struct.knote*, %struct.knote** %14, align 8
  %236 = bitcast %struct.knote* %235 to i8*
  %237 = call i32 @KASSERT(i32 %234, i8* %236)
  %238 = load %struct.knote*, %struct.knote** %14, align 8
  %239 = getelementptr inbounds %struct.knote, %struct.knote* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @EV_DROP, align 4
  %242 = and i32 %240, %241
  %243 = load i32, i32* @EV_DROP, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %265

245:                                              ; preds = %229
  %246 = load i32, i32* @KN_QUEUED, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.knote*, %struct.knote** %14, align 8
  %249 = getelementptr inbounds %struct.knote, %struct.knote* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.knote*, %struct.knote** %14, align 8
  %253 = call i32 @kn_enter_flux(%struct.knote* %252)
  %254 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %255 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, -1
  store i64 %257, i64* %255, align 8
  %258 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %259 = call i32 @KQ_UNLOCK(%struct.kqueue* %258)
  %260 = load %struct.knote*, %struct.knote** %14, align 8
  %261 = load %struct.thread*, %struct.thread** %12, align 8
  %262 = call i32 @knote_drop(%struct.knote* %260, %struct.thread* %261)
  %263 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %264 = call i32 @KQ_LOCK(%struct.kqueue* %263)
  br label %154

265:                                              ; preds = %229
  %266 = load %struct.knote*, %struct.knote** %14, align 8
  %267 = getelementptr inbounds %struct.knote, %struct.knote* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @EV_ONESHOT, align 4
  %270 = and i32 %268, %269
  %271 = load i32, i32* @EV_ONESHOT, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %298

273:                                              ; preds = %265
  %274 = load i32, i32* @KN_QUEUED, align 4
  %275 = xor i32 %274, -1
  %276 = load %struct.knote*, %struct.knote** %14, align 8
  %277 = getelementptr inbounds %struct.knote, %struct.knote* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.knote*, %struct.knote** %14, align 8
  %281 = call i32 @kn_enter_flux(%struct.knote* %280)
  %282 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %283 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, -1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %287 = call i32 @KQ_UNLOCK(%struct.kqueue* %286)
  %288 = load %struct.kevent*, %struct.kevent** %13, align 8
  %289 = load %struct.knote*, %struct.knote** %14, align 8
  %290 = getelementptr inbounds %struct.knote, %struct.knote* %289, i32 0, i32 4
  %291 = bitcast %struct.kevent* %288 to i8*
  %292 = bitcast %struct.kevent* %290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %291, i8* align 8 %292, i64 4, i1 false)
  %293 = load %struct.knote*, %struct.knote** %14, align 8
  %294 = load %struct.thread*, %struct.thread** %12, align 8
  %295 = call i32 @knote_drop(%struct.knote* %293, %struct.thread* %294)
  %296 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %297 = call i32 @KQ_LOCK(%struct.kqueue* %296)
  store %struct.knote* null, %struct.knote** %14, align 8
  br label %458

298:                                              ; preds = %265
  %299 = load i32, i32* @KN_SCAN, align 4
  %300 = load %struct.knote*, %struct.knote** %14, align 8
  %301 = getelementptr inbounds %struct.knote, %struct.knote* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.knote*, %struct.knote** %14, align 8
  %305 = call i32 @kn_enter_flux(%struct.knote* %304)
  %306 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %307 = call i32 @KQ_UNLOCK(%struct.kqueue* %306)
  %308 = load %struct.knote*, %struct.knote** %14, align 8
  %309 = getelementptr inbounds %struct.knote, %struct.knote* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @KN_KQUEUE, align 4
  %312 = and i32 %310, %311
  %313 = load i32, i32* @KN_KQUEUE, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %298
  %316 = load i32, i32* %21, align 4
  %317 = call i32 @KQ_GLOBAL_LOCK(i32* @kq_global, i32 %316)
  br label %318

318:                                              ; preds = %315, %298
  %319 = load %struct.knote*, %struct.knote** %14, align 8
  %320 = call %struct.knlist* @kn_list_lock(%struct.knote* %319)
  store %struct.knlist* %320, %struct.knlist** %16, align 8
  %321 = load %struct.knote*, %struct.knote** %14, align 8
  %322 = getelementptr inbounds %struct.knote, %struct.knote* %321, i32 0, i32 5
  %323 = load %struct.TYPE_2__*, %struct.TYPE_2__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 0
  %325 = load i64 (%struct.knote*, i32)*, i64 (%struct.knote*, i32)** %324, align 8
  %326 = load %struct.knote*, %struct.knote** %14, align 8
  %327 = call i64 %325(%struct.knote* %326, i32 0)
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %352

329:                                              ; preds = %318
  %330 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %331 = call i32 @KQ_LOCK(%struct.kqueue* %330)
  %332 = load i32, i32* %21, align 4
  %333 = call i32 @KQ_GLOBAL_UNLOCK(i32* @kq_global, i32 %332)
  %334 = load i32, i32* @KN_QUEUED, align 4
  %335 = load i32, i32* @KN_ACTIVE, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @KN_SCAN, align 4
  %338 = or i32 %336, %337
  %339 = xor i32 %338, -1
  %340 = load %struct.knote*, %struct.knote** %14, align 8
  %341 = getelementptr inbounds %struct.knote, %struct.knote* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = and i32 %342, %339
  store i32 %343, i32* %341, align 8
  %344 = load %struct.knote*, %struct.knote** %14, align 8
  %345 = call i32 @kn_leave_flux(%struct.knote* %344)
  %346 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %347 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %348, -1
  store i64 %349, i64* %347, align 8
  %350 = load %struct.knlist*, %struct.knlist** %16, align 8
  %351 = call i32 @kn_list_unlock(%struct.knlist* %350)
  store i32 1, i32* %22, align 4
  br label %154

352:                                              ; preds = %318
  %353 = load %struct.knote*, %struct.knote** %14, align 8
  %354 = getelementptr inbounds %struct.knote, %struct.knote* %353, i32 0, i32 5
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %352
  %360 = load %struct.knote*, %struct.knote** %14, align 8
  %361 = getelementptr inbounds %struct.knote, %struct.knote* %360, i32 0, i32 5
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 1
  %364 = load i32 (%struct.knote*, %struct.kevent*, i32)*, i32 (%struct.knote*, %struct.kevent*, i32)** %363, align 8
  %365 = icmp ne i32 (%struct.knote*, %struct.kevent*, i32)* %364, null
  br label %366

366:                                              ; preds = %359, %352
  %367 = phi i1 [ false, %352 ], [ %365, %359 ]
  %368 = zext i1 %367 to i32
  store i32 %368, i32* %24, align 4
  %369 = load i32, i32* %24, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %381

371:                                              ; preds = %366
  %372 = load %struct.knote*, %struct.knote** %14, align 8
  %373 = getelementptr inbounds %struct.knote, %struct.knote* %372, i32 0, i32 5
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 1
  %376 = load i32 (%struct.knote*, %struct.kevent*, i32)*, i32 (%struct.knote*, %struct.kevent*, i32)** %375, align 8
  %377 = load %struct.knote*, %struct.knote** %14, align 8
  %378 = load %struct.kevent*, %struct.kevent** %13, align 8
  %379 = load i32, i32* @EVENT_PROCESS, align 4
  %380 = call i32 %376(%struct.knote* %377, %struct.kevent* %378, i32 %379)
  br label %387

381:                                              ; preds = %366
  %382 = load %struct.kevent*, %struct.kevent** %13, align 8
  %383 = load %struct.knote*, %struct.knote** %14, align 8
  %384 = getelementptr inbounds %struct.knote, %struct.knote* %383, i32 0, i32 4
  %385 = bitcast %struct.kevent* %382 to i8*
  %386 = bitcast %struct.kevent* %384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %385, i8* align 8 %386, i64 4, i1 false)
  br label %387

387:                                              ; preds = %381, %371
  %388 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %389 = call i32 @KQ_LOCK(%struct.kqueue* %388)
  %390 = load i32, i32* %21, align 4
  %391 = call i32 @KQ_GLOBAL_UNLOCK(i32* @kq_global, i32 %390)
  %392 = load %struct.knote*, %struct.knote** %14, align 8
  %393 = getelementptr inbounds %struct.knote, %struct.knote* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @EV_CLEAR, align 4
  %396 = load i32, i32* @EV_DISPATCH, align 4
  %397 = or i32 %395, %396
  %398 = and i32 %394, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %441

400:                                              ; preds = %387
  %401 = load i32, i32* %24, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %415

403:                                              ; preds = %400
  %404 = load %struct.knote*, %struct.knote** %14, align 8
  %405 = getelementptr inbounds %struct.knote, %struct.knote* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @EV_CLEAR, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %403
  %411 = load %struct.knote*, %struct.knote** %14, align 8
  %412 = getelementptr inbounds %struct.knote, %struct.knote* %411, i32 0, i32 3
  store i64 0, i64* %412, align 8
  %413 = load %struct.knote*, %struct.knote** %14, align 8
  %414 = getelementptr inbounds %struct.knote, %struct.knote* %413, i32 0, i32 2
  store i64 0, i64* %414, align 8
  br label %415

415:                                              ; preds = %410, %403, %400
  %416 = load %struct.knote*, %struct.knote** %14, align 8
  %417 = getelementptr inbounds %struct.knote, %struct.knote* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @EV_DISPATCH, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %415
  %423 = load i32, i32* @KN_DISABLED, align 4
  %424 = load %struct.knote*, %struct.knote** %14, align 8
  %425 = getelementptr inbounds %struct.knote, %struct.knote* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 8
  br label %428

428:                                              ; preds = %422, %415
  %429 = load i32, i32* @KN_QUEUED, align 4
  %430 = load i32, i32* @KN_ACTIVE, align 4
  %431 = or i32 %429, %430
  %432 = xor i32 %431, -1
  %433 = load %struct.knote*, %struct.knote** %14, align 8
  %434 = getelementptr inbounds %struct.knote, %struct.knote* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = and i32 %435, %432
  store i32 %436, i32* %434, align 8
  %437 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %438 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = add nsw i64 %439, -1
  store i64 %440, i64* %438, align 8
  br label %447

441:                                              ; preds = %387
  %442 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %443 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %442, i32 0, i32 1
  %444 = load %struct.knote*, %struct.knote** %14, align 8
  %445 = load i32, i32* @kn_tqe, align 4
  %446 = call i32 @TAILQ_INSERT_TAIL(i32* %443, %struct.knote* %444, i32 %445)
  br label %447

447:                                              ; preds = %441, %428
  %448 = load i32, i32* @KN_SCAN, align 4
  %449 = xor i32 %448, -1
  %450 = load %struct.knote*, %struct.knote** %14, align 8
  %451 = getelementptr inbounds %struct.knote, %struct.knote* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = and i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load %struct.knote*, %struct.knote** %14, align 8
  %455 = call i32 @kn_leave_flux(%struct.knote* %454)
  %456 = load %struct.knlist*, %struct.knlist** %16, align 8
  %457 = call i32 @kn_list_unlock(%struct.knlist* %456)
  store i32 1, i32* %22, align 4
  br label %458

458:                                              ; preds = %447, %273
  br label %459

459:                                              ; preds = %458
  %460 = load %struct.kevent*, %struct.kevent** %13, align 8
  %461 = getelementptr inbounds %struct.kevent, %struct.kevent* %460, i32 1
  store %struct.kevent* %461, %struct.kevent** %13, align 8
  %462 = load i32, i32* %23, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %23, align 4
  %464 = load i32, i32* %19, align 4
  %465 = add nsw i32 %464, -1
  store i32 %465, i32* %19, align 4
  %466 = load i32, i32* %23, align 4
  %467 = load i32, i32* @KQ_NEVENTS, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %488

469:                                              ; preds = %459
  store i32 0, i32* %22, align 4
  %470 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %471 = call i32 @KQ_UNLOCK_FLUX(%struct.kqueue* %470)
  %472 = load %struct.kevent_copyops*, %struct.kevent_copyops** %9, align 8
  %473 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %472, i32 0, i32 0
  %474 = load i32 (i32, %struct.kevent*, i32)*, i32 (i32, %struct.kevent*, i32)** %473, align 8
  %475 = load %struct.kevent_copyops*, %struct.kevent_copyops** %9, align 8
  %476 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.kevent*, %struct.kevent** %11, align 8
  %479 = load i32, i32* %23, align 4
  %480 = call i32 %474(i32 %477, %struct.kevent* %478, i32 %479)
  store i32 %480, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %481 = load %struct.kevent*, %struct.kevent** %11, align 8
  store %struct.kevent* %481, %struct.kevent** %13, align 8
  %482 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %483 = call i32 @KQ_LOCK(%struct.kqueue* %482)
  %484 = load i32, i32* %20, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %469
  br label %489

487:                                              ; preds = %469
  br label %488

488:                                              ; preds = %487, %459
  br label %154

489:                                              ; preds = %486, %154
  %490 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %491 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %490, i32 0, i32 1
  %492 = load %struct.knote*, %struct.knote** %15, align 8
  %493 = load i32, i32* @kn_tqe, align 4
  %494 = call i32 @TAILQ_REMOVE(i32* %491, %struct.knote* %492, i32 %493)
  br label %495

495:                                              ; preds = %489, %228, %147
  %496 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %497 = call i32 @KQ_OWNED(%struct.kqueue* %496)
  %498 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %499 = call i32 @KQ_UNLOCK_FLUX(%struct.kqueue* %498)
  %500 = load %struct.knote*, %struct.knote** %15, align 8
  %501 = call i32 @knote_free(%struct.knote* %500)
  br label %502

502:                                              ; preds = %495, %47, %28
  %503 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %504 = call i32 @KQ_NOTOWNED(%struct.kqueue* %503)
  %505 = load i32, i32* %23, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %517

507:                                              ; preds = %502
  %508 = load %struct.kevent_copyops*, %struct.kevent_copyops** %9, align 8
  %509 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %508, i32 0, i32 0
  %510 = load i32 (i32, %struct.kevent*, i32)*, i32 (i32, %struct.kevent*, i32)** %509, align 8
  %511 = load %struct.kevent_copyops*, %struct.kevent_copyops** %9, align 8
  %512 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.kevent*, %struct.kevent** %11, align 8
  %515 = load i32, i32* %23, align 4
  %516 = call i32 %510(i32 %513, %struct.kevent* %514, i32 %515)
  store i32 %516, i32* %20, align 4
  br label %517

517:                                              ; preds = %507, %502
  %518 = load i32, i32* %8, align 4
  %519 = load i32, i32* %19, align 4
  %520 = sub nsw i32 %518, %519
  %521 = load %struct.thread*, %struct.thread** %12, align 8
  %522 = getelementptr inbounds %struct.thread, %struct.thread* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 0
  store i32 %520, i32* %524, align 4
  %525 = load i32, i32* %20, align 4
  ret i32 %525
}

declare dso_local i64 @timespecisset(%struct.timespec*) #1

declare dso_local i32 @tstosbt(i64, i32) #1

declare dso_local i64 @TIMESEL(i32*, i32) #1

declare dso_local %struct.knote* @knote_alloc(i32) #1

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i32 @msleep_sbt(%struct.kqueue*, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.knote*, i32) #1

declare dso_local i32 @KQ_OWNED(%struct.kqueue*) #1

declare dso_local %struct.knote* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @kn_in_flux(%struct.knote*) #1

declare dso_local i32 @KQ_FLUX_WAKEUP(%struct.kqueue*) #1

declare dso_local i32 @msleep(%struct.kqueue*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.knote*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @kn_enter_flux(%struct.knote*) #1

declare dso_local i32 @KQ_UNLOCK(%struct.kqueue*) #1

declare dso_local i32 @knote_drop(%struct.knote*, %struct.thread*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KQ_GLOBAL_LOCK(i32*, i32) #1

declare dso_local %struct.knlist* @kn_list_lock(%struct.knote*) #1

declare dso_local i32 @KQ_GLOBAL_UNLOCK(i32*, i32) #1

declare dso_local i32 @kn_leave_flux(%struct.knote*) #1

declare dso_local i32 @kn_list_unlock(%struct.knlist*) #1

declare dso_local i32 @KQ_UNLOCK_FLUX(%struct.kqueue*) #1

declare dso_local i32 @knote_free(%struct.knote*) #1

declare dso_local i32 @KQ_NOTOWNED(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
