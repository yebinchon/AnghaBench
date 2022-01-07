; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/banner/extr_banner.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/banner/extr_banner.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"w:td\00", align 1
@debug = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@DWIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"illegal argument for -w option\00", align 1
@optind = common dso_local global i64 0, align 8
@i = common dso_local global i32 0, align 4
@j = common dso_local global i64 0, align 8
@print = common dso_local global i32* null, align 8
@message = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@nchars = common dso_local global i32 0, align 4
@MAXMSG = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Message: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"const int asc_ptr[NCHARS] = {\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%4d,   \00", align 1
@asc_ptr = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"};\0Aconst unsigned char data_table[NBYTES] = {\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"/*          \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" %3d  \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@NBYTES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"/* %4d */  \00", align 1
@data_table = common dso_local global i32* null, align 8
@x = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c" %3d, \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@NCHARS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"the character '%c' is not in my character set\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Message '%s' is OK\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Char #%d: %c\0A\00", align 1
@line = common dso_local global i8* null, align 8
@pc = common dso_local global i32 0, align 4
@term = common dso_local global i32 0, align 4
@max = common dso_local global i32 0, align 4
@linen = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"bad pc: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"pc=%d, term=%d, max=%d, linen=%d, x=%d\0A\00", align 1
@y = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"x=%d, y=%d, max=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %29 [
    i32 100, label %14
    i32 116, label %15
    i32 119, label %16
    i32 63, label %28
  ]

14:                                               ; preds = %12
  store i32 1, i32* @debug, align 4
  br label %31

15:                                               ; preds = %12
  store i32 1, i32* @trace, align 4
  br label %31

16:                                               ; preds = %12
  %17 = load i32, i32* @optarg, align 4
  %18 = call i32 @atoi(i32 %17)
  store i32 %18, i32* @width, align 4
  %19 = load i32, i32* @width, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @width, align 4
  %23 = load i32, i32* @DWIDTH, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %16
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %31

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %12, %28
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %27, %15, %14
  br label %7

32:                                               ; preds = %7
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
  store i32 0, i32* @i, align 4
  br label %41

41:                                               ; preds = %55, %32
  %42 = load i32, i32* @i, align 4
  %43 = load i32, i32* @width, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* @i, align 4
  %47 = load i32, i32* @DWIDTH, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @width, align 4
  %50 = sdiv i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* @j, align 8
  %52 = load i32*, i32** @print, align 8
  %53 = load i64, i64* @j, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @i, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @i, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  store i32 0, i32* @i, align 4
  store i64 0, i64* @j, align 8
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* @i, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* @i, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @j, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* @j, align 8
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @i, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @i, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load i64, i64* @j, align 8
  %83 = call i8* @malloc(i64 %82)
  store i8* %83, i8** @message, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i8*, i8** @message, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* @j, align 8
  %92 = call i32 @strlcpy(i8* %88, i8* %90, i64 %91)
  br label %93

93:                                               ; preds = %98, %87
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i8*, i8** @message, align 8
  %100 = load i64, i64* @j, align 8
  %101 = call i32 @strlcat(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %100)
  %102 = load i8*, i8** @message, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* @j, align 8
  %106 = call i32 @strlcat(i8* %102, i8* %104, i64 %105)
  br label %93

107:                                              ; preds = %93
  %108 = load i8*, i8** @message, align 8
  %109 = call i32 @strlen(i8* %108)
  store i32 %109, i32* @nchars, align 4
  br label %146

110:                                              ; preds = %58
  %111 = load i64, i64* @MAXMSG, align 8
  %112 = call i8* @malloc(i64 %111)
  store i8* %112, i8** @message, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i8*, i8** @message, align 8
  %120 = load i64, i64* @MAXMSG, align 8
  %121 = load i32, i32* @stdin, align 4
  %122 = call i32* @fgets(i8* %119, i64 %120, i32 %121)
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  store i32 0, i32* @nchars, align 4
  %125 = load i8*, i8** @message, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 0, i8* %126, align 1
  br label %145

127:                                              ; preds = %116
  %128 = load i8*, i8** @message, align 8
  %129 = call i32 @strlen(i8* %128)
  store i32 %129, i32* @nchars, align 4
  %130 = load i8*, i8** @message, align 8
  %131 = load i32, i32* @nchars, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load i8*, i8** @message, align 8
  %140 = load i32, i32* @nchars, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* @nchars, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %138, %127
  br label %145

145:                                              ; preds = %144, %124
  br label %146

146:                                              ; preds = %145, %107
  %147 = load i32, i32* @debug, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %218

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @i, align 4
  br label %151

151:                                              ; preds = %168, %149
  %152 = load i32, i32* @i, align 4
  %153 = icmp slt i32 %152, 128
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i32*, i32** @asc_ptr, align 8
  %156 = load i32, i32* @i, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @i, align 4
  %162 = add nsw i32 %161, 1
  %163 = srem i32 %162, 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %154
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @i, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @i, align 4
  br label %151

171:                                              ; preds = %151
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* @i, align 4
  br label %174

174:                                              ; preds = %180, %171
  %175 = load i32, i32* @i, align 4
  %176 = icmp slt i32 %175, 10
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i32, i32* @i, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @i, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @i, align 4
  br label %174

183:                                              ; preds = %174
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* @i, align 4
  br label %185

185:                                              ; preds = %213, %183
  %186 = load i32, i32* @i, align 4
  %187 = load i32, i32* @NBYTES, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %185
  %190 = load i32, i32* @i, align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @i, align 4
  %193 = sext i32 %192 to i64
  store i64 %193, i64* @j, align 8
  br label %194

194:                                              ; preds = %208, %189
  %195 = load i64, i64* @j, align 8
  %196 = load i32, i32* @i, align 4
  %197 = add nsw i32 %196, 10
  %198 = sext i32 %197 to i64
  %199 = icmp ult i64 %195, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load i32*, i32** @data_table, align 8
  %202 = load i64, i64* @j, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 255
  store i32 %205, i32* @x, align 4
  %206 = load i32, i32* @x, align 4
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %200
  %209 = load i64, i64* @j, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* @j, align 8
  br label %194

211:                                              ; preds = %194
  %212 = call i32 @putchar(i8 signext 10)
  br label %213

213:                                              ; preds = %211
  %214 = load i32, i32* @i, align 4
  %215 = add nsw i32 %214, 10
  store i32 %215, i32* @i, align 4
  br label %185

216:                                              ; preds = %185
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %146
  store i64 0, i64* @j, align 8
  store i32 0, i32* @i, align 4
  br label %219

219:                                              ; preds = %253, %218
  %220 = load i32, i32* @i, align 4
  %221 = load i32, i32* @nchars, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %219
  %224 = load i8*, i8** @message, align 8
  %225 = load i32, i32* @i, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i64
  %230 = load i64, i64* @NCHARS, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %243, label %232

232:                                              ; preds = %223
  %233 = load i32*, i32** @asc_ptr, align 8
  %234 = load i8*, i8** @message, align 8
  %235 = load i32, i32* @i, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i64
  %240 = getelementptr inbounds i32, i32* %233, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %232, %223
  %244 = load i8*, i8** @message, align 8
  %245 = load i32, i32* @i, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8 signext %248)
  %250 = load i64, i64* @j, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* @j, align 8
  br label %252

252:                                              ; preds = %243, %232
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* @i, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @i, align 4
  br label %219

256:                                              ; preds = %219
  %257 = load i64, i64* @j, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = call i32 @exit(i32 1) #3
  unreachable

261:                                              ; preds = %256
  %262 = load i32, i32* @trace, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i8*, i8** @message, align 8
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %264, %261
  store i32 0, i32* @i, align 4
  br label %268

268:                                              ; preds = %436, %267
  %269 = load i32, i32* @i, align 4
  %270 = load i32, i32* @nchars, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %439

272:                                              ; preds = %268
  %273 = load i32, i32* @trace, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %272
  %276 = load i32, i32* @i, align 4
  %277 = load i8*, i8** @message, align 8
  %278 = load i32, i32* @i, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %276, i32 %282)
  br label %284

284:                                              ; preds = %275, %272
  store i64 0, i64* @j, align 8
  br label %285

285:                                              ; preds = %294, %284
  %286 = load i64, i64* @j, align 8
  %287 = load i32, i32* @DWIDTH, align 4
  %288 = sext i32 %287 to i64
  %289 = icmp ult i64 %286, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = load i8*, i8** @line, align 8
  %292 = load i64, i64* @j, align 8
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  store i8 32, i8* %293, align 1
  br label %294

294:                                              ; preds = %290
  %295 = load i64, i64* @j, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* @j, align 8
  br label %285

297:                                              ; preds = %285
  %298 = load i32*, i32** @asc_ptr, align 8
  %299 = load i8*, i8** @message, align 8
  %300 = load i32, i32* @i, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i64
  %305 = getelementptr inbounds i32, i32* %298, i64 %304
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* @pc, align 4
  store i32 0, i32* @term, align 4
  store i32 0, i32* @max, align 4
  store i32 0, i32* @linen, align 4
  br label %307

307:                                              ; preds = %434, %297
  %308 = load i32, i32* @term, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  br i1 %310, label %311, label %435

311:                                              ; preds = %307
  %312 = load i32, i32* @pc, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* @pc, align 4
  %316 = load i32, i32* @NBYTES, align 4
  %317 = icmp sgt i32 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %314, %311
  %319 = load i32, i32* @pc, align 4
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %319)
  %321 = call i32 @exit(i32 1) #3
  unreachable

322:                                              ; preds = %314
  %323 = load i32*, i32** @data_table, align 8
  %324 = load i32, i32* @pc, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 255
  store i32 %328, i32* @x, align 4
  %329 = load i32, i32* @trace, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %322
  %332 = load i32, i32* @pc, align 4
  %333 = load i32, i32* @term, align 4
  %334 = load i32, i32* @max, align 4
  %335 = load i32, i32* @linen, align 4
  %336 = load i32, i32* @x, align 4
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %331, %322
  %339 = load i32, i32* @x, align 4
  %340 = icmp sge i32 %339, 128
  br i1 %340, label %341, label %403

341:                                              ; preds = %338
  %342 = load i32, i32* @x, align 4
  %343 = icmp sgt i32 %342, 192
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32, i32* @term, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* @term, align 4
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i32, i32* @x, align 4
  %349 = and i32 %348, 63
  store i32 %349, i32* @x, align 4
  br label %350

350:                                              ; preds = %386, %347
  %351 = load i32, i32* @x, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* @x, align 4
  %353 = icmp ne i32 %351, 0
  br i1 %353, label %354, label %387

354:                                              ; preds = %350
  %355 = load i32*, i32** @print, align 8
  %356 = load i32, i32* @linen, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* @linen, align 4
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %386

362:                                              ; preds = %354
  store i64 0, i64* @j, align 8
  br label %363

363:                                              ; preds = %381, %362
  %364 = load i64, i64* @j, align 8
  %365 = load i32, i32* @max, align 4
  %366 = sext i32 %365 to i64
  %367 = icmp ule i64 %364, %366
  br i1 %367, label %368, label %384

368:                                              ; preds = %363
  %369 = load i32*, i32** @print, align 8
  %370 = load i64, i64* @j, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %368
  %375 = load i8*, i8** @line, align 8
  %376 = load i64, i64* @j, align 8
  %377 = getelementptr inbounds i8, i8* %375, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = call i32 @putchar(i8 signext %378)
  br label %380

380:                                              ; preds = %374, %368
  br label %381

381:                                              ; preds = %380
  %382 = load i64, i64* @j, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* @j, align 8
  br label %363

384:                                              ; preds = %363
  %385 = call i32 @putchar(i8 signext 10)
  br label %386

386:                                              ; preds = %384, %354
  br label %350

387:                                              ; preds = %350
  store i64 0, i64* @j, align 8
  br label %388

388:                                              ; preds = %397, %387
  %389 = load i64, i64* @j, align 8
  %390 = load i32, i32* @DWIDTH, align 4
  %391 = sext i32 %390 to i64
  %392 = icmp ult i64 %389, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %388
  %394 = load i8*, i8** @line, align 8
  %395 = load i64, i64* @j, align 8
  %396 = getelementptr inbounds i8, i8* %394, i64 %395
  store i8 32, i8* %396, align 1
  br label %397

397:                                              ; preds = %393
  %398 = load i64, i64* @j, align 8
  %399 = add i64 %398, 1
  store i64 %399, i64* @j, align 8
  br label %388

400:                                              ; preds = %388
  %401 = load i32, i32* @pc, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* @pc, align 4
  br label %434

403:                                              ; preds = %338
  %404 = load i32*, i32** @data_table, align 8
  %405 = load i32, i32* @pc, align 4
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* @y, align 4
  %410 = load i32, i32* @x, align 4
  %411 = load i32, i32* @y, align 4
  %412 = add nsw i32 %410, %411
  store i32 %412, i32* @max, align 4
  br label %413

413:                                              ; preds = %417, %403
  %414 = load i32, i32* @x, align 4
  %415 = load i32, i32* @max, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %413
  %418 = load i8*, i8** @line, align 8
  %419 = load i32, i32* @x, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* @x, align 4
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i8, i8* %418, i64 %421
  store i8 35, i8* %422, align 1
  br label %413

423:                                              ; preds = %413
  %424 = load i32, i32* @pc, align 4
  %425 = add nsw i32 %424, 2
  store i32 %425, i32* @pc, align 4
  %426 = load i32, i32* @trace, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %423
  %429 = load i32, i32* @x, align 4
  %430 = load i32, i32* @y, align 4
  %431 = load i32, i32* @max, align 4
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %429, i32 %430, i32 %431)
  br label %433

433:                                              ; preds = %428, %423
  br label %434

434:                                              ; preds = %433, %400
  br label %307

435:                                              ; preds = %307
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* @i, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* @i, align 4
  br label %268

439:                                              ; preds = %268
  %440 = load i8*, i8** @message, align 8
  %441 = call i32 @free(i8* %440)
  %442 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @warnx(i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
