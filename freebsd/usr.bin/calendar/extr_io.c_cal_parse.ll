; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i64, i64, i64, i64 }

@cal_parse.d_first = internal global i32 -1, align 4
@cal_parse.count = internal global i32 0, align 4
@MAXCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LANG=\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@D_MD_ORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Easter=\00", align 1
@neaster = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Paskha=\00", align 1
@npaskha = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ChineseNewYear=\00", align 1
@ncny = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"NewMoon=\00", align 1
@nnewmoon = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"FullMoon=\00", align 1
@nfullmoon = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"MarEquinox=\00", align 1
@nmarequinox = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"SepEquinox=\00", align 1
@nsepequinox = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"JunSolstice=\00", align 1
@njunsolstice = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"DecSolstice=\00", align 1
@ndecsolstice = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"SEQUENCE=\00", align 1
@events = common dso_local global i32* null, align 8
@extradata = common dso_local global i32* null, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"Ignored: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%e %b\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%b %e\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@F_VARIABLE = common dso_local global i32 0, align 4
@doall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @cal_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_parse(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [80 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca %struct.tm, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %8, align 8
  %23 = load i32, i32* @MAXCOUNT, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @MAXCOUNT, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load i32, i32* @MAXCOUNT, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %316

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %310, %216, %200, %181, %162, %136, %102, %97, %65, %58, %40
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @getline(i8** %6, i64* %8, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %311

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 35
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @token(i8* %52, i32* %53, i32* %16)
  switch i32 %54, label %60 [
    i32 130, label %55
    i32 129, label %58
    i32 128, label %59
  ]

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %316

58:                                               ; preds = %50
  br label %41

59:                                               ; preds = %50
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %41

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %84, %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %72, %69
  %82 = phi i1 [ false, %69 ], [ %80, %72 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  br label %69

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %41

98:                                               ; preds = %87
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i32, i32* @LC_ALL, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = call i32 @setlocale(i32 %103, i8* %105)
  %107 = load i32, i32* @D_MD_ORDER, align 4
  %108 = call i8* @nl_langinfo(i32 %107)
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 100
  %112 = zext i1 %111 to i32
  store i32 %112, i32* @cal_parse.d_first, align 4
  %113 = call i32 (...) @setnnames()
  br label %41

114:                                              ; preds = %98
  %115 = load i32, i32* @neaster, align 4
  %116 = call i32 @REPLACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7, i32 %115)
  %117 = load i32, i32* @npaskha, align 4
  %118 = call i32 @REPLACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7, i32 %117)
  %119 = load i32, i32* @ncny, align 4
  %120 = call i32 @REPLACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 15, i32 %119)
  %121 = load i32, i32* @nnewmoon, align 4
  %122 = call i32 @REPLACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8, i32 %121)
  %123 = load i32, i32* @nfullmoon, align 4
  %124 = call i32 @REPLACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9, i32 %123)
  %125 = load i32, i32* @nmarequinox, align 4
  %126 = call i32 @REPLACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11, i32 %125)
  %127 = load i32, i32* @nsepequinox, align 4
  %128 = call i32 @REPLACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11, i32 %127)
  %129 = load i32, i32* @njunsolstice, align 4
  %130 = call i32 @REPLACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 12, i32 %129)
  %131 = load i32, i32* @ndecsolstice, align 4
  %132 = call i32 @REPLACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12, i32 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @strncmp(i8* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %114
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 9
  %139 = call i32 @setnsequences(i8* %138)
  br label %41

140:                                              ; preds = %114
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 9
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %159, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @cal_parse.count, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32*, i32** @events, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @event_continue(i32 %156, i8* %157)
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %147

162:                                              ; preds = %147
  br label %41

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %170, %163
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = call i64 @isspace(i8 zeroext %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load i8*, i8** %7, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = call i32 @memcpy(i8* %171, i8* %173, i32 %175)
  br label %164

177:                                              ; preds = %164
  %178 = load i8*, i8** %7, align 8
  %179 = call i8* @strchr(i8* %178, i8 signext 9)
  store i8* %179, i8** %18, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %41

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %189, %182
  %184 = load i8*, i8** %18, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 -1
  %186 = load i8, i8* %185, align 1
  %187 = call i64 @isspace(i8 zeroext %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i8*, i8** %18, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %191, i8** %18, align 8
  br label %183

192:                                              ; preds = %183
  %193 = load i8*, i8** %18, align 8
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %19, align 1
  %195 = load i8*, i8** %18, align 8
  store i8 0, i8* %195, align 1
  %196 = load i8*, i8** %7, align 8
  %197 = load i32*, i32** @extradata, align 8
  %198 = call i32 @parsedaymonth(i8* %196, i32* %32, i32* %26, i32* %29, i32* %21, i32* %197)
  store i32 %198, i32* @cal_parse.count, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %41

201:                                              ; preds = %192
  %202 = load i8, i8* %19, align 1
  %203 = load i8*, i8** %18, align 8
  store i8 %202, i8* %203, align 1
  %204 = load i32, i32* @cal_parse.count, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %201
  %207 = load i64, i64* @debug, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i32, i32* @stderr, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @fprintf(i32 %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* @cal_parse.count, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %41

217:                                              ; preds = %213
  %218 = load i32, i32* @cal_parse.count, align 4
  %219 = sub nsw i32 0, %218
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @cal_parse.count, align 4
  br label %221

221:                                              ; preds = %217, %201
  br label %222

222:                                              ; preds = %228, %221
  %223 = load i8*, i8** %18, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 9
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i8*, i8** %18, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %18, align 8
  br label %222

231:                                              ; preds = %222
  %232 = load i32, i32* @cal_parse.d_first, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* @D_MD_ORDER, align 4
  %236 = call i8* @nl_langinfo(i32 %235)
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 100
  %240 = zext i1 %239 to i32
  store i32 %240, i32* @cal_parse.d_first, align 4
  br label %241

241:                                              ; preds = %234, %231
  store i32 0, i32* %11, align 4
  br label %242

242:                                              ; preds = %307, %241
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @cal_parse.count, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %310

246:                                              ; preds = %242
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %26, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %250, 1
  %252 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 0
  store i32 %251, i32* %252, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %29, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 1
  store i32 %256, i32* %257, align 4
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %32, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 1900
  %263 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 2
  store i32 %262, i32* %263, align 8
  %264 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %265 = load i32, i32* @cal_parse.d_first, align 4
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %269 = call i32 @strftime(i8* %264, i32 80, i8* %268, %struct.tm* %20)
  %270 = load i64, i64* @debug, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %246
  %273 = load i32, i32* @stderr, align 4
  %274 = load i8*, i8** %18, align 8
  %275 = call i32 @fprintf(i32 %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %272, %246
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %32, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %26, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %29, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %290 = load i32, i32* @F_VARIABLE, align 4
  %291 = load i32, i32* %21, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 1, i32 0
  %296 = load i8*, i8** %18, align 8
  %297 = load i32*, i32** @extradata, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @event_add(i32 %280, i32 %284, i32 %288, i8* %289, i32 %295, i8* %296, i32 %301)
  %303 = load i32*, i32** @events, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %302, i32* %306, align 4
  br label %307

307:                                              ; preds = %276
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  br label %242

310:                                              ; preds = %242
  br label %41

311:                                              ; preds = %41
  %312 = load i8*, i8** %6, align 8
  %313 = call i32 @free(i8* %312)
  %314 = load i32*, i32** %4, align 8
  %315 = call i32 @fclose(i32* %314)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %316

316:                                              ; preds = %311, %55, %39
  %317 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %317)
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @token(i8*, i32*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i8* @nl_langinfo(i32) #2

declare dso_local i32 @setnnames(...) #2

declare dso_local i32 @REPLACE(i8*, i32, i32) #2

declare dso_local i32 @setnsequences(i8*) #2

declare dso_local i32 @event_continue(i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @parsedaymonth(i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @event_add(i32, i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
