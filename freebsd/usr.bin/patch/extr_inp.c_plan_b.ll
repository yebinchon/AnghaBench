; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_plan_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_plan_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@revision = common dso_local global i32* null, align 8
@using_plan_a = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't open file %s\00", align 1
@TMPINNAME = common dso_local global i8* null, align 8
@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@tifd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@last_line_missing_eol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"can't read file %s\00", align 1
@force = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [74 x i8] c"Warning: this file doesn't appear to be the %s version--patching anyway.\0A\00", align 1
@batch = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"this file doesn't appear to be the %s version--aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"This file doesn't appear to be the %s version--patch anyway? [n] \00", align 1
@buf = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"aborted\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Good.  This file appears to be the %s version.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@tireclen = common dso_local global i64 0, align 8
@BUFFERSIZE = common dso_local global i64 0, align 8
@tibuflen = common dso_local global i64 0, align 8
@lines_per_buf = common dso_local global i64 0, align 8
@tibuf = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"can't write temp file\00", align 1
@input_lines = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"can't reopen file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @plan_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plan_b(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 1, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32*, i32** @revision, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %10, align 4
  store i32 0, i32* @using_plan_a, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i8*, i8** @TMPINNAME, align 8
  %22 = call i32 @unlink(i8* %21)
  %23 = load i8*, i8** @TMPINNAME, align 8
  %24 = load i32, i32* @O_EXCL, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 (i8*, i32, ...) @open(i8* %23, i32 %28, i32 438)
  store i32 %29, i32* @tifd, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i8*, i8** @TMPINNAME, align 8
  %33 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %20
  br label %35

35:                                               ; preds = %87, %34
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @fgetln(i32* %36, i64* %6)
  store i8* %37, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  br label %70

52:                                               ; preds = %39
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  %55 = call i8* @malloc(i64 %54)
  store i8* %55, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %9, align 8
  store i32 1, i32* @last_line_missing_eol, align 4
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %59, %47
  %71 = load i32*, i32** @revision, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @rev_in_string(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %76, %73, %70
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %85, %81
  br label %35

88:                                               ; preds = %35
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i64 @ferror(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i32*, i32** @revision, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %139

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @force, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i64, i64* @verbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** @revision, align 8
  %111 = call i32 @say(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %130

113:                                              ; preds = %103
  %114 = load i64, i64* @batch, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** @revision, align 8
  %118 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32* %117)
  br label %129

119:                                              ; preds = %113
  %120 = load i32*, i32** @revision, align 8
  %121 = call i32 @ask(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32* %120)
  %122 = load i8*, i8** @buf, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 121
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %119
  br label %129

129:                                              ; preds = %128, %116
  br label %130

130:                                              ; preds = %129, %112
  br label %138

131:                                              ; preds = %100
  %132 = load i64, i64* @verbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** @revision, align 8
  %136 = call i32 @say(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32* %135)
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %130
  br label %139

139:                                              ; preds = %138, %97
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* @SEEK_SET, align 4
  %142 = call i32 @fseek(i32* %140, i64 0, i32 %141)
  %143 = load i64, i64* %7, align 8
  store i64 %143, i64* @tireclen, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @BUFFERSIZE, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i64, i64* %7, align 8
  br label %151

149:                                              ; preds = %139
  %150 = load i64, i64* @BUFFERSIZE, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i64 [ %148, %147 ], [ %150, %149 ]
  store i64 %152, i64* @tibuflen, align 8
  %153 = load i64, i64* @tibuflen, align 8
  %154 = load i64, i64* %7, align 8
  %155 = udiv i64 %153, %154
  store i64 %155, i64* @lines_per_buf, align 8
  %156 = load i64, i64* @tibuflen, align 8
  %157 = add i64 %156, 1
  %158 = call i8* @malloc(i64 %157)
  %159 = load i8**, i8*** @tibuf, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  store i8* %158, i8** %160, align 8
  %161 = load i8**, i8*** @tibuf, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %151
  %168 = load i64, i64* @tibuflen, align 8
  %169 = add i64 %168, 1
  %170 = call i8* @malloc(i64 %169)
  %171 = load i8**, i8*** @tibuf, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 1
  store i8* %170, i8** %172, align 8
  %173 = load i8**, i8*** @tibuf, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %167
  store i64 1, i64* %4, align 8
  br label %180

180:                                              ; preds = %251, %179
  %181 = load i8**, i8*** @tibuf, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load i64, i64* @lines_per_buf, align 8
  %187 = urem i64 %185, %186
  %188 = mul i64 %184, %187
  %189 = getelementptr inbounds i8, i8* %183, i64 %188
  store i8* %189, i8** %9, align 8
  %190 = load i64, i64* %4, align 8
  %191 = load i64, i64* @lines_per_buf, align 8
  %192 = urem i64 %190, %191
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %180
  %195 = load i32, i32* @tifd, align 4
  %196 = load i8**, i8*** @tibuf, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i64, i64* @tibuflen, align 8
  %200 = call i64 @write(i32 %195, i8* %198, i64 %199)
  %201 = load i64, i64* @tibuflen, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %194
  br label %206

206:                                              ; preds = %205, %180
  %207 = load i8*, i8** %9, align 8
  %208 = load i64, i64* %7, align 8
  %209 = add i64 %208, 1
  %210 = load i32*, i32** %3, align 8
  %211 = call i32* @fgets(i8* %207, i64 %209, i32* %210)
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %233

213:                                              ; preds = %206
  %214 = load i64, i64* %4, align 8
  %215 = sub i64 %214, 1
  store i64 %215, i64* @input_lines, align 8
  %216 = load i64, i64* %4, align 8
  %217 = load i64, i64* @lines_per_buf, align 8
  %218 = urem i64 %216, %217
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %213
  %221 = load i32, i32* @tifd, align 4
  %222 = load i8**, i8*** @tibuf, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i64, i64* @tibuflen, align 8
  %226 = call i64 @write(i32 %221, i8* %224, i64 %225)
  %227 = load i64, i64* @tibuflen, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %220
  %230 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %220
  br label %232

232:                                              ; preds = %231, %213
  br label %254

233:                                              ; preds = %206
  %234 = load i8*, i8** %9, align 8
  %235 = call i64 @strlen(i8* %234)
  store i64 %235, i64* %5, align 8
  %236 = load i64, i64* %5, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %233
  %239 = load i8*, i8** %9, align 8
  %240 = load i64, i64* %5, align 8
  %241 = sub i64 %240, 1
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 10
  br i1 %245, label %246, label %250

246:                                              ; preds = %238, %233
  %247 = load i8*, i8** %9, align 8
  %248 = load i64, i64* %5, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 10, i8* %249, align 1
  br label %250

250:                                              ; preds = %246, %238
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %4, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %4, align 8
  br label %180

254:                                              ; preds = %232
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 @fclose(i32* %255)
  %257 = load i32, i32* @tifd, align 4
  %258 = call i32 @close(i32 %257)
  %259 = load i8*, i8** @TMPINNAME, align 8
  %260 = load i32, i32* @O_RDONLY, align 4
  %261 = call i32 (i8*, i32, ...) @open(i8* %259, i32 %260)
  store i32 %261, i32* @tifd, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = load i8*, i8** @TMPINNAME, align 8
  %265 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %263, %254
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pfatal(i8*, ...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @rev_in_string(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @say(i8*, i32*) #1

declare dso_local i32 @ask(i8*, i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
