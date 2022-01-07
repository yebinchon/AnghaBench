; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.itimer** }
%struct.itimer = type { i64, i32, %struct.TYPE_10__, %struct.sigevent, %struct.proc*, i64, i64, %struct.TYPE_6__, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sigevent = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_CLOCKS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@posix_clocks = common dso_local global %struct.TYPE_9__* null, align 8
@SIGEV_NONE = common dso_local global i64 0, align 8
@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@itimer_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KSI_INS = common dso_local global i32 0, align 4
@KSI_EXT = common dso_local global i32 0, align 4
@timer_create = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid preset_id\00", align 1
@TIMER_MAX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@SI_TIMER = common dso_local global i32 0, align 4
@timer_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ktimer_create(%struct.thread* %0, i64 %1, %struct.sigevent* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sigevent*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.itimer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.sigevent* %2, %struct.sigevent** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  store %struct.proc* %18, %struct.proc** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MAX_CLOCKS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %303

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @posix_clocks, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %303

36:                                               ; preds = %27
  %37 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %38 = icmp ne %struct.sigevent* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %41 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIGEV_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %47 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SIGEV_SIGNAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %53 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %303

59:                                               ; preds = %51, %45, %39
  %60 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %61 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIGEV_SIGNAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %67 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65, %59
  %72 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %73 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_SIG_VALID(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %6, align 4
  br label %303

79:                                               ; preds = %71, %65
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.proc*, %struct.proc** %12, align 8
  %82 = getelementptr inbounds %struct.proc, %struct.proc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp eq %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.proc*, %struct.proc** %12, align 8
  %87 = call i32 @itimers_alloc(%struct.proc* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* @itimer_zone, align 4
  %90 = load i32, i32* @M_WAITOK, align 4
  %91 = call %struct.itimer* @uma_zalloc(i32 %89, i32 %90)
  store %struct.itimer* %91, %struct.itimer** %13, align 8
  %92 = load %struct.itimer*, %struct.itimer** %13, align 8
  %93 = getelementptr inbounds %struct.itimer, %struct.itimer* %92, i32 0, i32 10
  store i64 0, i64* %93, align 8
  %94 = load %struct.itimer*, %struct.itimer** %13, align 8
  %95 = getelementptr inbounds %struct.itimer, %struct.itimer* %94, i32 0, i32 9
  store i64 0, i64* %95, align 8
  %96 = load %struct.itimer*, %struct.itimer** %13, align 8
  %97 = getelementptr inbounds %struct.itimer, %struct.itimer* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load %struct.itimer*, %struct.itimer** %13, align 8
  %99 = getelementptr inbounds %struct.itimer, %struct.itimer* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = call i32 @timespecclear(i32* %100)
  %102 = load %struct.itimer*, %struct.itimer** %13, align 8
  %103 = getelementptr inbounds %struct.itimer, %struct.itimer* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @timespecclear(i32* %104)
  %106 = load %struct.itimer*, %struct.itimer** %13, align 8
  %107 = getelementptr inbounds %struct.itimer, %struct.itimer* %106, i32 0, i32 6
  store i64 0, i64* %107, align 8
  %108 = load %struct.itimer*, %struct.itimer** %13, align 8
  %109 = getelementptr inbounds %struct.itimer, %struct.itimer* %108, i32 0, i32 5
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.itimer*, %struct.itimer** %13, align 8
  %112 = getelementptr inbounds %struct.itimer, %struct.itimer* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.itimer*, %struct.itimer** %13, align 8
  %114 = getelementptr inbounds %struct.itimer, %struct.itimer* %113, i32 0, i32 1
  store i32 -1, i32* %114, align 8
  %115 = load %struct.proc*, %struct.proc** %12, align 8
  %116 = load %struct.itimer*, %struct.itimer** %13, align 8
  %117 = getelementptr inbounds %struct.itimer, %struct.itimer* %116, i32 0, i32 4
  store %struct.proc* %115, %struct.proc** %117, align 8
  %118 = load %struct.itimer*, %struct.itimer** %13, align 8
  %119 = getelementptr inbounds %struct.itimer, %struct.itimer* %118, i32 0, i32 2
  %120 = call i32 @ksiginfo_init(%struct.TYPE_10__* %119)
  %121 = load i32, i32* @KSI_INS, align 4
  %122 = load i32, i32* @KSI_EXT, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.itimer*, %struct.itimer** %13, align 8
  %125 = getelementptr inbounds %struct.itimer, %struct.itimer* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load i32, i32* @timer_create, align 4
  %131 = load %struct.itimer*, %struct.itimer** %13, align 8
  %132 = call i32 @CLOCK_CALL(i64 %129, i32 %130, %struct.itimer* %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %88
  br label %288

136:                                              ; preds = %88
  %137 = load %struct.proc*, %struct.proc** %12, align 8
  %138 = call i32 @PROC_LOCK(%struct.proc* %137)
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %166

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 3
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @KASSERT(i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %14, align 4
  %152 = load %struct.proc*, %struct.proc** %12, align 8
  %153 = getelementptr inbounds %struct.proc, %struct.proc* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.itimer**, %struct.itimer*** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.itimer*, %struct.itimer** %156, i64 %158
  %160 = load %struct.itimer*, %struct.itimer** %159, align 8
  %161 = icmp ne %struct.itimer* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %147
  %163 = load %struct.proc*, %struct.proc** %12, align 8
  %164 = call i32 @PROC_UNLOCK(%struct.proc* %163)
  store i32 0, i32* %15, align 4
  br label %288

165:                                              ; preds = %147
  br label %196

166:                                              ; preds = %136
  store i32 3, i32* %14, align 4
  br label %167

167:                                              ; preds = %184, %166
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @TIMER_MAX, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %167
  %172 = load %struct.proc*, %struct.proc** %12, align 8
  %173 = getelementptr inbounds %struct.proc, %struct.proc* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.itimer**, %struct.itimer*** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.itimer*, %struct.itimer** %176, i64 %178
  %180 = load %struct.itimer*, %struct.itimer** %179, align 8
  %181 = icmp eq %struct.itimer* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %187

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %167

187:                                              ; preds = %182, %167
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @TIMER_MAX, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load %struct.proc*, %struct.proc** %12, align 8
  %193 = call i32 @PROC_UNLOCK(%struct.proc* %192)
  %194 = load i32, i32* @EAGAIN, align 4
  store i32 %194, i32* %15, align 4
  br label %288

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %165
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.itimer*, %struct.itimer** %13, align 8
  %199 = getelementptr inbounds %struct.itimer, %struct.itimer* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = load %struct.itimer*, %struct.itimer** %13, align 8
  %201 = load %struct.proc*, %struct.proc** %12, align 8
  %202 = getelementptr inbounds %struct.proc, %struct.proc* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load %struct.itimer**, %struct.itimer*** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.itimer*, %struct.itimer** %205, i64 %207
  store %struct.itimer* %200, %struct.itimer** %208, align 8
  %209 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %210 = icmp ne %struct.sigevent* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %196
  %212 = load %struct.itimer*, %struct.itimer** %13, align 8
  %213 = getelementptr inbounds %struct.itimer, %struct.itimer* %212, i32 0, i32 3
  %214 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %215 = bitcast %struct.sigevent* %213 to i8*
  %216 = bitcast %struct.sigevent* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 16, i1 false)
  br label %245

217:                                              ; preds = %196
  %218 = load i64, i64* @SIGEV_SIGNAL, align 8
  %219 = load %struct.itimer*, %struct.itimer** %13, align 8
  %220 = getelementptr inbounds %struct.itimer, %struct.itimer* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %220, i32 0, i32 0
  store i64 %218, i64* %221, align 8
  %222 = load i64, i64* %8, align 8
  switch i64 %222, label %223 [
    i64 129, label %224
    i64 128, label %229
    i64 130, label %234
  ]

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %217, %223
  %225 = load i32, i32* @SIGALRM, align 4
  %226 = load %struct.itimer*, %struct.itimer** %13, align 8
  %227 = getelementptr inbounds %struct.itimer, %struct.itimer* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %227, i32 0, i32 2
  store i32 %225, i32* %228, align 4
  br label %239

229:                                              ; preds = %217
  %230 = load i32, i32* @SIGVTALRM, align 4
  %231 = load %struct.itimer*, %struct.itimer** %13, align 8
  %232 = getelementptr inbounds %struct.itimer, %struct.itimer* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %232, i32 0, i32 2
  store i32 %230, i32* %233, align 4
  br label %239

234:                                              ; preds = %217
  %235 = load i32, i32* @SIGPROF, align 4
  %236 = load %struct.itimer*, %struct.itimer** %13, align 8
  %237 = getelementptr inbounds %struct.itimer, %struct.itimer* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 4
  br label %239

239:                                              ; preds = %234, %229, %224
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.itimer*, %struct.itimer** %13, align 8
  %242 = getelementptr inbounds %struct.itimer, %struct.itimer* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i32 %240, i32* %244, align 8
  br label %245

245:                                              ; preds = %239, %211
  %246 = load %struct.itimer*, %struct.itimer** %13, align 8
  %247 = getelementptr inbounds %struct.itimer, %struct.itimer* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SIGEV_SIGNAL, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %245
  %253 = load %struct.itimer*, %struct.itimer** %13, align 8
  %254 = getelementptr inbounds %struct.itimer, %struct.itimer* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %283

259:                                              ; preds = %252, %245
  %260 = load %struct.itimer*, %struct.itimer** %13, align 8
  %261 = getelementptr inbounds %struct.itimer, %struct.itimer* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.itimer*, %struct.itimer** %13, align 8
  %265 = getelementptr inbounds %struct.itimer, %struct.itimer* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 4
  store i32 %263, i32* %266, align 4
  %267 = load i32, i32* @SI_TIMER, align 4
  %268 = load %struct.itimer*, %struct.itimer** %13, align 8
  %269 = getelementptr inbounds %struct.itimer, %struct.itimer* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  store i32 %267, i32* %270, align 4
  %271 = load %struct.itimer*, %struct.itimer** %13, align 8
  %272 = getelementptr inbounds %struct.itimer, %struct.itimer* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load %struct.itimer*, %struct.itimer** %13, align 8
  %275 = getelementptr inbounds %struct.itimer, %struct.itimer* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %275, i32 0, i32 1
  %277 = bitcast %struct.TYPE_8__* %273 to i8*
  %278 = bitcast %struct.TYPE_8__* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 8 %278, i64 4, i1 false)
  %279 = load i32, i32* %14, align 4
  %280 = load %struct.itimer*, %struct.itimer** %13, align 8
  %281 = getelementptr inbounds %struct.itimer, %struct.itimer* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  br label %283

283:                                              ; preds = %259, %252
  %284 = load %struct.proc*, %struct.proc** %12, align 8
  %285 = call i32 @PROC_UNLOCK(%struct.proc* %284)
  %286 = load i32, i32* %14, align 4
  %287 = load i32*, i32** %10, align 8
  store i32 %286, i32* %287, align 4
  store i32 0, i32* %6, align 4
  br label %303

288:                                              ; preds = %191, %162, %135
  %289 = load %struct.itimer*, %struct.itimer** %13, align 8
  %290 = call i32 @ITIMER_LOCK(%struct.itimer* %289)
  %291 = load %struct.itimer*, %struct.itimer** %13, align 8
  %292 = getelementptr inbounds %struct.itimer, %struct.itimer* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* @timer_delete, align 4
  %295 = load %struct.itimer*, %struct.itimer** %13, align 8
  %296 = call i32 @CLOCK_CALL(i64 %293, i32 %294, %struct.itimer* %295)
  %297 = load %struct.itimer*, %struct.itimer** %13, align 8
  %298 = call i32 @ITIMER_UNLOCK(%struct.itimer* %297)
  %299 = load i32, i32* @itimer_zone, align 4
  %300 = load %struct.itimer*, %struct.itimer** %13, align 8
  %301 = call i32 @uma_zfree(i32 %299, %struct.itimer* %300)
  %302 = load i32, i32* %15, align 4
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %288, %283, %77, %57, %34, %25
  %304 = load i32, i32* %6, align 4
  ret i32 %304
}

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @itimers_alloc(%struct.proc*) #1

declare dso_local %struct.itimer* @uma_zalloc(i32, i32) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_10__*) #1

declare dso_local i32 @CLOCK_CALL(i64, i32, %struct.itimer*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ITIMER_LOCK(%struct.itimer*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

declare dso_local i32 @uma_zfree(i32, %struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
