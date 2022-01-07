; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_follow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.stat }
%struct.stat = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@no_files = common dso_local global i32 0, align 4
@qflag = common dso_local global i32 0, align 4
@Fflag = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8
@last = common dso_local global %struct.TYPE_9__* null, align 8
@kq = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@ev = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't allocate memory for kevents.\00", align 1
@fa = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@action = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@EVFILT_READ = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @follow(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timespec, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %10, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %64, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @no_files, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @no_files, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @qflag, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @printfn(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %33, %30, %25
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = call i32 @forward(i32* %41, i32 %44, i32 %45, i32 %46, %struct.stat* %48)
  %50 = load i64, i64* @Fflag, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %38
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @fileno(i32* %55)
  %57 = load i64, i64* @STDIN_FILENO, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %52, %38
  br label %63

63:                                               ; preds = %62, %20
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %12, align 8
  br label %16

69:                                               ; preds = %16
  %70 = load i64, i64* @Fflag, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  ret void

76:                                               ; preds = %72, %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 -1
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** @last, align 8
  %79 = call i64 (...) @kqueue()
  store i64 %79, i64* @kq, align 8
  %80 = load i64, i64* @kq, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call %struct.TYPE_10__* @malloc(i32 %88)
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** @ev, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ev, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = call i32 @set_events(%struct.TYPE_9__* %95)
  br label %97

97:                                               ; preds = %330, %320, %94
  store i32 0, i32* %8, align 4
  %98 = load i64, i64* @Fflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %250

100:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %12, align 8
  br label %102

102:                                              ; preds = %244, %100
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @no_files, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %249

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %149, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @fa, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @fileargs_fopen(i32 %112, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %140

124:                                              ; preds = %111
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @fileno(i32* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = call i32 @fstat(i64 %128, %struct.stat* %130)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @fclose(i32* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %124, %111
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %145, %140
  br label %244

149:                                              ; preds = %106
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @fileno(i32* %152)
  %154 = load i64, i64* @STDIN_FILENO, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %244

157:                                              ; preds = %149
  %158 = load i32, i32* @fa, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @fileargs_fopen(i32 %158, i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %163 = bitcast i8* %162 to i32*
  store i32* %163, i32** %13, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %157
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @fileno(i32* %169)
  %171 = call i32 @fstat(i64 %170, %struct.stat* %11)
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %205

173:                                              ; preds = %166, %157
  %174 = load i64, i64* @errno, align 8
  %175 = load i64, i64* @ENOENT, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @ierr(i32 %180)
  br label %182

182:                                              ; preds = %177, %173
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %184 = call i32 @show(%struct.TYPE_9__* %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @fclose(i32* %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  store i32* null, i32** %195, align 8
  br label %196

196:                                              ; preds = %189, %182
  %197 = load i32*, i32** %13, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %13, align 8
  %201 = call i32 @fclose(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %244

205:                                              ; preds = %166
  %206 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.stat, %struct.stat* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %207, %211
  br i1 %212, label %225, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.stat, %struct.stat* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %215, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %221, %213, %205
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %227 = call i32 @show(%struct.TYPE_9__* %226)
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @fclose(i32* %230)
  %232 = load i32*, i32** %13, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store i32* %232, i32** %234, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  %237 = call i32 @memcpy(%struct.stat* %236, %struct.stat* %11, i32 24)
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %243

240:                                              ; preds = %221
  %241 = load i32*, i32** %13, align 8
  %242 = call i32 @fclose(i32* %241)
  br label %243

243:                                              ; preds = %240, %225
  br label %244

244:                                              ; preds = %243, %202, %156, %148
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 1
  store %struct.TYPE_9__* %248, %struct.TYPE_9__** %12, align 8
  br label %102

249:                                              ; preds = %102
  br label %250

250:                                              ; preds = %249, %97
  store i32 0, i32* %9, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %251, %struct.TYPE_9__** %12, align 8
  br label %252

252:                                              ; preds = %269, %250
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @no_files, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %274

256:                                              ; preds = %252
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %263 = call i32 @show(%struct.TYPE_9__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %265, %261, %256
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 1
  store %struct.TYPE_9__* %273, %struct.TYPE_9__** %12, align 8
  br label %252

274:                                              ; preds = %252
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = call i32 @set_events(%struct.TYPE_9__* %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, i32* @action, align 4
  switch i32 %281, label %330 [
    i32 129, label %282
    i32 128, label %328
  ]

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 1, i32* %283, align 4
  %284 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  store i32 0, i32* %284, align 4
  %285 = load i64, i64* @kq, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ev, align 8
  %287 = load i64, i64* @Fflag, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %291

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %289
  %292 = phi %struct.timespec* [ %14, %289 ], [ null, %290 ]
  %293 = call i32 @kevent(i64 %285, i32* null, i32 0, %struct.TYPE_10__* %286, i32 1, %struct.timespec* %292)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %291
  %299 = load i32, i32* %10, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %330

302:                                              ; preds = %298
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ev, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @EVFILT_READ, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %326

308:                                              ; preds = %302
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ev, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %326

313:                                              ; preds = %308
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ev, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @SEEK_END, align 4
  %318 = call i32 @lseek(i32 %316, i32 0, i32 %317)
  %319 = icmp eq i32 %318, -1
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @ierr(i32 %323)
  br label %97

325:                                              ; preds = %313
  br label %326

326:                                              ; preds = %325, %308, %302
  br label %327

327:                                              ; preds = %326
  br label %330

328:                                              ; preds = %280
  %329 = call i32 @usleep(i32 250000)
  br label %330

330:                                              ; preds = %280, %328, %327, %301
  br label %97
}

declare dso_local i32 @printfn(i32, i32) #1

declare dso_local i32 @forward(i32*, i32, i32, i32, %struct.stat*) #1

declare dso_local i64 @fileno(i32*) #1

declare dso_local i64 @kqueue(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @set_events(%struct.TYPE_9__*) #1

declare dso_local i8* @fileargs_fopen(i32, i32, i8*) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ierr(i32) #1

declare dso_local i32 @show(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(%struct.stat*, %struct.stat*, i32) #1

declare dso_local i32 @kevent(i64, i32*, i32, %struct.TYPE_10__*, i32, %struct.timespec*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
