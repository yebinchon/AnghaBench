; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_parsedaymonth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_parsedaymonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yearinfo = type { i32, i32*, i32, i32, i64*, i64*, i64*, i64*, i32*, i32*, i32, i32, %struct.yearinfo* }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Failed!\0A\00", align 1
@year1 = common dso_local global i32 0, align 4
@year2 = common dso_local global i32 0, align 4
@F_YEAR = common dso_local global i32 0, align 4
@years = common dso_local global %struct.yearinfo* null, align 8
@yearinfo = common dso_local global %struct.yearinfo* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to allocate more years\00", align 1
@monthdaytab = common dso_local global i32** null, align 8
@UTCOffset = common dso_local global i32 0, align 4
@UTCOFFSET_CNY = common dso_local global i32 0, align 4
@F_MONTH = common dso_local global i32 0, align 4
@F_DAYOFMONTH = common dso_local global i32 0, align 4
@F_VARIABLE = common dso_local global i32 0, align 4
@F_ALLMONTH = common dso_local global i32 0, align 4
@F_ALLDAY = common dso_local global i32 0, align 4
@F_DAYOFWEEK = common dso_local global i32 0, align 4
@F_MODIFIERINDEX = common dso_local global i32 0, align 4
@F_MODIFIEROFFSET = common dso_local global i32 0, align 4
@F_SPECIALDAY = common dso_local global i32 0, align 4
@F_EASTER = common dso_local global i32 0, align 4
@F_PASKHA = common dso_local global i32 0, align 4
@F_CNY = common dso_local global i32 0, align 4
@F_FULLMOON = common dso_local global i32 0, align 4
@F_NEWMOON = common dso_local global i32 0, align 4
@F_MAREQUINOX = common dso_local global i32 0, align 4
@F_SEPEQUINOX = common dso_local global i32 0, align 4
@F_JUNSOLSTICE = common dso_local global i32 0, align 4
@F_DECSOLSTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Unprocessed:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parsedaymonth(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  %17 = alloca [100 x i8], align 16
  %18 = alloca [100 x i8], align 16
  %19 = alloca [100 x i8], align 16
  %20 = alloca [100 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 1, i32* %34, align 4
  %38 = load i32*, i32** %12, align 8
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* @debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %6
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %46 = load i32, i32* %22, align 4
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %48 = load i32, i32* %23, align 4
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %50 = load i32, i32* %21, align 4
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %55 = load i32, i32* %24, align 4
  %56 = call i32 @debug_determinestyle(i32 1, i8* %42, i32 %44, i8* %45, i32 %46, i8* %47, i32 %48, i8* %49, i32 %50, i8* %51, i8* %52, i8* %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %41, %6
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %67 = call i64 @determinestyle(i8* %58, i32* %59, i8* %60, i32* %22, i8* %61, i32* %23, i8* %62, i32* %21, i8* %63, i8* %64, i8* %65, i8* %66, i32* %24)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i64, i64* @debug, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  store i32 0, i32* %7, align 4
  br label %1071

75:                                               ; preds = %57
  %76 = load i64, i64* @debug, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %83 = load i32, i32* %22, align 4
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %85 = load i32, i32* %23, align 4
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %87 = load i32, i32* %21, align 4
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %91 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @debug_determinestyle(i32 0, i8* %79, i32 %81, i8* %82, i32 %83, i8* %84, i32 %85, i8* %86, i32 %87, i8* %88, i8* %89, i8* %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %78, %75
  store i32 0, i32* %26, align 4
  %95 = load i32, i32* @year1, align 4
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %1059, %94
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* @year2, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %1062

100:                                              ; preds = %96
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %35, align 4
  %103 = load i32, i32* %35, align 4
  %104 = load i32, i32* @F_YEAR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %25, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %1059

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* @F_YEAR, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %35, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %35, align 4
  %118 = load %struct.yearinfo*, %struct.yearinfo** @years, align 8
  store %struct.yearinfo* %118, %struct.yearinfo** @yearinfo, align 8
  br label %119

119:                                              ; preds = %129, %113
  %120 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %121 = icmp ne %struct.yearinfo* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %124 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %25, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %133

129:                                              ; preds = %122
  %130 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %131 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %130, i32 0, i32 12
  %132 = load %struct.yearinfo*, %struct.yearinfo** %131, align 8
  store %struct.yearinfo* %132, %struct.yearinfo** @yearinfo, align 8
  br label %119

133:                                              ; preds = %128, %119
  %134 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %135 = icmp eq %struct.yearinfo* %134, null
  br i1 %135, label %136, label %240

136:                                              ; preds = %133
  %137 = call i64 @calloc(i32 1, i32 88)
  %138 = inttoptr i64 %137 to %struct.yearinfo*
  store %struct.yearinfo* %138, %struct.yearinfo** @yearinfo, align 8
  %139 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %140 = icmp eq %struct.yearinfo* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i32, i32* %25, align 4
  %145 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %146 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.yearinfo*, %struct.yearinfo** @years, align 8
  %148 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %149 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %148, i32 0, i32 12
  store %struct.yearinfo* %147, %struct.yearinfo** %149, align 8
  %150 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  store %struct.yearinfo* %150, %struct.yearinfo** @years, align 8
  %151 = load i32**, i32*** @monthdaytab, align 8
  %152 = load i32, i32* %25, align 4
  %153 = call i64 @isleap(i32 %152)
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %157 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load i32, i32* %25, align 4
  %159 = call i32 @easter(i32 %158)
  %160 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %161 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %25, align 4
  %163 = call i32 @paskha(i32 %162)
  %164 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %165 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* @UTCOffset, align 4
  %168 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %169 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %168, i32 0, i32 4
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %172 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %171, i32 0, i32 5
  %173 = load i64*, i64** %172, align 8
  %174 = call i32 @fpom(i32 %166, i32 %167, i64* %170, i64* %173)
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* @UTCOFFSET_CNY, align 4
  %177 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %178 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %177, i32 0, i32 6
  %179 = load i64*, i64** %178, align 8
  %180 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %181 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %180, i32 0, i32 7
  %182 = load i64*, i64** %181, align 8
  %183 = call i32 @fpom(i32 %175, i32 %176, i64* %179, i64* %182)
  %184 = load i32, i32* %25, align 4
  %185 = load i32, i32* @UTCOffset, align 4
  %186 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %187 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %186, i32 0, i32 8
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %190 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %189, i32 0, i32 9
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @fequinoxsolstice(i32 %184, i32 %185, i32* %188, i32* %191)
  %193 = load i32, i32* %25, align 4
  %194 = load i32, i32* @UTCOFFSET_CNY, align 4
  %195 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %196 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @calculatesunlongitude30(i32 %193, i32 %194, i32 %197)
  %199 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %200 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %199, i32 0, i32 10
  store i32 %198, i32* %200, align 8
  store i32 0, i32* %28, align 4
  br label %201

201:                                              ; preds = %236, %143
  %202 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %203 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %202, i32 0, i32 7
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %28, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %201
  %211 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %212 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %211, i32 0, i32 7
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %28, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %219 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = icmp sgt i64 %217, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %210
  %224 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %225 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %224, i32 0, i32 7
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %28, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %226, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @floor(i64 %231)
  %233 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %234 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %233, i32 0, i32 10
  store i32 %232, i32* %234, align 8
  br label %239

235:                                              ; preds = %210
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %28, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %28, align 4
  br label %201

239:                                              ; preds = %223, %201
  br label %240

240:                                              ; preds = %239, %133
  %241 = load i32, i32* %35, align 4
  %242 = load i32, i32* @F_MONTH, align 4
  %243 = load i32, i32* @F_DAYOFMONTH, align 4
  %244 = or i32 %242, %243
  %245 = icmp eq i32 %241, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %240
  %247 = load i32, i32* %25, align 4
  %248 = load i32, i32* %22, align 4
  %249 = load i32, i32* %23, align 4
  %250 = call i64 @remember_ymd(i32 %247, i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  br label %1059

253:                                              ; preds = %246
  %254 = load i32*, i32** %9, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = load i8**, i8*** %13, align 8
  %258 = load i32, i32* %25, align 4
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 @remember(i32* %26, i32* %254, i32* %255, i32* %256, i8** %257, i32 %258, i32 %259, i32 %260, i8* null)
  br label %1059

262:                                              ; preds = %240
  %263 = load i32, i32* %35, align 4
  %264 = load i32, i32* @F_MONTH, align 4
  %265 = load i32, i32* @F_DAYOFMONTH, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @F_VARIABLE, align 4
  %268 = or i32 %266, %267
  %269 = icmp eq i32 %263, %268
  br i1 %269, label %270, label %286

270:                                              ; preds = %262
  %271 = load i32, i32* %25, align 4
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* %23, align 4
  %274 = call i64 @remember_ymd(i32 %271, i32 %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %270
  br label %1059

277:                                              ; preds = %270
  %278 = load i32*, i32** %9, align 8
  %279 = load i32*, i32** %10, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = load i8**, i8*** %13, align 8
  %282 = load i32, i32* %25, align 4
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %23, align 4
  %285 = call i32 @remember(i32* %26, i32* %278, i32* %279, i32* %280, i8** %281, i32 %282, i32 %283, i32 %284, i8* null)
  br label %1059

286:                                              ; preds = %262
  %287 = load i32, i32* %35, align 4
  %288 = load i32, i32* @F_ALLMONTH, align 4
  %289 = load i32, i32* @F_DAYOFMONTH, align 4
  %290 = or i32 %288, %289
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %316

292:                                              ; preds = %286
  store i32 1, i32* %28, align 4
  br label %293

293:                                              ; preds = %312, %292
  %294 = load i32, i32* %28, align 4
  %295 = icmp sle i32 %294, 12
  br i1 %295, label %296, label %315

296:                                              ; preds = %293
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* %23, align 4
  %300 = call i64 @remember_ymd(i32 %297, i32 %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %296
  br label %312

303:                                              ; preds = %296
  %304 = load i32*, i32** %9, align 8
  %305 = load i32*, i32** %10, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = load i8**, i8*** %13, align 8
  %308 = load i32, i32* %25, align 4
  %309 = load i32, i32* %28, align 4
  %310 = load i32, i32* %23, align 4
  %311 = call i32 @remember(i32* %26, i32* %304, i32* %305, i32* %306, i8** %307, i32 %308, i32 %309, i32 %310, i8* null)
  br label %312

312:                                              ; preds = %303, %302
  %313 = load i32, i32* %28, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %28, align 4
  br label %293

315:                                              ; preds = %293
  br label %1059

316:                                              ; preds = %286
  %317 = load i32, i32* %35, align 4
  %318 = load i32, i32* @F_ALLDAY, align 4
  %319 = load i32, i32* @F_MONTH, align 4
  %320 = or i32 %318, %319
  %321 = icmp eq i32 %317, %320
  br i1 %321, label %322, label %353

322:                                              ; preds = %316
  store i32 1, i32* %27, align 4
  br label %323

323:                                              ; preds = %349, %322
  %324 = load i32, i32* %27, align 4
  %325 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %326 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %22, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp sle i32 %324, %331
  br i1 %332, label %333, label %352

333:                                              ; preds = %323
  %334 = load i32, i32* %25, align 4
  %335 = load i32, i32* %22, align 4
  %336 = load i32, i32* %27, align 4
  %337 = call i64 @remember_ymd(i32 %334, i32 %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %333
  br label %349

340:                                              ; preds = %333
  %341 = load i32*, i32** %9, align 8
  %342 = load i32*, i32** %10, align 8
  %343 = load i32*, i32** %11, align 8
  %344 = load i8**, i8*** %13, align 8
  %345 = load i32, i32* %25, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %27, align 4
  %348 = call i32 @remember(i32* %26, i32* %341, i32* %342, i32* %343, i8** %344, i32 %345, i32 %346, i32 %347, i8* null)
  br label %349

349:                                              ; preds = %340, %339
  %350 = load i32, i32* %27, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %27, align 4
  br label %323

352:                                              ; preds = %323
  br label %1059

353:                                              ; preds = %316
  %354 = load i32, i32* %35, align 4
  %355 = load i32, i32* @F_ALLMONTH, align 4
  %356 = load i32, i32* @F_DAYOFWEEK, align 4
  %357 = or i32 %355, %356
  %358 = icmp eq i32 %354, %357
  br i1 %358, label %359, label %383

359:                                              ; preds = %353
  store i32 1, i32* %28, align 4
  br label %360

360:                                              ; preds = %379, %359
  %361 = load i32, i32* %28, align 4
  %362 = icmp sle i32 %361, 12
  br i1 %362, label %363, label %382

363:                                              ; preds = %360
  %364 = load i32, i32* %25, align 4
  %365 = load i32, i32* %28, align 4
  %366 = load i32, i32* %23, align 4
  %367 = call i64 @remember_ymd(i32 %364, i32 %365, i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %363
  br label %379

370:                                              ; preds = %363
  %371 = load i32*, i32** %9, align 8
  %372 = load i32*, i32** %10, align 8
  %373 = load i32*, i32** %11, align 8
  %374 = load i8**, i8*** %13, align 8
  %375 = load i32, i32* %25, align 4
  %376 = load i32, i32* %28, align 4
  %377 = load i32, i32* %23, align 4
  %378 = call i32 @remember(i32* %26, i32* %371, i32* %372, i32* %373, i8** %374, i32 %375, i32 %376, i32 %377, i8* null)
  br label %379

379:                                              ; preds = %370, %369
  %380 = load i32, i32* %28, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %28, align 4
  br label %360

382:                                              ; preds = %360
  br label %1059

383:                                              ; preds = %353
  %384 = load i32, i32* %35, align 4
  %385 = load i32, i32* @F_DAYOFWEEK, align 4
  %386 = load i32, i32* @F_VARIABLE, align 4
  %387 = or i32 %385, %386
  %388 = icmp eq i32 %384, %387
  br i1 %388, label %389, label %418

389:                                              ; preds = %383
  %390 = load i32, i32* %25, align 4
  %391 = call i32 @first_dayofweek_of_year(i32 %390)
  store i32 %391, i32* %29, align 4
  %392 = load i32, i32* %21, align 4
  %393 = load i32, i32* %29, align 4
  %394 = sub nsw i32 %392, %393
  %395 = add nsw i32 %394, 8
  %396 = srem i32 %395, 7
  store i32 %396, i32* %27, align 4
  br label %397

397:                                              ; preds = %414, %389
  %398 = load i32, i32* %27, align 4
  %399 = icmp sle i32 %398, 366
  br i1 %399, label %400, label %417

400:                                              ; preds = %397
  %401 = load i32, i32* %25, align 4
  %402 = load i32, i32* %27, align 4
  %403 = call i64 @remember_yd(i32 %401, i32 %402, i32* %30, i32* %31)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %400
  %406 = load i32*, i32** %9, align 8
  %407 = load i32*, i32** %10, align 8
  %408 = load i32*, i32** %11, align 8
  %409 = load i8**, i8*** %13, align 8
  %410 = load i32, i32* %25, align 4
  %411 = load i32, i32* %30, align 4
  %412 = load i32, i32* %31, align 4
  %413 = call i32 @remember(i32* %26, i32* %406, i32* %407, i32* %408, i8** %409, i32 %410, i32 %411, i32 %412, i8* null)
  br label %414

414:                                              ; preds = %405, %400
  %415 = load i32, i32* %27, align 4
  %416 = add nsw i32 %415, 7
  store i32 %416, i32* %27, align 4
  br label %397

417:                                              ; preds = %397
  br label %1059

418:                                              ; preds = %383
  %419 = load i32, i32* %35, align 4
  %420 = load i32, i32* @F_DAYOFWEEK, align 4
  %421 = load i32, i32* @F_MODIFIERINDEX, align 4
  %422 = or i32 %420, %421
  %423 = load i32, i32* @F_VARIABLE, align 4
  %424 = or i32 %422, %423
  %425 = icmp eq i32 %419, %424
  br i1 %425, label %426, label %457

426:                                              ; preds = %418
  %427 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %428 = call i32 @indextooffset(i8* %427)
  store i32 %428, i32* %32, align 4
  store i32 0, i32* %28, align 4
  br label %429

429:                                              ; preds = %453, %426
  %430 = load i32, i32* %28, align 4
  %431 = icmp sle i32 %430, 12
  br i1 %431, label %432, label %456

432:                                              ; preds = %429
  %433 = load i32, i32* %21, align 4
  %434 = load i32, i32* %32, align 4
  %435 = load i32, i32* %28, align 4
  %436 = load i32, i32* %25, align 4
  %437 = call i32 @wdayom(i32 %433, i32 %434, i32 %435, i32 %436)
  store i32 %437, i32* %27, align 4
  %438 = load i32, i32* %25, align 4
  %439 = load i32, i32* %28, align 4
  %440 = load i32, i32* %27, align 4
  %441 = call i64 @remember_ymd(i32 %438, i32 %439, i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %432
  %444 = load i32*, i32** %9, align 8
  %445 = load i32*, i32** %10, align 8
  %446 = load i32*, i32** %11, align 8
  %447 = load i8**, i8*** %13, align 8
  %448 = load i32, i32* %25, align 4
  %449 = load i32, i32* %28, align 4
  %450 = load i32, i32* %27, align 4
  %451 = call i32 @remember(i32* %26, i32* %444, i32* %445, i32* %446, i8** %447, i32 %448, i32 %449, i32 %450, i8* null)
  br label %453

452:                                              ; preds = %432
  br label %453

453:                                              ; preds = %452, %443
  %454 = load i32, i32* %28, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %28, align 4
  br label %429

456:                                              ; preds = %429
  br label %1059

457:                                              ; preds = %418
  %458 = load i32, i32* %35, align 4
  %459 = load i32, i32* @F_MONTH, align 4
  %460 = load i32, i32* @F_DAYOFWEEK, align 4
  %461 = or i32 %459, %460
  %462 = load i32, i32* @F_MODIFIERINDEX, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @F_VARIABLE, align 4
  %465 = or i32 %463, %464
  %466 = icmp eq i32 %458, %465
  br i1 %466, label %467, label %557

467:                                              ; preds = %457
  %468 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %469 = call i32 @indextooffset(i8* %468)
  store i32 %469, i32* %32, align 4
  %470 = load i32, i32* %25, align 4
  %471 = load i32, i32* %22, align 4
  %472 = call i32 @first_dayofweek_of_month(i32 %470, i32 %471)
  store i32 %472, i32* %29, align 4
  %473 = load i32, i32* %21, align 4
  %474 = load i32, i32* %29, align 4
  %475 = sub nsw i32 %473, %474
  %476 = add nsw i32 %475, 8
  %477 = srem i32 %476, 7
  store i32 %477, i32* %27, align 4
  %478 = load i32, i32* %32, align 4
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %514

480:                                              ; preds = %467
  br label %481

481:                                              ; preds = %510, %501, %480
  %482 = load i32, i32* %27, align 4
  %483 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %484 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %483, i32 0, i32 1
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %22, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = icmp sle i32 %482, %489
  br i1 %490, label %491, label %513

491:                                              ; preds = %481
  %492 = load i32, i32* %32, align 4
  %493 = add nsw i32 %492, -1
  store i32 %493, i32* %32, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %510

495:                                              ; preds = %491
  %496 = load i32, i32* %25, align 4
  %497 = load i32, i32* %22, align 4
  %498 = load i32, i32* %27, align 4
  %499 = call i64 @remember_ymd(i32 %496, i32 %497, i32 %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %510

501:                                              ; preds = %495
  %502 = load i32*, i32** %9, align 8
  %503 = load i32*, i32** %10, align 8
  %504 = load i32*, i32** %11, align 8
  %505 = load i8**, i8*** %13, align 8
  %506 = load i32, i32* %25, align 4
  %507 = load i32, i32* %22, align 4
  %508 = load i32, i32* %27, align 4
  %509 = call i32 @remember(i32* %26, i32* %502, i32* %503, i32* %504, i8** %505, i32 %506, i32 %507, i32 %508, i8* null)
  br label %481

510:                                              ; preds = %495, %491
  %511 = load i32, i32* %27, align 4
  %512 = add nsw i32 %511, 7
  store i32 %512, i32* %27, align 4
  br label %481

513:                                              ; preds = %481
  br label %1059

514:                                              ; preds = %467
  %515 = load i32, i32* %32, align 4
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %556

517:                                              ; preds = %514
  br label %518

518:                                              ; preds = %528, %517
  %519 = load i32, i32* %27, align 4
  %520 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %521 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %520, i32 0, i32 1
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %22, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = icmp sle i32 %519, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %518
  %529 = load i32, i32* %27, align 4
  %530 = add nsw i32 %529, 7
  store i32 %530, i32* %27, align 4
  br label %518

531:                                              ; preds = %518
  br label %532

532:                                              ; preds = %535, %531
  %533 = load i32, i32* %32, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %540

535:                                              ; preds = %532
  %536 = load i32, i32* %32, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %32, align 4
  %538 = load i32, i32* %27, align 4
  %539 = sub nsw i32 %538, 7
  store i32 %539, i32* %27, align 4
  br label %532

540:                                              ; preds = %532
  %541 = load i32, i32* %25, align 4
  %542 = load i32, i32* %22, align 4
  %543 = load i32, i32* %27, align 4
  %544 = call i64 @remember_ymd(i32 %541, i32 %542, i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %555

546:                                              ; preds = %540
  %547 = load i32*, i32** %9, align 8
  %548 = load i32*, i32** %10, align 8
  %549 = load i32*, i32** %11, align 8
  %550 = load i8**, i8*** %13, align 8
  %551 = load i32, i32* %25, align 4
  %552 = load i32, i32* %22, align 4
  %553 = load i32, i32* %27, align 4
  %554 = call i32 @remember(i32* %26, i32* %547, i32* %548, i32* %549, i8** %550, i32 %551, i32 %552, i32 %553, i8* null)
  br label %555

555:                                              ; preds = %546, %540
  br label %1059

556:                                              ; preds = %514
  br label %1059

557:                                              ; preds = %457
  %558 = load i32, i32* %35, align 4
  %559 = load i32, i32* @F_DAYOFWEEK, align 4
  %560 = load i32, i32* @F_MONTH, align 4
  %561 = or i32 %559, %560
  %562 = load i32, i32* @F_VARIABLE, align 4
  %563 = or i32 %561, %562
  %564 = icmp eq i32 %558, %563
  br i1 %564, label %565, label %603

565:                                              ; preds = %557
  %566 = load i32, i32* %25, align 4
  %567 = load i32, i32* %22, align 4
  %568 = call i32 @first_dayofweek_of_month(i32 %566, i32 %567)
  store i32 %568, i32* %29, align 4
  %569 = load i32, i32* %21, align 4
  %570 = load i32, i32* %29, align 4
  %571 = sub nsw i32 %569, %570
  %572 = add nsw i32 %571, 8
  %573 = srem i32 %572, 7
  store i32 %573, i32* %27, align 4
  br label %574

574:                                              ; preds = %599, %565
  %575 = load i32, i32* %27, align 4
  %576 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %577 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %576, i32 0, i32 1
  %578 = load i32*, i32** %577, align 8
  %579 = load i32, i32* %22, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = icmp sle i32 %575, %582
  br i1 %583, label %584, label %602

584:                                              ; preds = %574
  %585 = load i32, i32* %25, align 4
  %586 = load i32, i32* %22, align 4
  %587 = load i32, i32* %27, align 4
  %588 = call i64 @remember_ymd(i32 %585, i32 %586, i32 %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %599

590:                                              ; preds = %584
  %591 = load i32*, i32** %9, align 8
  %592 = load i32*, i32** %10, align 8
  %593 = load i32*, i32** %11, align 8
  %594 = load i8**, i8*** %13, align 8
  %595 = load i32, i32* %25, align 4
  %596 = load i32, i32* %22, align 4
  %597 = load i32, i32* %27, align 4
  %598 = call i32 @remember(i32* %26, i32* %591, i32* %592, i32* %593, i8** %594, i32 %595, i32 %596, i32 %597, i8* null)
  br label %599

599:                                              ; preds = %590, %584
  %600 = load i32, i32* %27, align 4
  %601 = add nsw i32 %600, 7
  store i32 %601, i32* %27, align 4
  br label %574

602:                                              ; preds = %574
  br label %1059

603:                                              ; preds = %557
  %604 = load i32, i32* %35, align 4
  %605 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %606 = xor i32 %605, -1
  %607 = and i32 %604, %606
  %608 = load i32, i32* @F_SPECIALDAY, align 4
  %609 = load i32, i32* @F_VARIABLE, align 4
  %610 = or i32 %608, %609
  %611 = load i32, i32* @F_EASTER, align 4
  %612 = or i32 %610, %611
  %613 = icmp eq i32 %607, %612
  br i1 %613, label %614, label %641

614:                                              ; preds = %603
  store i32 0, i32* %32, align 4
  %615 = load i32, i32* %35, align 4
  %616 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %614
  %620 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %621 = call i32 @parseoffset(i8* %620)
  store i32 %621, i32* %32, align 4
  br label %622

622:                                              ; preds = %619, %614
  %623 = load i32, i32* %25, align 4
  %624 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %625 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* %32, align 4
  %628 = add nsw i32 %626, %627
  %629 = call i64 @remember_yd(i32 %623, i32 %628, i32* %30, i32* %31)
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %640

631:                                              ; preds = %622
  %632 = load i32*, i32** %9, align 8
  %633 = load i32*, i32** %10, align 8
  %634 = load i32*, i32** %11, align 8
  %635 = load i8**, i8*** %13, align 8
  %636 = load i32, i32* %25, align 4
  %637 = load i32, i32* %30, align 4
  %638 = load i32, i32* %31, align 4
  %639 = call i32 @remember(i32* %26, i32* %632, i32* %633, i32* %634, i8** %635, i32 %636, i32 %637, i32 %638, i8* null)
  br label %640

640:                                              ; preds = %631, %622
  br label %1059

641:                                              ; preds = %603
  %642 = load i32, i32* %35, align 4
  %643 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %644 = xor i32 %643, -1
  %645 = and i32 %642, %644
  %646 = load i32, i32* @F_SPECIALDAY, align 4
  %647 = load i32, i32* @F_VARIABLE, align 4
  %648 = or i32 %646, %647
  %649 = load i32, i32* @F_PASKHA, align 4
  %650 = or i32 %648, %649
  %651 = icmp eq i32 %645, %650
  br i1 %651, label %652, label %679

652:                                              ; preds = %641
  store i32 0, i32* %32, align 4
  %653 = load i32, i32* %35, align 4
  %654 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %660

657:                                              ; preds = %652
  %658 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %659 = call i32 @parseoffset(i8* %658)
  store i32 %659, i32* %32, align 4
  br label %660

660:                                              ; preds = %657, %652
  %661 = load i32, i32* %25, align 4
  %662 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %663 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %32, align 4
  %666 = add nsw i32 %664, %665
  %667 = call i64 @remember_yd(i32 %661, i32 %666, i32* %30, i32* %31)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %678

669:                                              ; preds = %660
  %670 = load i32*, i32** %9, align 8
  %671 = load i32*, i32** %10, align 8
  %672 = load i32*, i32** %11, align 8
  %673 = load i8**, i8*** %13, align 8
  %674 = load i32, i32* %25, align 4
  %675 = load i32, i32* %30, align 4
  %676 = load i32, i32* %31, align 4
  %677 = call i32 @remember(i32* %26, i32* %670, i32* %671, i32* %672, i8** %673, i32 %674, i32 %675, i32 %676, i8* null)
  br label %678

678:                                              ; preds = %669, %660
  br label %1059

679:                                              ; preds = %641
  %680 = load i32, i32* %35, align 4
  %681 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %682 = xor i32 %681, -1
  %683 = and i32 %680, %682
  %684 = load i32, i32* @F_SPECIALDAY, align 4
  %685 = load i32, i32* @F_VARIABLE, align 4
  %686 = or i32 %684, %685
  %687 = load i32, i32* @F_CNY, align 4
  %688 = or i32 %686, %687
  %689 = icmp eq i32 %683, %688
  br i1 %689, label %690, label %717

690:                                              ; preds = %679
  store i32 0, i32* %32, align 4
  %691 = load i32, i32* %35, align 4
  %692 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %698

695:                                              ; preds = %690
  %696 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %697 = call i32 @parseoffset(i8* %696)
  store i32 %697, i32* %32, align 4
  br label %698

698:                                              ; preds = %695, %690
  %699 = load i32, i32* %25, align 4
  %700 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %701 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %700, i32 0, i32 10
  %702 = load i32, i32* %701, align 8
  %703 = load i32, i32* %32, align 4
  %704 = add nsw i32 %702, %703
  %705 = call i64 @remember_yd(i32 %699, i32 %704, i32* %30, i32* %31)
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %716

707:                                              ; preds = %698
  %708 = load i32*, i32** %9, align 8
  %709 = load i32*, i32** %10, align 8
  %710 = load i32*, i32** %11, align 8
  %711 = load i8**, i8*** %13, align 8
  %712 = load i32, i32* %25, align 4
  %713 = load i32, i32* %30, align 4
  %714 = load i32, i32* %31, align 4
  %715 = call i32 @remember(i32* %26, i32* %708, i32* %709, i32* %710, i8** %711, i32 %712, i32 %713, i32 %714, i8* null)
  br label %716

716:                                              ; preds = %707, %698
  br label %1059

717:                                              ; preds = %679
  %718 = load i32, i32* %35, align 4
  %719 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %720 = xor i32 %719, -1
  %721 = and i32 %718, %720
  %722 = load i32, i32* @F_SPECIALDAY, align 4
  %723 = load i32, i32* @F_VARIABLE, align 4
  %724 = or i32 %722, %723
  %725 = load i32, i32* @F_FULLMOON, align 4
  %726 = or i32 %724, %725
  %727 = icmp eq i32 %721, %726
  br i1 %727, label %728, label %784

728:                                              ; preds = %717
  store i32 0, i32* %32, align 4
  %729 = load i32, i32* %35, align 4
  %730 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %731 = and i32 %729, %730
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %736

733:                                              ; preds = %728
  %734 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %735 = call i32 @parseoffset(i8* %734)
  store i32 %735, i32* %32, align 4
  br label %736

736:                                              ; preds = %733, %728
  store i32 0, i32* %36, align 4
  br label %737

737:                                              ; preds = %780, %736
  %738 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %739 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %738, i32 0, i32 4
  %740 = load i64*, i64** %739, align 8
  %741 = load i32, i32* %36, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i64, i64* %740, i64 %742
  %744 = load i64, i64* %743, align 8
  %745 = icmp sgt i64 %744, 0
  br i1 %745, label %746, label %783

746:                                              ; preds = %737
  %747 = load i32, i32* %25, align 4
  %748 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %749 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %748, i32 0, i32 4
  %750 = load i64*, i64** %749, align 8
  %751 = load i32, i32* %36, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i64, i64* %750, i64 %752
  %754 = load i64, i64* %753, align 8
  %755 = call i32 @floor(i64 %754)
  %756 = load i32, i32* %32, align 4
  %757 = add nsw i32 %755, %756
  %758 = call i64 @remember_yd(i32 %747, i32 %757, i32* %30, i32* %31)
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %779

760:                                              ; preds = %746
  %761 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %762 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %761, i32 0, i32 4
  %763 = load i64*, i64** %762, align 8
  %764 = load i32, i32* %36, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i64, i64* %763, i64 %765
  %767 = load i64, i64* %766, align 8
  %768 = trunc i64 %767 to i32
  %769 = call i8* @floattotime(i32 %768)
  store i8* %769, i8** %33, align 8
  %770 = load i32*, i32** %9, align 8
  %771 = load i32*, i32** %10, align 8
  %772 = load i32*, i32** %11, align 8
  %773 = load i8**, i8*** %13, align 8
  %774 = load i32, i32* %25, align 4
  %775 = load i32, i32* %30, align 4
  %776 = load i32, i32* %31, align 4
  %777 = load i8*, i8** %33, align 8
  %778 = call i32 @remember(i32* %26, i32* %770, i32* %771, i32* %772, i8** %773, i32 %774, i32 %775, i32 %776, i8* %777)
  br label %779

779:                                              ; preds = %760, %746
  br label %780

780:                                              ; preds = %779
  %781 = load i32, i32* %36, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %36, align 4
  br label %737

783:                                              ; preds = %737
  br label %1059

784:                                              ; preds = %717
  %785 = load i32, i32* %35, align 4
  %786 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %787 = xor i32 %786, -1
  %788 = and i32 %785, %787
  %789 = load i32, i32* @F_SPECIALDAY, align 4
  %790 = load i32, i32* @F_VARIABLE, align 4
  %791 = or i32 %789, %790
  %792 = load i32, i32* @F_NEWMOON, align 4
  %793 = or i32 %791, %792
  %794 = icmp eq i32 %788, %793
  br i1 %794, label %795, label %851

795:                                              ; preds = %784
  store i32 0, i32* %32, align 4
  %796 = load i32, i32* %35, align 4
  %797 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %798 = and i32 %796, %797
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %803

800:                                              ; preds = %795
  %801 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %802 = call i32 @parseoffset(i8* %801)
  store i32 %802, i32* %32, align 4
  br label %803

803:                                              ; preds = %800, %795
  store i32 0, i32* %37, align 4
  br label %804

804:                                              ; preds = %847, %803
  %805 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %806 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %805, i32 0, i32 4
  %807 = load i64*, i64** %806, align 8
  %808 = load i32, i32* %37, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i64, i64* %807, i64 %809
  %811 = load i64, i64* %810, align 8
  %812 = icmp sgt i64 %811, 0
  br i1 %812, label %813, label %850

813:                                              ; preds = %804
  %814 = load i32, i32* %25, align 4
  %815 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %816 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %815, i32 0, i32 5
  %817 = load i64*, i64** %816, align 8
  %818 = load i32, i32* %37, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i64, i64* %817, i64 %819
  %821 = load i64, i64* %820, align 8
  %822 = call i32 @floor(i64 %821)
  %823 = load i32, i32* %32, align 4
  %824 = add nsw i32 %822, %823
  %825 = call i64 @remember_yd(i32 %814, i32 %824, i32* %30, i32* %31)
  %826 = icmp ne i64 %825, 0
  br i1 %826, label %827, label %846

827:                                              ; preds = %813
  %828 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %829 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %828, i32 0, i32 5
  %830 = load i64*, i64** %829, align 8
  %831 = load i32, i32* %37, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i64, i64* %830, i64 %832
  %834 = load i64, i64* %833, align 8
  %835 = trunc i64 %834 to i32
  %836 = call i8* @floattotime(i32 %835)
  store i8* %836, i8** %33, align 8
  %837 = load i32*, i32** %9, align 8
  %838 = load i32*, i32** %10, align 8
  %839 = load i32*, i32** %11, align 8
  %840 = load i8**, i8*** %13, align 8
  %841 = load i32, i32* %25, align 4
  %842 = load i32, i32* %30, align 4
  %843 = load i32, i32* %31, align 4
  %844 = load i8*, i8** %33, align 8
  %845 = call i32 @remember(i32* %26, i32* %837, i32* %838, i32* %839, i8** %840, i32 %841, i32 %842, i32 %843, i8* %844)
  br label %846

846:                                              ; preds = %827, %813
  br label %847

847:                                              ; preds = %846
  %848 = load i32, i32* %37, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %37, align 4
  br label %804

850:                                              ; preds = %804
  br label %1059

851:                                              ; preds = %784
  %852 = load i32, i32* %35, align 4
  %853 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %854 = xor i32 %853, -1
  %855 = and i32 %852, %854
  %856 = load i32, i32* @F_SPECIALDAY, align 4
  %857 = load i32, i32* @F_VARIABLE, align 4
  %858 = or i32 %856, %857
  %859 = load i32, i32* @F_MAREQUINOX, align 4
  %860 = or i32 %858, %859
  %861 = icmp eq i32 %855, %860
  br i1 %861, label %862, label %898

862:                                              ; preds = %851
  store i32 0, i32* %32, align 4
  %863 = load i32, i32* %35, align 4
  %864 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %865 = and i32 %863, %864
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %870

867:                                              ; preds = %862
  %868 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %869 = call i32 @parseoffset(i8* %868)
  store i32 %869, i32* %32, align 4
  br label %870

870:                                              ; preds = %867, %862
  %871 = load i32, i32* %25, align 4
  %872 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %873 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %872, i32 0, i32 8
  %874 = load i32*, i32** %873, align 8
  %875 = getelementptr inbounds i32, i32* %874, i64 0
  %876 = load i32, i32* %875, align 4
  %877 = load i32, i32* %32, align 4
  %878 = add nsw i32 %876, %877
  %879 = call i64 @remember_yd(i32 %871, i32 %878, i32* %30, i32* %31)
  %880 = icmp ne i64 %879, 0
  br i1 %880, label %881, label %897

881:                                              ; preds = %870
  %882 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %883 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %882, i32 0, i32 8
  %884 = load i32*, i32** %883, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 0
  %886 = load i32, i32* %885, align 4
  %887 = call i8* @floattotime(i32 %886)
  store i8* %887, i8** %33, align 8
  %888 = load i32*, i32** %9, align 8
  %889 = load i32*, i32** %10, align 8
  %890 = load i32*, i32** %11, align 8
  %891 = load i8**, i8*** %13, align 8
  %892 = load i32, i32* %25, align 4
  %893 = load i32, i32* %30, align 4
  %894 = load i32, i32* %31, align 4
  %895 = load i8*, i8** %33, align 8
  %896 = call i32 @remember(i32* %26, i32* %888, i32* %889, i32* %890, i8** %891, i32 %892, i32 %893, i32 %894, i8* %895)
  br label %897

897:                                              ; preds = %881, %870
  br label %1059

898:                                              ; preds = %851
  %899 = load i32, i32* %35, align 4
  %900 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %901 = xor i32 %900, -1
  %902 = and i32 %899, %901
  %903 = load i32, i32* @F_SPECIALDAY, align 4
  %904 = load i32, i32* @F_VARIABLE, align 4
  %905 = or i32 %903, %904
  %906 = load i32, i32* @F_SEPEQUINOX, align 4
  %907 = or i32 %905, %906
  %908 = icmp eq i32 %902, %907
  br i1 %908, label %909, label %945

909:                                              ; preds = %898
  store i32 0, i32* %32, align 4
  %910 = load i32, i32* %35, align 4
  %911 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %912 = and i32 %910, %911
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %917

914:                                              ; preds = %909
  %915 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %916 = call i32 @parseoffset(i8* %915)
  store i32 %916, i32* %32, align 4
  br label %917

917:                                              ; preds = %914, %909
  %918 = load i32, i32* %25, align 4
  %919 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %920 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %919, i32 0, i32 8
  %921 = load i32*, i32** %920, align 8
  %922 = getelementptr inbounds i32, i32* %921, i64 1
  %923 = load i32, i32* %922, align 4
  %924 = load i32, i32* %32, align 4
  %925 = add nsw i32 %923, %924
  %926 = call i64 @remember_yd(i32 %918, i32 %925, i32* %30, i32* %31)
  %927 = icmp ne i64 %926, 0
  br i1 %927, label %928, label %944

928:                                              ; preds = %917
  %929 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %930 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %929, i32 0, i32 8
  %931 = load i32*, i32** %930, align 8
  %932 = getelementptr inbounds i32, i32* %931, i64 1
  %933 = load i32, i32* %932, align 4
  %934 = call i8* @floattotime(i32 %933)
  store i8* %934, i8** %33, align 8
  %935 = load i32*, i32** %9, align 8
  %936 = load i32*, i32** %10, align 8
  %937 = load i32*, i32** %11, align 8
  %938 = load i8**, i8*** %13, align 8
  %939 = load i32, i32* %25, align 4
  %940 = load i32, i32* %30, align 4
  %941 = load i32, i32* %31, align 4
  %942 = load i8*, i8** %33, align 8
  %943 = call i32 @remember(i32* %26, i32* %935, i32* %936, i32* %937, i8** %938, i32 %939, i32 %940, i32 %941, i8* %942)
  br label %944

944:                                              ; preds = %928, %917
  br label %1059

945:                                              ; preds = %898
  %946 = load i32, i32* %35, align 4
  %947 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %948 = xor i32 %947, -1
  %949 = and i32 %946, %948
  %950 = load i32, i32* @F_SPECIALDAY, align 4
  %951 = load i32, i32* @F_VARIABLE, align 4
  %952 = or i32 %950, %951
  %953 = load i32, i32* @F_JUNSOLSTICE, align 4
  %954 = or i32 %952, %953
  %955 = icmp eq i32 %949, %954
  br i1 %955, label %956, label %992

956:                                              ; preds = %945
  store i32 0, i32* %32, align 4
  %957 = load i32, i32* %35, align 4
  %958 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %959 = and i32 %957, %958
  %960 = icmp ne i32 %959, 0
  br i1 %960, label %961, label %964

961:                                              ; preds = %956
  %962 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %963 = call i32 @parseoffset(i8* %962)
  store i32 %963, i32* %32, align 4
  br label %964

964:                                              ; preds = %961, %956
  %965 = load i32, i32* %25, align 4
  %966 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %967 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %966, i32 0, i32 9
  %968 = load i32*, i32** %967, align 8
  %969 = getelementptr inbounds i32, i32* %968, i64 0
  %970 = load i32, i32* %969, align 4
  %971 = load i32, i32* %32, align 4
  %972 = add nsw i32 %970, %971
  %973 = call i64 @remember_yd(i32 %965, i32 %972, i32* %30, i32* %31)
  %974 = icmp ne i64 %973, 0
  br i1 %974, label %975, label %991

975:                                              ; preds = %964
  %976 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %977 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %976, i32 0, i32 9
  %978 = load i32*, i32** %977, align 8
  %979 = getelementptr inbounds i32, i32* %978, i64 0
  %980 = load i32, i32* %979, align 4
  %981 = call i8* @floattotime(i32 %980)
  store i8* %981, i8** %33, align 8
  %982 = load i32*, i32** %9, align 8
  %983 = load i32*, i32** %10, align 8
  %984 = load i32*, i32** %11, align 8
  %985 = load i8**, i8*** %13, align 8
  %986 = load i32, i32* %25, align 4
  %987 = load i32, i32* %30, align 4
  %988 = load i32, i32* %31, align 4
  %989 = load i8*, i8** %33, align 8
  %990 = call i32 @remember(i32* %26, i32* %982, i32* %983, i32* %984, i8** %985, i32 %986, i32 %987, i32 %988, i8* %989)
  br label %991

991:                                              ; preds = %975, %964
  br label %1059

992:                                              ; preds = %945
  %993 = load i32, i32* %35, align 4
  %994 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %995 = xor i32 %994, -1
  %996 = and i32 %993, %995
  %997 = load i32, i32* @F_SPECIALDAY, align 4
  %998 = load i32, i32* @F_VARIABLE, align 4
  %999 = or i32 %997, %998
  %1000 = load i32, i32* @F_DECSOLSTICE, align 4
  %1001 = or i32 %999, %1000
  %1002 = icmp eq i32 %996, %1001
  br i1 %1002, label %1003, label %1039

1003:                                             ; preds = %992
  store i32 0, i32* %32, align 4
  %1004 = load i32, i32* %35, align 4
  %1005 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %1006 = and i32 %1004, %1005
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1008, label %1011

1008:                                             ; preds = %1003
  %1009 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %1010 = call i32 @parseoffset(i8* %1009)
  store i32 %1010, i32* %32, align 4
  br label %1011

1011:                                             ; preds = %1008, %1003
  %1012 = load i32, i32* %25, align 4
  %1013 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %1014 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %1013, i32 0, i32 9
  %1015 = load i32*, i32** %1014, align 8
  %1016 = getelementptr inbounds i32, i32* %1015, i64 1
  %1017 = load i32, i32* %1016, align 4
  %1018 = load i32, i32* %32, align 4
  %1019 = add nsw i32 %1017, %1018
  %1020 = call i64 @remember_yd(i32 %1012, i32 %1019, i32* %30, i32* %31)
  %1021 = icmp ne i64 %1020, 0
  br i1 %1021, label %1022, label %1038

1022:                                             ; preds = %1011
  %1023 = load %struct.yearinfo*, %struct.yearinfo** @yearinfo, align 8
  %1024 = getelementptr inbounds %struct.yearinfo, %struct.yearinfo* %1023, i32 0, i32 9
  %1025 = load i32*, i32** %1024, align 8
  %1026 = getelementptr inbounds i32, i32* %1025, i64 1
  %1027 = load i32, i32* %1026, align 4
  %1028 = call i8* @floattotime(i32 %1027)
  store i8* %1028, i8** %33, align 8
  %1029 = load i32*, i32** %9, align 8
  %1030 = load i32*, i32** %10, align 8
  %1031 = load i32*, i32** %11, align 8
  %1032 = load i8**, i8*** %13, align 8
  %1033 = load i32, i32* %25, align 4
  %1034 = load i32, i32* %30, align 4
  %1035 = load i32, i32* %31, align 4
  %1036 = load i8*, i8** %33, align 8
  %1037 = call i32 @remember(i32* %26, i32* %1029, i32* %1030, i32* %1031, i8** %1032, i32 %1033, i32 %1034, i32 %1035, i8* %1036)
  br label %1038

1038:                                             ; preds = %1022, %1011
  br label %1059

1039:                                             ; preds = %992
  %1040 = load i64, i64* @debug, align 8
  %1041 = icmp ne i64 %1040, 0
  br i1 %1041, label %1042, label %1058

1042:                                             ; preds = %1039
  %1043 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %1044 = load i8*, i8** %8, align 8
  %1045 = load i32, i32* %35, align 4
  %1046 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %1047 = load i32, i32* %22, align 4
  %1048 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1049 = load i32, i32* %23, align 4
  %1050 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1051 = load i32, i32* %21, align 4
  %1052 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %1053 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %1054 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %1055 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %1056 = load i32, i32* %24, align 4
  %1057 = call i32 @debug_determinestyle(i32 2, i8* %1044, i32 %1045, i8* %1046, i32 %1047, i8* %1048, i32 %1049, i8* %1050, i32 %1051, i8* %1052, i8* %1053, i8* %1054, i8* %1055, i32 %1056)
  br label %1058

1058:                                             ; preds = %1042, %1039
  store i32 -1, i32* %34, align 4
  br label %1059

1059:                                             ; preds = %1058, %1038, %991, %944, %897, %850, %783, %716, %678, %640, %602, %556, %555, %513, %456, %417, %382, %352, %315, %277, %276, %253, %252, %111
  %1060 = load i32, i32* %25, align 4
  %1061 = add nsw i32 %1060, 1
  store i32 %1061, i32* %25, align 4
  br label %96

1062:                                             ; preds = %96
  %1063 = load i32, i32* %34, align 4
  %1064 = icmp eq i32 %1063, -1
  br i1 %1064, label %1065, label %1069

1065:                                             ; preds = %1062
  %1066 = load i32, i32* %26, align 4
  %1067 = sub nsw i32 0, %1066
  %1068 = sub nsw i32 %1067, 1
  store i32 %1068, i32* %7, align 4
  br label %1071

1069:                                             ; preds = %1062
  %1070 = load i32, i32* %26, align 4
  store i32 %1070, i32* %7, align 4
  br label %1071

1071:                                             ; preds = %1069, %1065, %74
  %1072 = load i32, i32* %7, align 4
  ret i32 %1072
}

declare dso_local i32 @debug_determinestyle(i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @determinestyle(i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @easter(i32) #1

declare dso_local i32 @paskha(i32) #1

declare dso_local i32 @fpom(i32, i32, i64*, i64*) #1

declare dso_local i32 @fequinoxsolstice(i32, i32, i32*, i32*) #1

declare dso_local i32 @calculatesunlongitude30(i32, i32, i32) #1

declare dso_local i32 @floor(i64) #1

declare dso_local i64 @remember_ymd(i32, i32, i32) #1

declare dso_local i32 @remember(i32*, i32*, i32*, i32*, i8**, i32, i32, i32, i8*) #1

declare dso_local i32 @first_dayofweek_of_year(i32) #1

declare dso_local i64 @remember_yd(i32, i32, i32*, i32*) #1

declare dso_local i32 @indextooffset(i8*) #1

declare dso_local i32 @wdayom(i32, i32, i32, i32) #1

declare dso_local i32 @first_dayofweek_of_month(i32, i32) #1

declare dso_local i32 @parseoffset(i8*) #1

declare dso_local i8* @floattotime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
