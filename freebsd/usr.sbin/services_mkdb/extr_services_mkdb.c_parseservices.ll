; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/services_mkdb/extr_services_mkdb.c_parseservices.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/services_mkdb/extr_services_mkdb.c_parseservices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot open `%s'\00", align 1
@PMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot allocate %zu bytes\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s, %zu: no protocol found\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"%s, %zu: invalid port `%s'\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"%s, %zu: port too big `%s'\00", align 1
@PROTOMAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Cannot copy string\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32*** (i8*, i32*)* @parseservices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32*** @parseservices(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %30 = load i32, i32* @PMASK, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @calloc(i32 %31, i32 8)
  %33 = bitcast i8* %32 to i32***
  store i32*** %33, i32**** %10, align 8
  %34 = icmp eq i32*** %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @PMASK, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  store i8* null, i8** %12, align 8
  br label %41

41:                                               ; preds = %285, %183, %165, %147, %106, %100, %94, %50, %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @getline(i8** %12, i64* %6, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %286

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %41

51:                                               ; preds = %45
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %60, %51
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %18, align 8
  br label %68

68:                                               ; preds = %81, %66
  %69 = load i8*, i8** %18, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %18, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isspace(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %18, align 8
  br label %68

84:                                               ; preds = %78
  %85 = load i8*, i8** %18, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %18, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 35
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %84
  br label %41

95:                                               ; preds = %89
  %96 = load i8*, i8** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i8* @getstring(i8* %96, i64 %97, i8** %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %98, i8** %14, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %41

101:                                              ; preds = %95
  %102 = load i8*, i8** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i8* @getstring(i8* %102, i64 %103, i8** %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %104, i8** %15, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %41

107:                                              ; preds = %101
  %108 = load i8*, i8** %18, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %135

110:                                              ; preds = %107
  %111 = load i8*, i8** %18, align 8
  store i8* %111, i8** %17, align 8
  br label %112

112:                                              ; preds = %125, %110
  %113 = load i8*, i8** %18, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i8*, i8** %18, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 35
  br label %122

122:                                              ; preds = %117, %112
  %123 = phi i1 [ false, %112 ], [ %121, %117 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %18, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %18, align 8
  br label %112

128:                                              ; preds = %122
  %129 = load i8*, i8** %18, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i8*, i8** %18, align 8
  store i8 0, i8* %133, align 1
  br label %134

134:                                              ; preds = %132, %128
  br label %136

135:                                              ; preds = %107
  store i8* null, i8** %17, align 8
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i8*, i8** %15, align 8
  %138 = call i8* @strchr(i8* %137, i8 signext 47)
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %16, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141, %136
  %148 = load i8*, i8** %3, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %148, i64 %149)
  br label %41

151:                                              ; preds = %141
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %16, align 8
  store i8 0, i8* %152, align 1
  store i64 0, i64* @errno, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = call i64 @strtoul(i8* %154, i8** %13, i32 0)
  store i64 %155, i64* %20, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %151
  %161 = load i8*, i8** %13, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160, %151
  %166 = load i8*, i8** %3, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %166, i64 %167, i8* %168)
  br label %41

170:                                              ; preds = %160
  %171 = load i64, i64* @errno, align 8
  %172 = load i64, i64* @ERANGE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i64, i64* %20, align 8
  %176 = load i64, i64* @ULONG_MAX, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %174, %170
  %179 = load i64, i64* %20, align 8
  %180 = load i32, i32* @PMASK, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ugt i64 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %178, %174
  %184 = load i8*, i8** %3, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %184, i64 %185, i8* %186)
  br label %41

188:                                              ; preds = %178
  %189 = load i32***, i32**** %10, align 8
  %190 = load i64, i64* %20, align 8
  %191 = getelementptr inbounds i32**, i32*** %189, i64 %190
  %192 = load i32**, i32*** %191, align 8
  %193 = icmp eq i32** %192, null
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = load i32, i32* @PROTOMAX, align 4
  %196 = call i8* @calloc(i32 %195, i32 8)
  %197 = bitcast i8* %196 to i32**
  %198 = load i32***, i32**** %10, align 8
  %199 = load i64, i64* %20, align 8
  %200 = getelementptr inbounds i32**, i32*** %198, i64 %199
  store i32** %197, i32*** %200, align 8
  %201 = load i32***, i32**** %10, align 8
  %202 = load i64, i64* %20, align 8
  %203 = getelementptr inbounds i32**, i32*** %201, i64 %202
  %204 = load i32**, i32*** %203, align 8
  %205 = icmp eq i32** %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %194
  %207 = load i32, i32* @PROTOMAX, align 4
  %208 = sext i32 %207 to i64
  %209 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %206, %194
  br label %211

211:                                              ; preds = %210, %188
  %212 = load i32*, i32** %4, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = call i64 @getprotoindex(i32* %212, i8* %213)
  store i64 %214, i64* %8, align 8
  %215 = load i32***, i32**** %10, align 8
  %216 = load i64, i64* %20, align 8
  %217 = getelementptr inbounds i32**, i32*** %215, i64 %216
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %211
  %224 = call i32* (...) @sl_init()
  %225 = load i32***, i32**** %10, align 8
  %226 = load i64, i64* %20, align 8
  %227 = getelementptr inbounds i32**, i32*** %225, i64 %226
  %228 = load i32**, i32*** %227, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds i32*, i32** %228, i64 %229
  store i32* %224, i32** %230, align 8
  store i32* %224, i32** %11, align 8
  br label %239

231:                                              ; preds = %211
  %232 = load i32***, i32**** %10, align 8
  %233 = load i64, i64* %20, align 8
  %234 = getelementptr inbounds i32**, i32*** %232, i64 %233
  %235 = load i32**, i32*** %234, align 8
  %236 = load i64, i64* %8, align 8
  %237 = getelementptr inbounds i32*, i32** %235, i64 %236
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %11, align 8
  br label %239

239:                                              ; preds = %231, %223
  %240 = load i32*, i32** %11, align 8
  %241 = load i8*, i8** %14, align 8
  %242 = call i32* @sl_find(i32* %240, i8* %241)
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %254

244:                                              ; preds = %239
  %245 = load i8*, i8** %14, align 8
  %246 = call i8* @strdup(i8* %245)
  store i8* %246, i8** %21, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %244
  %251 = load i32*, i32** %11, align 8
  %252 = load i8*, i8** %21, align 8
  %253 = call i32 @sl_add(i32* %251, i8* %252)
  br label %254

254:                                              ; preds = %250, %239
  %255 = load i8*, i8** %17, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %285

257:                                              ; preds = %254
  br label %258

258:                                              ; preds = %283, %267, %257
  %259 = call i8* @strsep(i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %259, i8** %19, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %284

261:                                              ; preds = %258
  %262 = load i8*, i8** %19, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %258

268:                                              ; preds = %261
  %269 = load i32*, i32** %11, align 8
  %270 = load i8*, i8** %19, align 8
  %271 = call i32* @sl_find(i32* %269, i8* %270)
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load i8*, i8** %19, align 8
  %275 = call i8* @strdup(i8* %274)
  store i8* %275, i8** %22, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %273
  %280 = load i32*, i32** %11, align 8
  %281 = load i8*, i8** %22, align 8
  %282 = call i32 @sl_add(i32* %280, i8* %281)
  br label %283

283:                                              ; preds = %279, %268
  br label %258

284:                                              ; preds = %258
  br label %285

285:                                              ; preds = %284, %254
  br label %41

286:                                              ; preds = %41
  %287 = load i32*, i32** %9, align 8
  %288 = call i32 @fclose(i32* %287)
  %289 = load i32***, i32**** %10, align 8
  ret i32*** %289
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @getstring(i8*, i64, i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, i8*, i64, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @getprotoindex(i32*, i8*) #1

declare dso_local i32* @sl_init(...) #1

declare dso_local i32* @sl_find(i32*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sl_add(i32*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
