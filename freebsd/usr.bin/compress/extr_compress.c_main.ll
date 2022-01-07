; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown program name\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"b:cdfv\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"illegal bit count -- %s\00", align 1
@force = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@eval = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"the -c option permits only a single file argument\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: name already has trailing .Z\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: name too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  store i32 0, i32* %9, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %47

45:                                               ; preds = %40
  %46 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %44
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %34
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @getopt(i32 %51, i8** %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* %10, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %72 [
    i32 98, label %57
    i32 99, label %67
    i32 100, label %68
    i32 102, label %69
    i32 118, label %70
    i32 63, label %71
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @optarg, align 4
  %59 = call i32 @strtol(i32 %58, i8** %11, i32 10)
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @optarg, align 4
  %65 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %77

67:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %77

68:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %77

69:                                               ; preds = %55
  store i32 1, i32* @force, align 4
  br label %77

70:                                               ; preds = %55
  store i32 1, i32* @verbose, align 4
  br label %77

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %55, %71
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @usage(i32 %75)
  br label %77

77:                                               ; preds = %72, %70, %69, %68, %67, %66
  br label %50

78:                                               ; preds = %50
  %79 = load i64, i64* @optind, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  %84 = load i64, i64* @optind, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 %84
  store i8** %86, i8*** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %97 [
    i32 0, label %91
    i32 1, label %94
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @compress(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  br label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @decompress(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89, %94, %91
  %98 = load i32, i32* @eval, align 4
  %99 = call i32 @exit(i32 %98) #4
  unreachable

100:                                              ; preds = %78
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106, %103, %100
  br label %112

112:                                              ; preds = %257, %111
  %113 = load i8**, i8*** %5, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %260

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  switch i32 %117, label %256 [
    i32 0, label %118
    i32 1, label %176
  ]

118:                                              ; preds = %116
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @compress(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  br label %256

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8**, i8*** %5, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @compress(i8* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  br label %256

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load i8**, i8*** %5, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @strrchr(i8* %137, i8 signext 46)
  store i8* %138, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i8*, i8** %11, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @cwarnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %146)
  br label %256

148:                                              ; preds = %140, %135
  %149 = load i8**, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strlen(i8* %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = sub i64 %15, 3
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @cwarnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %157)
  br label %256

159:                                              ; preds = %148
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @memmove(i8* %17, i8* %161, i64 %162)
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds i8, i8* %17, i64 %164
  store i8 46, i8* %165, align 1
  %166 = load i64, i64* %7, align 8
  %167 = add i64 %166, 1
  %168 = getelementptr inbounds i8, i8* %17, i64 %167
  store i8 90, i8* %168, align 1
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, 2
  %171 = getelementptr inbounds i8, i8* %17, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load i8**, i8*** %5, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @compress(i8* %173, i8* %17, i32 %174)
  br label %256

176:                                              ; preds = %116
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @decompress(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %182)
  br label %256

184:                                              ; preds = %176
  %185 = load i8**, i8*** %5, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strlen(i8* %186)
  store i64 %187, i64* %7, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @strrchr(i8* %189, i8 signext 46)
  store i8* %190, i8** %11, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %184
  %193 = load i8*, i8** %11, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %227

196:                                              ; preds = %192, %184
  %197 = load i64, i64* %7, align 8
  %198 = sub i64 %15, 3
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @cwarnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %202)
  br label %256

204:                                              ; preds = %196
  %205 = load i8**, i8*** %5, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @memmove(i8* %17, i8* %206, i64 %207)
  %209 = load i64, i64* %7, align 8
  %210 = getelementptr inbounds i8, i8* %17, i64 %209
  store i8 46, i8* %210, align 1
  %211 = load i64, i64* %7, align 8
  %212 = add i64 %211, 1
  %213 = getelementptr inbounds i8, i8* %17, i64 %212
  store i8 90, i8* %213, align 1
  %214 = load i64, i64* %7, align 8
  %215 = add i64 %214, 2
  %216 = getelementptr inbounds i8, i8* %17, i64 %215
  store i8 0, i8* %216, align 1
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %204
  br label %223

220:                                              ; preds = %204
  %221 = load i8**, i8*** %5, align 8
  %222 = load i8*, i8** %221, align 8
  br label %223

223:                                              ; preds = %220, %219
  %224 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %219 ], [ %222, %220 ]
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @decompress(i8* %17, i8* %224, i32 %225)
  br label %255

227:                                              ; preds = %192
  %228 = load i64, i64* %7, align 8
  %229 = sub i64 %228, 2
  %230 = sub i64 %15, 1
  %231 = icmp ugt i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i8**, i8*** %5, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @cwarnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %234)
  br label %256

236:                                              ; preds = %227
  %237 = load i8**, i8*** %5, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = load i64, i64* %7, align 8
  %240 = sub i64 %239, 2
  %241 = call i32 @memmove(i8* %17, i8* %238, i64 %240)
  %242 = load i64, i64* %7, align 8
  %243 = sub i64 %242, 2
  %244 = getelementptr inbounds i8, i8* %17, i64 %243
  store i8 0, i8* %244, align 1
  %245 = load i8**, i8*** %5, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %236
  br label %251

250:                                              ; preds = %236
  br label %251

251:                                              ; preds = %250, %249
  %252 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %249 ], [ %17, %250 ]
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @decompress(i8* %246, i8* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %223
  br label %256

256:                                              ; preds = %116, %255, %232, %200, %181, %159, %155, %144, %129, %123
  br label %257

257:                                              ; preds = %256
  %258 = load i8**, i8*** %5, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i32 1
  store i8** %259, i8*** %5, align 8
  br label %112

260:                                              ; preds = %112
  %261 = load i32, i32* @eval, align 4
  %262 = call i32 @exit(i32 %261) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strtol(i32, i8**, i32) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @compress(i8*, i8*, i32) #2

declare dso_local i32 @decompress(i8*, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @cwarnx(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
