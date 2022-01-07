; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64*, i64, i64, i64, i64, i32**, i32* }
%struct.TYPE_6__ = type { i8* }

@F_EXECPLUS = common dso_local global i32 0, align 4
@F_EXECDIR = common dso_local global i32 0, align 4
@F_NEEDOK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@ftsoptions = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@dotfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exitstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_exec(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @F_EXECPLUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %290

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 8
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  br label %171

36:                                               ; preds = %12, %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @F_EXECDIR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  br label %56

52:                                               ; preds = %43, %36
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @F_EXECPLUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %123

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = call i32* @strdup(i8* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 8
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  store i32* %65, i32** %72, align 8
  %73 = icmp eq i32* %65, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 @err(i32 1, i8* null)
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  store i64 %78, i64* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %76
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %290

115:                                              ; preds = %106, %76
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 8
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32*, i32** %118, i64 %121
  store i32* null, i32** %122, align 8
  br label %170

123:                                              ; preds = %56
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %166, %123
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 8
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %169

133:                                              ; preds = %124
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %133
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 8
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @brace_subst(i32 %149, i32** %155, i8* %156, i64 %163)
  br label %165

165:                                              ; preds = %142, %133
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %124

169:                                              ; preds = %124
  br label %170

170:                                              ; preds = %169, %115
  br label %171

171:                                              ; preds = %170, %28
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @F_NEEDOK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 8
  %181 = load i32**, i32*** %180, align 8
  %182 = call i32 @queryuser(i32** %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %290

185:                                              ; preds = %178, %171
  %186 = load i32, i32* @stdout, align 4
  %187 = call i32 @fflush(i32 %186)
  %188 = load i32, i32* @stderr, align 4
  %189 = call i32 @fflush(i32 %188)
  %190 = call i32 (...) @fork()
  store i32 %190, i32* %7, align 4
  switch i32 %190, label %229 [
    i32 -1, label %191
    i32 0, label %193
  ]

191:                                              ; preds = %185
  %192 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %193

193:                                              ; preds = %185, %191
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @F_EXECDIR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* @ftsoptions, align 4
  %202 = load i32, i32* @FTS_NOCHDIR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* @dotfd, align 4
  %207 = call i32 @fchdir(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %211 = call i32 @_exit(i32 1) #3
  unreachable

212:                                              ; preds = %205, %200, %193
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 8
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 0
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 8
  %220 = load i32**, i32*** %219, align 8
  %221 = call i32 @execvp(i32* %217, i32** %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 8
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 0
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %226)
  %228 = call i32 @_exit(i32 1) #3
  unreachable

229:                                              ; preds = %185
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @F_EXECPLUS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %267

236:                                              ; preds = %229
  br label %237

237:                                              ; preds = %246, %236
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, -1
  store i64 %241, i64* %239, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp uge i64 %241, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %237
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 8
  %249 = load i32**, i32*** %248, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds i32*, i32** %249, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @free(i32* %254)
  br label %237

256:                                              ; preds = %237
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 7
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 4
  store i64 %264, i64* %266, align 8
  br label %267

267:                                              ; preds = %256, %229
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @waitpid(i32 %268, i32* %8, i32 0)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp ne i32 %270, -1
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load i32, i32* %8, align 4
  %274 = call i64 @WIFEXITED(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @WEXITSTATUS(i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %276
  store i32 1, i32* %3, align 4
  br label %290

281:                                              ; preds = %276, %272, %267
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @F_EXECPLUS, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  store i32 1, i32* @exitstatus, align 4
  store i32 1, i32* %3, align 4
  br label %290

289:                                              ; preds = %281
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %289, %288, %280, %184, %114, %27
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @brace_subst(i32, i32**, i8*, i64) #1

declare dso_local i32 @queryuser(i32**) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @execvp(i32*, i32**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
