; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i8*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@DEFAULTTHREADS = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@DEFAULTSECONDS = common dso_local global i32 0, align 4
@numseconds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"n:s:t\00", align 1
@optarg = common dso_local global i8* null, align 8
@threaded = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@MAXTHREADS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%d exceeds max threads %d\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.state* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@INHERIT_SHARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"minherit\00", align 1
@statep = common dso_local global %struct.state* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"pthread_barrier_init\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@curthread = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Doh\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@main_sighup = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%ju transfers/second\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%ju errors/second\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @DEFAULTTHREADS, align 4
  store i32 %13, i32* @numthreads, align 4
  %14 = load i32, i32* @DEFAULTSECONDS, align 4
  store i32 %14, i32* @numseconds, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %29 [
    i32 110, label %22
    i32 115, label %25
    i32 116, label %28
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* @numthreads, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* @numseconds, align 4
  br label %31

28:                                               ; preds = %20
  store i32 1, i32* @threaded, align 4
  br label %31

29:                                               ; preds = %20
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %28, %25, %22
  br label %15

32:                                               ; preds = %15
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i32, i32* @numthreads, align 4
  %47 = load i32, i32* @MAXTHREADS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @numthreads, align 4
  %51 = load i32, i32* @MAXTHREADS, align 4
  %52 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = call i32 (...) @getpagesize()
  %55 = call i64 @roundup(i32 48, i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* @PROT_READ, align 4
  %58 = load i32, i32* @PROT_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MAP_ANON, align 4
  %61 = call %struct.state* @mmap(i32* null, i64 %56, i32 %59, i32 %60, i32 -1, i32 0)
  store %struct.state* %61, %struct.state** %9, align 8
  %62 = load %struct.state*, %struct.state** %9, align 8
  %63 = load %struct.state*, %struct.state** @MAP_FAILED, align 8
  %64 = icmp eq %struct.state* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %53
  %68 = load %struct.state*, %struct.state** %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* @INHERIT_SHARE, align 4
  %71 = call i64 @minherit(%struct.state* %68, i64 %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67
  %76 = load %struct.state*, %struct.state** %9, align 8
  store %struct.state* %76, %struct.state** @statep, align 8
  %77 = load %struct.state*, %struct.state** @statep, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 4
  %79 = call i32 @bzero(%struct.TYPE_9__* %78, i32 16)
  %80 = load %struct.state*, %struct.state** @statep, align 8
  %81 = getelementptr inbounds %struct.state, %struct.state* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 16, i32* %82, align 4
  %83 = load i32, i32* @AF_INET, align 4
  %84 = load %struct.state*, %struct.state** @statep, align 8
  %85 = getelementptr inbounds %struct.state, %struct.state* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @inet_addr(i8* %89)
  %91 = load %struct.state*, %struct.state** @statep, align 8
  %92 = getelementptr inbounds %struct.state, %struct.state* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @atoi(i8* %97)
  %99 = call i32 @htons(i32 %98)
  %100 = load %struct.state*, %struct.state** @statep, align 8
  %101 = getelementptr inbounds %struct.state, %struct.state* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.state*, %struct.state** @statep, align 8
  %107 = getelementptr inbounds %struct.state, %struct.state* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.state*, %struct.state** @statep, align 8
  %109 = getelementptr inbounds %struct.state, %struct.state* %108, i32 0, i32 4
  %110 = load %struct.state*, %struct.state** @statep, align 8
  %111 = getelementptr inbounds %struct.state, %struct.state* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @http_fetch(%struct.TYPE_9__* %109, i8* %112, i32 0)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %75
  %116 = call i32 @exit(i32 -1) #3
  unreachable

117:                                              ; preds = %75
  %118 = load i32, i32* @threaded, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.state*, %struct.state** @statep, align 8
  %122 = getelementptr inbounds %struct.state, %struct.state* %121, i32 0, i32 3
  %123 = load i32, i32* @numthreads, align 4
  %124 = call i64 @pthread_barrier_init(i32* %122, i32* null, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %120
  br label %129

129:                                              ; preds = %128, %117
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %196, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @numthreads, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %199

134:                                              ; preds = %130
  %135 = load %struct.state*, %struct.state** @statep, align 8
  %136 = getelementptr inbounds %struct.state, %struct.state* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @threaded, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %134
  %145 = load %struct.state*, %struct.state** @statep, align 8
  %146 = getelementptr inbounds %struct.state, %struct.state* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load %struct.state*, %struct.state** @statep, align 8
  %153 = getelementptr inbounds %struct.state, %struct.state* %152, i32 0, i32 2
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = call i64 @pthread_create(i32* %151, i32* null, i32 (%struct.TYPE_8__*)* @http_worker, %struct.TYPE_8__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %144
  %161 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %144
  br label %195

163:                                              ; preds = %134
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* @curthread, align 4
  %165 = call i64 (...) @fork()
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @errno, align 4
  store i32 %169, i32* %7, align 4
  %170 = call i32 (...) @killall()
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* @errno, align 4
  %172 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i64, i64* %12, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load %struct.state*, %struct.state** @statep, align 8
  %178 = getelementptr inbounds %struct.state, %struct.state* %177, i32 0, i32 2
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = call i32 @http_worker(%struct.TYPE_8__* %182)
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %185 = call i32 @exit(i32 0) #3
  unreachable

186:                                              ; preds = %173
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.state*, %struct.state** @statep, align 8
  %189 = getelementptr inbounds %struct.state, %struct.state* %188, i32 0, i32 2
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i64 %187, i64* %194, align 8
  br label %195

195:                                              ; preds = %186, %162
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %130

199:                                              ; preds = %130
  %200 = load i32, i32* @threaded, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* @SIGHUP, align 4
  %204 = load i32, i32* @main_sighup, align 4
  %205 = call i32 @signal(i32 %203, i32 %204)
  %206 = call i32 @sleep(i32 2)
  %207 = call i32 (...) @signal_barrier_wakeup()
  br label %208

208:                                              ; preds = %202, %199
  %209 = load i32, i32* @numseconds, align 4
  %210 = call i32 @sleep(i32 %209)
  %211 = load %struct.state*, %struct.state** @statep, align 8
  %212 = getelementptr inbounds %struct.state, %struct.state* %211, i32 0, i32 1
  store i32 1, i32* %212, align 8
  %213 = load i32, i32* @threaded, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %208
  %216 = call i32 @sleep(i32 2)
  br label %217

217:                                              ; preds = %215, %208
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %269, %217
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @numthreads, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %272

222:                                              ; preds = %218
  %223 = load i32, i32* @threaded, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %222
  %226 = load %struct.state*, %struct.state** @statep, align 8
  %227 = getelementptr inbounds %struct.state, %struct.state* %226, i32 0, i32 2
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @pthread_join(i32 %233, i32* null)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %225
  %237 = call i32 @err(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %225
  br label %268

239:                                              ; preds = %222
  %240 = load %struct.state*, %struct.state** @statep, align 8
  %241 = getelementptr inbounds %struct.state, %struct.state* %240, i32 0, i32 2
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @waitpid(i64 %247, i32* null, i32 0)
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %12, align 8
  %250 = load %struct.state*, %struct.state** @statep, align 8
  %251 = getelementptr inbounds %struct.state, %struct.state* %250, i32 0, i32 2
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %249, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %239
  %260 = load %struct.state*, %struct.state** @statep, align 8
  %261 = getelementptr inbounds %struct.state, %struct.state* %260, i32 0, i32 2
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  store i64 0, i64* %266, align 8
  br label %267

267:                                              ; preds = %259, %239
  br label %268

268:                                              ; preds = %267, %238
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %218

272:                                              ; preds = %218
  %273 = load i32, i32* @threaded, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = call i32 (...) @killall()
  br label %277

277:                                              ; preds = %275, %272
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %278

278:                                              ; preds = %295, %277
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @numthreads, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %298

282:                                              ; preds = %278
  %283 = load %struct.state*, %struct.state** @statep, align 8
  %284 = getelementptr inbounds %struct.state, %struct.state* %283, i32 0, i32 2
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %292, %290
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %10, align 4
  br label %295

295:                                              ; preds = %282
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %278

298:                                              ; preds = %278
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* @numseconds, align 4
  %301 = sdiv i32 %299, %300
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %301)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %303

303:                                              ; preds = %320, %298
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @numthreads, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %303
  %308 = load %struct.state*, %struct.state** @statep, align 8
  %309 = getelementptr inbounds %struct.state, %struct.state* %308, i32 0, i32 2
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %10, align 4
  br label %320

320:                                              ; preds = %307
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %8, align 4
  br label %303

323:                                              ; preds = %303
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* @numseconds, align 4
  %326 = sdiv i32 %324, %325
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %326)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local %struct.state* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @minherit(%struct.state*, i64, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @http_fetch(%struct.TYPE_9__*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_8__*) #1

declare dso_local i32 @http_worker(%struct.TYPE_8__*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @killall(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @signal_barrier_wakeup(...) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
