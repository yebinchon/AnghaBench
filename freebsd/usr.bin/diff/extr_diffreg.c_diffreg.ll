; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_diffreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_diffreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pr = type { i32 }

@D_SAME = common dso_local global i32 0, align 4
@anychange = common dso_local global i64 0, align 8
@lastline = common dso_local global i64 0, align 8
@lastmatchline = common dso_local global i64 0, align 8
@context_vec_start = common dso_local global i64 0, align 8
@context_vec_ptr = common dso_local global i64 0, align 8
@D_IGNORECASE = common dso_local global i32 0, align 4
@cup2low = common dso_local global i32 0, align 4
@chrtran = common dso_local global i32 0, align 4
@clow2low = common dso_local global i32 0, align 4
@stb1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@stb2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@D_MISMATCH1 = common dso_local global i32 0, align 4
@D_MISMATCH2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@D_EMPTY1 = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@status = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@D_EMPTY2 = common dso_local global i32 0, align 4
@lflag = common dso_local global i64 0, align 8
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to limit rights on: %s\00", align 1
@STDIN_FILENO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to limit stderr\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unable to limit stdout\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unable to limit stdio\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@D_FORCEASCII = common dso_local global i32 0, align 4
@D_BINARY = common dso_local global i32 0, align 4
@sfile = common dso_local global i32* null, align 8
@slen = common dso_local global i32* null, align 8
@file = common dso_local global i64* null, align 8
@member = common dso_local global i32* null, align 8
@class = common dso_local global i32* null, align 8
@klist = common dso_local global i32* null, align 8
@clen = common dso_local global i64 0, align 8
@clistlen = common dso_local global i32 0, align 4
@clist = common dso_local global i32* null, align 8
@J = common dso_local global i32* null, align 8
@len = common dso_local global i32* null, align 8
@ixold = common dso_local global i32* null, align 8
@ixnew = common dso_local global i32* null, align 8
@D_DIFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diffreg(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pr*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.pr* null, %struct.pr** %14, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  %16 = load i32, i32* @D_SAME, align 4
  store i32 %16, i32* %13, align 4
  store i64 0, i64* @anychange, align 8
  store i64 0, i64* @lastline, align 8
  store i64 0, i64* @lastmatchline, align 8
  %17 = load i64, i64* @context_vec_start, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* @context_vec_ptr, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @D_IGNORECASE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @cup2low, align 4
  store i32 %24, i32* @chrtran, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @clow2low, align 4
  store i32 %26, i32* @chrtran, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb1, i32 0, i32 1), align 4
  %29 = call i64 @S_ISDIR(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb2, i32 0, i32 1), align 4
  %31 = call i64 @S_ISDIR(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb1, i32 0, i32 1), align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @D_MISMATCH1, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @D_MISMATCH2, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %5, align 4
  br label %391

43:                                               ; preds = %27
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %365

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @D_EMPTY1, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** @_PATH_DEVNULL, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %59, i32** %10, align 8
  br label %90

60:                                               ; preds = %52
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb1, i32 0, i32 1), align 4
  %62 = call i32 @S_ISREG(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32* @opentemp(i8* %65)
  store i32* %66, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @fileno(i32* %69)
  %71 = call i64 @fstat(i64 %70, %struct.TYPE_4__* @stb1)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %64
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @status, align 4
  %77 = or i32 %76, 2
  store i32 %77, i32* @status, align 4
  br label %365

78:                                               ; preds = %68
  br label %89

79:                                               ; preds = %60
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32*, i32** @stdin, align 8
  store i32* %84, i32** %10, align 8
  br label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = call i32* @fopen(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %87, i32** %10, align 8
  br label %88

88:                                               ; preds = %85, %83
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %57
  %91 = load i32*, i32** %10, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @status, align 4
  %97 = or i32 %96, 2
  store i32 %97, i32* @status, align 4
  br label %365

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @D_EMPTY2, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** @_PATH_DEVNULL, align 8
  %105 = call i32* @fopen(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %105, i32** %11, align 8
  br label %136

106:                                              ; preds = %98
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb2, i32 0, i32 1), align 4
  %108 = call i32 @S_ISREG(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %7, align 8
  %112 = call i32* @opentemp(i8* %111)
  store i32* %112, i32** %11, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %11, align 8
  %116 = call i64 @fileno(i32* %115)
  %117 = call i64 @fstat(i64 %116, %struct.TYPE_4__* @stb2)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114, %110
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @status, align 4
  %123 = or i32 %122, 2
  store i32 %123, i32* @status, align 4
  br label %365

124:                                              ; preds = %114
  br label %135

125:                                              ; preds = %106
  %126 = load i8*, i8** %7, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32*, i32** @stdin, align 8
  store i32* %130, i32** %11, align 8
  br label %134

131:                                              ; preds = %125
  %132 = load i8*, i8** %7, align 8
  %133 = call i32* @fopen(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %133, i32** %11, align 8
  br label %134

134:                                              ; preds = %131, %129
  br label %135

135:                                              ; preds = %134, %124
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i32*, i32** %11, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @status, align 4
  %143 = or i32 %142, 2
  store i32 %143, i32* @status, align 4
  br label %365

144:                                              ; preds = %136
  %145 = load i64, i64* @lflag, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = call %struct.pr* @start_pr(i8* %148, i8* %149)
  store %struct.pr* %150, %struct.pr** %14, align 8
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %209

154:                                              ; preds = %151
  %155 = load i32, i32* @CAP_READ, align 4
  %156 = load i32, i32* @CAP_FSTAT, align 4
  %157 = load i32, i32* @CAP_SEEK, align 4
  %158 = call i32 @cap_rights_init(i32* %15, i32 %155, i32 %156, i32 %157)
  %159 = load i32*, i32** %10, align 8
  %160 = call i64 @fileno(i32* %159)
  %161 = call i64 @caph_rights_limit(i64 %160, i32* %15)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %154
  %167 = load i32*, i32** %11, align 8
  %168 = call i64 @fileno(i32* %167)
  %169 = call i64 @caph_rights_limit(i64 %168, i32* %15)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32*, i32** %10, align 8
  %176 = call i64 @fileno(i32* %175)
  %177 = load i64, i64* @STDIN_FILENO, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load i32*, i32** %11, align 8
  %181 = call i64 @fileno(i32* %180)
  %182 = load i64, i64* @STDIN_FILENO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %179, %174
  %185 = call i32 (...) @caph_limit_stderr()
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %184
  %190 = call i32 (...) @caph_limit_stdout()
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  br label %201

195:                                              ; preds = %179
  %196 = call i32 (...) @caph_limit_stdio()
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %195
  br label %201

201:                                              ; preds = %200, %194
  %202 = call i32 (...) @caph_cache_catpages()
  %203 = call i32 (...) @caph_cache_tzdata()
  %204 = call i64 (...) @caph_enter()
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %201
  br label %209

209:                                              ; preds = %208, %151
  %210 = load i32*, i32** %10, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @files_differ(i32* %210, i32* %211, i32 %212)
  switch i32 %213, label %216 [
    i32 0, label %214
    i32 1, label %215
  ]

214:                                              ; preds = %209
  br label %365

215:                                              ; preds = %209
  br label %219

216:                                              ; preds = %209
  %217 = load i32, i32* @status, align 4
  %218 = or i32 %217, 2
  store i32 %218, i32* @status, align 4
  br label %365

219:                                              ; preds = %215
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @D_FORCEASCII, align 4
  %222 = and i32 %220, %221
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %219
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @asciifile(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32*, i32** %11, align 8
  %230 = call i32 @asciifile(i32* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228, %224
  %233 = load i32, i32* @D_BINARY, align 4
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* @status, align 4
  %235 = or i32 %234, 1
  store i32 %235, i32* @status, align 4
  br label %365

236:                                              ; preds = %228, %219
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb1, i32 0, i32 0), align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @prepare(i32 0, i32* %237, i32 %238, i32 %239)
  %241 = load i32*, i32** %11, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stb2, i32 0, i32 0), align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @prepare(i32 1, i32* %241, i32 %242, i32 %243)
  %245 = call i32 (...) @prune()
  %246 = load i32*, i32** @sfile, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** @slen, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @sort(i32 %248, i32 %251)
  %253 = load i32*, i32** @sfile, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** @slen, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @sort(i32 %255, i32 %258)
  %260 = load i64*, i64** @file, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 1
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i32*
  store i32* %263, i32** @member, align 8
  %264 = load i32*, i32** @sfile, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** @slen, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** @sfile, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** @slen, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** @member, align 8
  %277 = call i32 @equiv(i32 %266, i32 %269, i32 %272, i32 %275, i32* %276)
  %278 = load i32*, i32** @member, align 8
  %279 = load i32*, i32** @slen, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 2
  %283 = call i32* @xreallocarray(i32* %278, i32 %282, i32 4)
  store i32* %283, i32** @member, align 8
  %284 = load i64*, i64** @file, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to i32*
  store i32* %287, i32** @class, align 8
  %288 = load i32*, i32** @sfile, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** @slen, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** @class, align 8
  %295 = call i32 @unsort(i32 %290, i32 %293, i32* %294)
  %296 = load i32*, i32** @class, align 8
  %297 = load i32*, i32** @slen, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 2
  %301 = call i32* @xreallocarray(i32* %296, i32 %300, i32 4)
  store i32* %301, i32** @class, align 8
  %302 = load i32*, i32** @slen, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 2
  %306 = call i32* @xcalloc(i32 %305, i32 4)
  store i32* %306, i32** @klist, align 8
  store i64 0, i64* @clen, align 8
  store i32 100, i32* @clistlen, align 4
  %307 = load i32, i32* @clistlen, align 4
  %308 = call i32* @xcalloc(i32 %307, i32 4)
  store i32* %308, i32** @clist, align 8
  %309 = load i32*, i32** @class, align 8
  %310 = load i32*, i32** @slen, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** @member, align 8
  %314 = load i32*, i32** @klist, align 8
  %315 = load i32, i32* %8, align 4
  %316 = call i32 @stone(i32* %309, i32 %312, i32* %313, i32* %314, i32 %315)
  store i32 %316, i32* %12, align 4
  %317 = load i32*, i32** @member, align 8
  %318 = call i32 @free(i32* %317)
  %319 = load i32*, i32** @class, align 8
  %320 = call i32 @free(i32* %319)
  %321 = load i32*, i32** @J, align 8
  %322 = load i32*, i32** @len, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 2
  %326 = call i32* @xreallocarray(i32* %321, i32 %325, i32 4)
  store i32* %326, i32** @J, align 8
  %327 = load i32*, i32** @klist, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @unravel(i32 %331)
  %333 = load i32*, i32** @clist, align 8
  %334 = call i32 @free(i32* %333)
  %335 = load i32*, i32** @klist, align 8
  %336 = call i32 @free(i32* %335)
  %337 = load i32*, i32** @ixold, align 8
  %338 = load i32*, i32** @len, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 2
  %342 = call i32* @xreallocarray(i32* %337, i32 %341, i32 4)
  store i32* %342, i32** @ixold, align 8
  %343 = load i32*, i32** @ixnew, align 8
  %344 = load i32*, i32** @len, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 2
  %348 = call i32* @xreallocarray(i32* %343, i32 %347, i32 4)
  store i32* %348, i32** @ixnew, align 8
  %349 = load i32*, i32** %10, align 8
  %350 = load i32*, i32** %11, align 8
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @check(i32* %349, i32* %350, i32 %351)
  %353 = load i8*, i8** %6, align 8
  %354 = load i32*, i32** %10, align 8
  %355 = load i8*, i8** %7, align 8
  %356 = load i32*, i32** %11, align 8
  %357 = load i32, i32* %8, align 4
  %358 = call i32 @output(i8* %353, i32* %354, i8* %355, i32* %356, i32 %357)
  %359 = load %struct.pr*, %struct.pr** %14, align 8
  %360 = icmp ne %struct.pr* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %236
  %362 = load %struct.pr*, %struct.pr** %14, align 8
  %363 = call i32 @stop_pr(%struct.pr* %362)
  br label %364

364:                                              ; preds = %361, %236
  br label %365

365:                                              ; preds = %364, %232, %216, %214, %139, %119, %93, %73, %51
  %366 = load i64, i64* @anychange, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %365
  %369 = load i32, i32* @status, align 4
  %370 = or i32 %369, 1
  store i32 %370, i32* @status, align 4
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* @D_SAME, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %368
  %375 = load i32, i32* @D_DIFFER, align 4
  store i32 %375, i32* %13, align 4
  br label %376

376:                                              ; preds = %374, %368
  br label %377

377:                                              ; preds = %376, %365
  %378 = load i32*, i32** %10, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32*, i32** %10, align 8
  %382 = call i32 @fclose(i32* %381)
  br label %383

383:                                              ; preds = %380, %377
  %384 = load i32*, i32** %11, align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load i32*, i32** %11, align 8
  %388 = call i32 @fclose(i32* %387)
  br label %389

389:                                              ; preds = %386, %383
  %390 = load i32, i32* %13, align 4
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %389, %41
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @opentemp(i8*) #1

declare dso_local i64 @fstat(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @fileno(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local %struct.pr* @start_pr(i8*, i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i64, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @caph_limit_stderr(...) #1

declare dso_local i32 @caph_limit_stdout(...) #1

declare dso_local i32 @caph_limit_stdio(...) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @caph_cache_tzdata(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @files_differ(i32*, i32*, i32) #1

declare dso_local i32 @asciifile(i32*) #1

declare dso_local i32 @prepare(i32, i32*, i32, i32) #1

declare dso_local i32 @prune(...) #1

declare dso_local i32 @sort(i32, i32) #1

declare dso_local i32 @equiv(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @xreallocarray(i32*, i32, i32) #1

declare dso_local i32 @unsort(i32, i32, i32*) #1

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @stone(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @unravel(i32) #1

declare dso_local i32 @check(i32*, i32*, i32) #1

declare dso_local i32 @output(i8*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @stop_pr(%struct.pr*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
