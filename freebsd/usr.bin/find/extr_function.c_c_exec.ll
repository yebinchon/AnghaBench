; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32, i8**, i8**, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }

@F_EXECDIR = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: forbidden when the current directory cannot be opened\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-execdir\00", align 1
@isoutput = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: no terminating \22;\22 or \22+\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@F_EXECPLUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: no command specified\00", align 1
@_SC_ARG_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"sysconf(_SC_ARG_MAX)\00", align 1
@_POSIX_ARG_MAX = common dso_local global i64 0, align 8
@environ = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"no space for arguments\00", align 1
@lastexecplus = common dso_local global %struct.TYPE_8__* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @c_exec(%struct.TYPE_9__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @F_EXECDIR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @ftsoptions, align 4
  %21 = load i32, i32* @FTS_NOCHDIR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19, %2
  store i32 1, i32* @isoutput, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call %struct.TYPE_8__* @palloc(%struct.TYPE_9__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %5, align 8
  %29 = load i8***, i8**** %4, align 8
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %9, align 8
  store i8** %30, i8*** %10, align 8
  br label %31

31:                                               ; preds = %70, %26
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 59
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %73

47:                                               ; preds = %40
  %48 = load i8**, i8*** %10, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i8**, i8*** %10, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = icmp ne i8** %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8**, i8*** %10, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 -1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @F_EXECPLUS, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %73

69:                                               ; preds = %57, %53, %47
  br label %70

70:                                               ; preds = %69
  %71 = load i8**, i8*** %10, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %10, align 8
  br label %31

73:                                               ; preds = %63, %46
  %74 = load i8**, i8*** %10, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = icmp eq i8** %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8***, i8**** %4, align 8
  %85 = load i8**, i8*** %84, align 8
  %86 = ptrtoint i8** %83 to i64
  %87 = ptrtoint i8** %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 8
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @F_EXECPLUS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %176

98:                                               ; preds = %82
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @_SC_ARG_MAX, align 4
  %106 = call i64 @sysconf(i32 %105)
  store i64 %106, i64* %6, align 8
  %107 = icmp eq i64 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i64, i64* @_POSIX_ARG_MAX, align 8
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %108, %98
  %112 = load i64, i64* %6, align 8
  %113 = sub nsw i64 %112, 1024
  store i64 %113, i64* %6, align 8
  %114 = load i8**, i8*** @environ, align 8
  store i8** %114, i8*** %11, align 8
  br label %115

115:                                              ; preds = %128, %111
  %116 = load i8**, i8*** %11, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i8**, i8*** %11, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 8
  %126 = load i64, i64* %6, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load i8**, i8*** %11, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %130, i8*** %11, align 8
  br label %115

131:                                              ; preds = %115
  %132 = load i64, i64* %6, align 8
  %133 = sub i64 %132, 9
  store i64 %133, i64* %6, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @F_EXECDIR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %144

141:                                              ; preds = %131
  %142 = load i64, i64* %6, align 8
  %143 = sdiv i64 %142, 16
  br label %144

144:                                              ; preds = %141, %140
  %145 = phi i64 [ 1, %140 ], [ %143, %141 ]
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 8, %152
  %154 = load i64, i64* %6, align 8
  %155 = sub i64 %154, %153
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = icmp sle i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %144
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 5
  store i32 0, i32* %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastexecplus, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 10
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %175, %struct.TYPE_8__** @lastexecplus, align 8
  br label %176

176:                                              ; preds = %160, %82
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 8
  %180 = trunc i64 %179 to i32
  %181 = call i8* @malloc(i32 %180)
  %182 = bitcast i8* %181 to i8**
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 6
  store i8** %182, i8*** %184, align 8
  %185 = icmp eq i8** %182, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = call i32 @err(i32 1, i32* null)
  br label %188

188:                                              ; preds = %186, %176
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 8
  %192 = trunc i64 %191 to i32
  %193 = call i8* @malloc(i32 %192)
  %194 = bitcast i8* %193 to i8**
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 7
  store i8** %194, i8*** %196, align 8
  %197 = icmp eq i8** %194, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = call i32 @err(i32 1, i32* null)
  br label %200

200:                                              ; preds = %198, %188
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i8* @malloc(i32 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 8
  store i32* %206, i32** %208, align 8
  %209 = icmp eq i32* %206, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = call i32 @err(i32 1, i32* null)
  br label %212

212:                                              ; preds = %210, %200
  %213 = load i8***, i8**** %4, align 8
  %214 = load i8**, i8*** %213, align 8
  store i8** %214, i8*** %9, align 8
  store i32 0, i32* %7, align 4
  br label %215

215:                                              ; preds = %313, %212
  %216 = load i8**, i8*** %9, align 8
  %217 = load i8**, i8*** %10, align 8
  %218 = icmp ult i8** %216, %217
  br i1 %218, label %219, label %318

219:                                              ; preds = %215
  %220 = load i8**, i8*** %9, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 7
  %224 = load i8**, i8*** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  store i8* %221, i8** %227, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @F_EXECPLUS, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %219
  %235 = load i8**, i8*** %9, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @strlen(i8* %236)
  %238 = add nsw i32 %237, 1
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %234, %219
  %244 = load i8**, i8*** %9, align 8
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %12, align 8
  br label %246

246:                                              ; preds = %290, %243
  %247 = load i8*, i8** %12, align 8
  %248 = load i8, i8* %247, align 1
  %249 = icmp ne i8 %248, 0
  br i1 %249, label %250, label %293

250:                                              ; preds = %246
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @F_EXECPLUS, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %289, label %257

257:                                              ; preds = %250
  %258 = load i8*, i8** %12, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 123
  br i1 %262, label %263, label %289

263:                                              ; preds = %257
  %264 = load i8*, i8** %12, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 125
  br i1 %268, label %269, label %289

269:                                              ; preds = %263
  %270 = load i32, i32* @MAXPATHLEN, align 4
  %271 = call i8* @malloc(i32 %270)
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 6
  %274 = load i8**, i8*** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  store i8* %271, i8** %277, align 8
  %278 = icmp eq i8* %271, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %269
  %280 = call i32 @err(i32 1, i32* null)
  br label %281

281:                                              ; preds = %279, %269
  %282 = load i32, i32* @MAXPATHLEN, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 8
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  br label %293

289:                                              ; preds = %263, %257, %250
  br label %290

290:                                              ; preds = %289
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %12, align 8
  br label %246

293:                                              ; preds = %281, %246
  %294 = load i8*, i8** %12, align 8
  %295 = load i8, i8* %294, align 1
  %296 = icmp ne i8 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %293
  %298 = load i8**, i8*** %9, align 8
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 6
  %302 = load i8**, i8*** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  store i8* %299, i8** %305, align 8
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 8
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %297, %293
  br label %313

313:                                              ; preds = %312
  %314 = load i8**, i8*** %9, align 8
  %315 = getelementptr inbounds i8*, i8** %314, i32 1
  store i8** %315, i8*** %9, align 8
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %7, align 4
  br label %215

318:                                              ; preds = %215
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @F_EXECPLUS, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %359

325:                                              ; preds = %318
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 9
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %333

333:                                              ; preds = %354, %325
  %334 = load i32, i32* %8, align 4
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %357

339:                                              ; preds = %333
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 6
  %342 = load i8**, i8*** %341, align 8
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  store i8* null, i8** %345, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 8
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  store i32 0, i32* %351, align 4
  %352 = load i32, i32* %7, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %7, align 4
  br label %354

354:                                              ; preds = %339
  %355 = load i32, i32* %8, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %8, align 4
  br label %333

357:                                              ; preds = %333
  %358 = load i8**, i8*** %10, align 8
  store i8** %358, i8*** %9, align 8
  br label %372

359:                                              ; preds = %318
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 7
  %362 = load i8**, i8*** %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8*, i8** %362, i64 %364
  store i8* null, i8** %365, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 6
  %368 = load i8**, i8*** %367, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %368, i64 %370
  store i8* null, i8** %371, align 8
  br label %372

372:                                              ; preds = %359, %357
  %373 = load i8**, i8*** %9, align 8
  %374 = getelementptr inbounds i8*, i8** %373, i64 1
  %375 = load i8***, i8**** %4, align 8
  store i8** %374, i8*** %375, align 8
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %376
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @palloc(%struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
