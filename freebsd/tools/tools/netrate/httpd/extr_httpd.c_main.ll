; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/httpd/extr_httpd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/httpd/extr_httpd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i64, i8*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@FILESIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"t\00", align 1
@threaded = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@INHERIT_SHARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"minherit\00", align 1
@statep = common dso_local global %struct.state* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"utsname\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"socket(PF_INET, SOCK_STREAM)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@THREADS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"/tmp/httpd.XXXXXXXXXXX\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"write: short\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @FILESIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  br label %23

23:                                               ; preds = %33, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %31 [
    i32 116, label %30
  ]

30:                                               ; preds = %28
  store i32 1, i32* @threaded, align 4
  br label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %30
  br label %23

34:                                               ; preds = %23
  %35 = load i64, i64* @optind, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @optind, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8** %42, i8*** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @usage()
  br label %50

50:                                               ; preds = %48, %45, %34
  %51 = call i32 (...) @getpagesize()
  %52 = call i32 @roundup(i32 40, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @PROT_READ, align 4
  %55 = load i32, i32* @PROT_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MAP_ANON, align 4
  %58 = call i8* @mmap(i32* null, i32 %53, i32 %56, i32 %57, i32 -1, i32 0)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** @MAP_FAILED, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @INHERIT_SHARE, align 4
  %68 = call i64 @minherit(i8* %65, i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = load i8*, i8** %13, align 8
  %74 = bitcast i8* %73 to %struct.state*
  store %struct.state* %74, %struct.state** @statep, align 8
  %75 = load %struct.state*, %struct.state** @statep, align 8
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 4
  %77 = call i64 @uname(i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i32, i32* @PF_INET, align 4
  %83 = load i32, i32* @SOCK_STREAM, align 4
  %84 = call i64 @socket(i32 %82, i32 %83, i32 0)
  %85 = load %struct.state*, %struct.state** @statep, align 8
  %86 = getelementptr inbounds %struct.state, %struct.state* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.state*, %struct.state** @statep, align 8
  %88 = getelementptr inbounds %struct.state, %struct.state* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %81
  %94 = call i32 @bzero(%struct.sockaddr_in* %9, i32 12)
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 12, i32* %95, align 4
  %96 = load i32, i32* @AF_INET, align 4
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @atoi(i8* %100)
  %102 = call i32 @htons(i32 %101)
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.state*, %struct.state** @statep, align 8
  %108 = getelementptr inbounds %struct.state, %struct.state* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.state*, %struct.state** @statep, align 8
  %110 = getelementptr inbounds %struct.state, %struct.state* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %150

113:                                              ; preds = %93
  %114 = load %struct.state*, %struct.state** @statep, align 8
  %115 = getelementptr inbounds %struct.state, %struct.state* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = call i64 @open(i8* %116, i32 %117)
  %119 = load %struct.state*, %struct.state** @statep, align 8
  %120 = getelementptr inbounds %struct.state, %struct.state* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.state*, %struct.state** @statep, align 8
  %122 = getelementptr inbounds %struct.state, %struct.state* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %113
  %126 = load %struct.state*, %struct.state** @statep, align 8
  %127 = getelementptr inbounds %struct.state, %struct.state* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %125, %113
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %146, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @THREADS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load %struct.state*, %struct.state** @statep, align 8
  %137 = getelementptr inbounds %struct.state, %struct.state* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.state*, %struct.state** @statep, align 8
  %140 = getelementptr inbounds %struct.state, %struct.state* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i64 %138, i64* %145, align 8
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %131

149:                                              ; preds = %131
  br label %211

150:                                              ; preds = %93
  %151 = load i32, i32* @FILESIZE, align 4
  %152 = sub nsw i32 %151, 1
  %153 = call i32 @memset(i8* %19, i8 signext 65, i32 %152)
  %154 = load i32, i32* @FILESIZE, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %19, i64 %156
  store i8 10, i8* %157, align 1
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %207, %150
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @THREADS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %210

162:                                              ; preds = %158
  %163 = load i32, i32* @PATH_MAX, align 4
  %164 = call i32 @snprintf(i8* %22, i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %165 = call i64 @mkstemp(i8* %22)
  %166 = load %struct.state*, %struct.state** @statep, align 8
  %167 = getelementptr inbounds %struct.state, %struct.state* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i64 %165, i64* %172, align 8
  %173 = load %struct.state*, %struct.state** @statep, align 8
  %174 = getelementptr inbounds %struct.state, %struct.state* %173, i32 0, i32 3
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %162
  %183 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %162
  %185 = call i32 @unlink(i8* %22)
  %186 = load %struct.state*, %struct.state** @statep, align 8
  %187 = getelementptr inbounds %struct.state, %struct.state* %186, i32 0, i32 3
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @FILESIZE, align 4
  %195 = call i32 @write(i64 %193, i8* %19, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %184
  %199 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %184
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @FILESIZE, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %200
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %158

210:                                              ; preds = %158
  br label %211

211:                                              ; preds = %210, %149
  %212 = load %struct.state*, %struct.state** @statep, align 8
  %213 = getelementptr inbounds %struct.state, %struct.state* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %216 = call i64 @bind(i64 %214, %struct.sockaddr* %215, i32 12)
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %211
  %221 = load %struct.state*, %struct.state** @statep, align 8
  %222 = getelementptr inbounds %struct.state, %struct.state* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @listen(i64 %223, i32 -1)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %220
  store i32 0, i32* %12, align 4
  br label %229

229:                                              ; preds = %285, %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @THREADS, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %288

233:                                              ; preds = %229
  %234 = load i32, i32* @threaded, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %233
  %237 = load %struct.state*, %struct.state** @statep, align 8
  %238 = getelementptr inbounds %struct.state, %struct.state* %237, i32 0, i32 3
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load %struct.state*, %struct.state** @statep, align 8
  %245 = getelementptr inbounds %struct.state, %struct.state* %244, i32 0, i32 3
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %248
  %250 = call i64 @pthread_create(i32* %243, i32* null, i32 (%struct.TYPE_4__*)* @httpd_worker, %struct.TYPE_4__* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %236
  %253 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %236
  br label %284

255:                                              ; preds = %233
  %256 = call i64 (...) @fork()
  store i64 %256, i64* %15, align 8
  %257 = load i64, i64* %15, align 8
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = load i32, i32* @errno, align 4
  store i32 %260, i32* %11, align 4
  %261 = call i32 (...) @killall()
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* @errno, align 4
  %263 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %264

264:                                              ; preds = %259, %255
  %265 = load i64, i64* %15, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load %struct.state*, %struct.state** @statep, align 8
  %269 = getelementptr inbounds %struct.state, %struct.state* %268, i32 0, i32 3
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 %272
  %274 = call i32 @httpd_worker(%struct.TYPE_4__* %273)
  br label %275

275:                                              ; preds = %267, %264
  %276 = load i64, i64* %15, align 8
  %277 = load %struct.state*, %struct.state** @statep, align 8
  %278 = getelementptr inbounds %struct.state, %struct.state* %277, i32 0, i32 3
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i64 %276, i64* %283, align 8
  br label %284

284:                                              ; preds = %275, %254
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %12, align 4
  br label %229

288:                                              ; preds = %229
  store i32 0, i32* %12, align 4
  br label %289

289:                                              ; preds = %340, %288
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* @THREADS, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %343

293:                                              ; preds = %289
  %294 = load i32, i32* @threaded, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = load %struct.state*, %struct.state** @statep, align 8
  %298 = getelementptr inbounds %struct.state, %struct.state* %297, i32 0, i32 3
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @pthread_join(i32 %304, i32* null)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %296
  %308 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %309

309:                                              ; preds = %307, %296
  br label %339

310:                                              ; preds = %293
  %311 = load %struct.state*, %struct.state** @statep, align 8
  %312 = getelementptr inbounds %struct.state, %struct.state* %311, i32 0, i32 3
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @waitpid(i64 %318, i32* null, i32 0)
  store i64 %319, i64* %15, align 8
  %320 = load i64, i64* %15, align 8
  %321 = load %struct.state*, %struct.state** @statep, align 8
  %322 = getelementptr inbounds %struct.state, %struct.state* %321, i32 0, i32 3
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %320, %328
  br i1 %329, label %330, label %338

330:                                              ; preds = %310
  %331 = load %struct.state*, %struct.state** @statep, align 8
  %332 = getelementptr inbounds %struct.state, %struct.state* %331, i32 0, i32 3
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 1
  store i64 0, i64* %337, align 8
  br label %338

338:                                              ; preds = %330, %310
  br label %339

339:                                              ; preds = %338, %309
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %12, align 4
  br label %289

343:                                              ; preds = %289
  %344 = load i32, i32* @threaded, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = call i32 (...) @killall()
  br label %348

348:                                              ; preds = %346, %343
  store i32 0, i32* %3, align 4
  %349 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %349)
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @getpagesize(...) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @minherit(i8*, i32, i32) #2

declare dso_local i64 @uname(i32*) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @open(i8*, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i64 @mkstemp(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @write(i64, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #2

declare dso_local i64 @listen(i64, i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32 (%struct.TYPE_4__*)*, %struct.TYPE_4__*) #2

declare dso_local i32 @httpd_worker(%struct.TYPE_4__*) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @killall(...) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
