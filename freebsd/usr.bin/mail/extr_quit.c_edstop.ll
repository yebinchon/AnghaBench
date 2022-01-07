; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_edstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_edstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.stat = type { i64 }

@PATHSIZE = common dso_local global i32 0, align 4
@readonly = common dso_local global i64 0, align 8
@Tflag = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i64 0, align 8
@MNEW = common dso_local global i32 0, align 4
@MSTATUS = common dso_local global i32 0, align 4
@MODIFY = common dso_local global i32 0, align 4
@MDELETED = common dso_local global i32 0, align 4
@MREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"article-id\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@mailname = common dso_local global i8* null, align 8
@mailsize = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s/mbox.XXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"\22%s\22 \00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"removed\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edstop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.message*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @PATHSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i64, i64* @readonly, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 1, i32* %10, align 4
  br label %272

20:                                               ; preds = %0
  %21 = call i32 (...) @holdsigs()
  %22 = load i8*, i8** @Tflag, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** @Tflag, align 8
  %26 = call i32* @Fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* null, i8** @Tflag, align 8
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.message*, %struct.message** @message, align 8
  %32 = getelementptr inbounds %struct.message, %struct.message* %31, i64 0
  store %struct.message* %32, %struct.message** %3, align 8
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %94, %30
  %34 = load %struct.message*, %struct.message** %3, align 8
  %35 = load %struct.message*, %struct.message** @message, align 8
  %36 = load i64, i64* @msgCount, align 8
  %37 = getelementptr inbounds %struct.message, %struct.message* %35, i64 %36
  %38 = icmp ult %struct.message* %34, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %33
  %40 = load %struct.message*, %struct.message** %3, align 8
  %41 = getelementptr inbounds %struct.message, %struct.message* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MNEW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i32, i32* @MNEW, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.message*, %struct.message** %3, align 8
  %50 = getelementptr inbounds %struct.message, %struct.message* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @MSTATUS, align 4
  %54 = load %struct.message*, %struct.message** %3, align 8
  %55 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %46, %39
  %59 = load %struct.message*, %struct.message** %3, align 8
  %60 = getelementptr inbounds %struct.message, %struct.message* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MODIFY, align 4
  %63 = load i32, i32* @MDELETED, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MSTATUS, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %61, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %69, %58
  %73 = load i8*, i8** @Tflag, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load %struct.message*, %struct.message** %3, align 8
  %77 = getelementptr inbounds %struct.message, %struct.message* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MREAD, align 4
  %80 = load i32, i32* @MDELETED, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.message*, %struct.message** %3, align 8
  %86 = call i8* @hfield(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.message* %85)
  store i8* %86, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @fprintf(i32* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %75, %72
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.message*, %struct.message** %3, align 8
  %96 = getelementptr inbounds %struct.message, %struct.message* %95, i32 1
  store %struct.message* %96, %struct.message** %3, align 8
  br label %33

97:                                               ; preds = %33
  %98 = load i8*, i8** @Tflag, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @Fclose(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %1, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i8*, i8** @Tflag, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %103
  br label %270

110:                                              ; preds = %106
  store i32* null, i32** %5, align 8
  %111 = load i8*, i8** @mailname, align 8
  %112 = call i64 @stat(i8* %111, %struct.stat* %7)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %173

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @mailsize, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %114
  %120 = trunc i64 %14 to i32
  %121 = load i8*, i8** @tmpdir, align 8
  %122 = call i32 @snprintf(i8* %16, i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  %123 = call i32 @mkstemp(i8* %16)
  store i32 %123, i32* %12, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = call i32* @Fdopen(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %127, i32** %4, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %119
  %130 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %131 = call i32 (...) @relsesigs()
  %132 = call i32 @reset(i32 0)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i8*, i8** @mailname, align 8
  %135 = call i32* @Fopen(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %135, i32** %5, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i8*, i8** @mailname, align 8
  %139 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @Fclose(i32* %140)
  %142 = call i32 @rm(i8* %16)
  %143 = call i32 (...) @relsesigs()
  %144 = call i32 @reset(i32 0)
  br label %145

145:                                              ; preds = %137, %133
  %146 = load i32*, i32** %5, align 8
  %147 = load i64, i64* @mailsize, align 8
  %148 = load i32, i32* @SEEK_SET, align 4
  %149 = call i32 @fseeko(i32* %146, i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %155, %145
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @getc(i32* %151)
  store i32 %152, i32* %2, align 4
  %153 = load i32, i32* @EOF, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %2, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @putc(i32 %156, i32* %157)
  br label %150

159:                                              ; preds = %150
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @Fclose(i32* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @Fclose(i32* %162)
  %164 = call i32* @Fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %164, i32** %5, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %168 = call i32 @rm(i8* %16)
  %169 = call i32 (...) @relsesigs()
  %170 = call i32 @reset(i32 0)
  br label %171

171:                                              ; preds = %166, %159
  %172 = call i32 @rm(i8* %16)
  br label %173

173:                                              ; preds = %171, %114, %110
  %174 = load i8*, i8** @mailname, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %174)
  %176 = load i32*, i32** @stdout, align 8
  %177 = call i32 @fflush(i32* %176)
  %178 = load i8*, i8** @mailname, align 8
  %179 = call i32* @Fopen(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %179, i32** %4, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load i8*, i8** @mailname, align 8
  %183 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %182)
  %184 = call i32 (...) @relsesigs()
  %185 = call i32 @reset(i32 0)
  br label %186

186:                                              ; preds = %181, %173
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @trunc(i32* %187)
  store i32 0, i32* %2, align 4
  %189 = load %struct.message*, %struct.message** @message, align 8
  %190 = getelementptr inbounds %struct.message, %struct.message* %189, i64 0
  store %struct.message* %190, %struct.message** %3, align 8
  br label %191

191:                                              ; preds = %218, %186
  %192 = load %struct.message*, %struct.message** %3, align 8
  %193 = load %struct.message*, %struct.message** @message, align 8
  %194 = load i64, i64* @msgCount, align 8
  %195 = getelementptr inbounds %struct.message, %struct.message* %193, i64 %194
  %196 = icmp ult %struct.message* %192, %195
  br i1 %196, label %197, label %221

197:                                              ; preds = %191
  %198 = load %struct.message*, %struct.message** %3, align 8
  %199 = getelementptr inbounds %struct.message, %struct.message* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @MDELETED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %218

205:                                              ; preds = %197
  %206 = load i32, i32* %2, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %2, align 4
  %208 = load %struct.message*, %struct.message** %3, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = call i64 @sendmessage(%struct.message* %208, i32* %209, i32* null, i32* null)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load i8*, i8** @mailname, align 8
  %214 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %213)
  %215 = call i32 (...) @relsesigs()
  %216 = call i32 @reset(i32 0)
  br label %217

217:                                              ; preds = %212, %205
  br label %218

218:                                              ; preds = %217, %204
  %219 = load %struct.message*, %struct.message** %3, align 8
  %220 = getelementptr inbounds %struct.message, %struct.message* %219, i32 1
  store %struct.message* %220, %struct.message** %3, align 8
  br label %191

221:                                              ; preds = %191
  %222 = load i32, i32* %2, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32*, i32** %5, align 8
  %226 = icmp eq i32* %225, null
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi i1 [ false, %221 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %1, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %245

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %238, %232
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @getc(i32* %234)
  store i32 %235, i32* %2, align 4
  %236 = load i32, i32* @EOF, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* %2, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = call i32 @putc(i32 %239, i32* %240)
  br label %233

242:                                              ; preds = %233
  %243 = load i32*, i32** %5, align 8
  %244 = call i32 @Fclose(i32* %243)
  br label %245

245:                                              ; preds = %242, %227
  %246 = load i32*, i32** %4, align 8
  %247 = call i32 @fflush(i32* %246)
  %248 = load i32*, i32** %4, align 8
  %249 = call i64 @ferror(i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load i8*, i8** @mailname, align 8
  %253 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %252)
  %254 = call i32 (...) @relsesigs()
  %255 = call i32 @reset(i32 0)
  br label %256

256:                                              ; preds = %251, %245
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 @Fclose(i32* %257)
  %259 = load i32, i32* %1, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i8*, i8** @mailname, align 8
  %263 = call i32 @rm(i8* %262)
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %267

265:                                              ; preds = %256
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %261
  %268 = load i32*, i32** @stdout, align 8
  %269 = call i32 @fflush(i32* %268)
  br label %270

270:                                              ; preds = %267, %109
  %271 = call i32 (...) @relsesigs()
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %270, %19
  %273 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %273)
  %274 = load i32, i32* %10, align 4
  switch i32 %274, label %276 [
    i32 0, label %275
    i32 1, label %275
  ]

275:                                              ; preds = %272, %272
  ret void

276:                                              ; preds = %272
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @holdsigs(...) #2

declare dso_local i32* @Fopen(i8*, i8*) #2

declare dso_local i8* @hfield(i8*, %struct.message*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @Fclose(i32*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32* @Fdopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @relsesigs(...) #2

declare dso_local i32 @reset(i32) #2

declare dso_local i32 @rm(i8*) #2

declare dso_local i32 @fseeko(i32*, i64, i32) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @trunc(i32*) #2

declare dso_local i64 @sendmessage(%struct.message*, i32*, i32*, i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i64 @ferror(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
