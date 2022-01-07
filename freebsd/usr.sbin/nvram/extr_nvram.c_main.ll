; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nvram/extr_nvram.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nvram/extr_nvram.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.deletelist = type { i8*, %struct.deletelist*, %struct.deletelist* }

@NVRAM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"d:p\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@DEVICE_NAME = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: short read\00", align 1
@conv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: no common block\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: no such variable\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: invalid argument\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: error setting variable\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%s: short write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.deletelist*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @NVRAM_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %7, align 4
  store %struct.deletelist* null, %struct.deletelist** %16, align 8
  br label %21

21:                                               ; preds = %80, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %81

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %78 [
    i32 112, label %28
    i32 100, label %29
  ]

28:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %80

29:                                               ; preds = %26
  %30 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %31 = icmp eq %struct.deletelist* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = call i8* @malloc(i32 24)
  %34 = bitcast i8* %33 to %struct.deletelist*
  store %struct.deletelist* %34, %struct.deletelist** %16, align 8
  %35 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %36 = icmp eq %struct.deletelist* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %41 = call i32 @bzero(%struct.deletelist* %40, i32 24)
  %42 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %43 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %44 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %43, i32 0, i32 2
  store %struct.deletelist* %42, %struct.deletelist** %44, align 8
  br label %72

45:                                               ; preds = %29
  %46 = call i8* @malloc(i32 24)
  %47 = bitcast i8* %46 to %struct.deletelist*
  %48 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %49 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %48, i32 0, i32 2
  %50 = load %struct.deletelist*, %struct.deletelist** %49, align 8
  %51 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %50, i32 0, i32 1
  store %struct.deletelist* %47, %struct.deletelist** %51, align 8
  %52 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %53 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %52, i32 0, i32 2
  %54 = load %struct.deletelist*, %struct.deletelist** %53, align 8
  %55 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %54, i32 0, i32 1
  %56 = load %struct.deletelist*, %struct.deletelist** %55, align 8
  %57 = icmp eq %struct.deletelist* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %45
  %61 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %62 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %61, i32 0, i32 2
  %63 = load %struct.deletelist*, %struct.deletelist** %62, align 8
  %64 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %63, i32 0, i32 1
  %65 = load %struct.deletelist*, %struct.deletelist** %64, align 8
  %66 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %67 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %66, i32 0, i32 2
  store %struct.deletelist* %65, %struct.deletelist** %67, align 8
  %68 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %69 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %68, i32 0, i32 2
  %70 = load %struct.deletelist*, %struct.deletelist** %69, align 8
  %71 = call i32 @bzero(%struct.deletelist* %70, i32 24)
  br label %72

72:                                               ; preds = %60, %39
  %73 = load i8*, i8** @optarg, align 8
  %74 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %75 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %74, i32 0, i32 2
  %76 = load %struct.deletelist*, %struct.deletelist** %75, align 8
  %77 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  br label %80

78:                                               ; preds = %26
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %72, %28
  br label %21

81:                                               ; preds = %21
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @optind, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87
  store i8** %89, i8*** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %97 = icmp eq %struct.deletelist* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %95, %92, %81
  %101 = load i8*, i8** @DEVICE_NAME, align 8
  %102 = load i32, i32* @O_RDWR, align 4
  %103 = call i32 @open(i8* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** @DEVICE_NAME, align 8
  %108 = call i32 @err(i32 1, i8* %107)
  br label %109

109:                                              ; preds = %106, %100
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %144, %109
  %111 = load i32, i32* %10, align 4
  %112 = trunc i64 %18 to i32
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %20, i64 %117
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %18, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @read(i32 %115, i8* %118, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @EINTR, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i8*, i8** @DEVICE_NAME, align 8
  %132 = call i32 @err(i32 1, i8* %131)
  br label %133

133:                                              ; preds = %130, %126, %114
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %137
  br label %110

145:                                              ; preds = %136, %110
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %147, %18
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i8*, i8** @DEVICE_NAME, align 8
  %151 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %145
  store i32 0, i32* %11, align 4
  store i8* %20, i8** %14, align 8
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i8*, i8** %14, align 8
  %155 = getelementptr inbounds i8, i8* %20, i64 %18
  %156 = icmp ult i8* %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conv, i32 0, i32 1), align 4
  %159 = load i8*, i8** %14, align 8
  %160 = call i32 @memcpy(i32 %158, i8* %159, i32 4)
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conv, i32 0, i32 0, i32 0), align 4
  %162 = mul nsw i32 %161, 16
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conv, i32 0, i32 0, i32 1), align 4
  %164 = call i64 @strncmp(i32 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %173

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %11, align 4
  %170 = load i8*, i8** %14, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %14, align 8
  br label %153

173:                                              ; preds = %166, %153
  %174 = load i8*, i8** %14, align 8
  %175 = getelementptr inbounds i8, i8* %20, i64 %18
  %176 = icmp uge i8* %174, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = icmp sle i32 %178, 4
  br i1 %179, label %180, label %183

180:                                              ; preds = %177, %173
  %181 = load i8*, i8** @DEVICE_NAME, align 8
  %182 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  store i8* %185, i8** %15, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = sub i64 %187, 4
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %203, %192
  %194 = load i32, i32* %11, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %193
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %213

203:                                              ; preds = %196
  %204 = load i8*, i8** %15, align 8
  %205 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %204)
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i8*, i8** %15, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %15, align 8
  br label %193

213:                                              ; preds = %202, %193
  %214 = call i32 @exit(i32 0) #4
  unreachable

215:                                              ; preds = %183
  br label %216

216:                                              ; preds = %233, %215
  %217 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %218 = icmp ne %struct.deletelist* %217, null
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = load i8*, i8** %15, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %223 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @remove_var(i8* %220, i32 %221, i8* %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  %228 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %229 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %227, %219
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.deletelist*, %struct.deletelist** %16, align 8
  %235 = getelementptr inbounds %struct.deletelist, %struct.deletelist* %234, i32 0, i32 1
  %236 = load %struct.deletelist*, %struct.deletelist** %235, align 8
  store %struct.deletelist* %236, %struct.deletelist** %16, align 8
  br label %216

237:                                              ; preds = %216
  br label %238

238:                                              ; preds = %273, %237
  %239 = load i32, i32* %4, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %278

241:                                              ; preds = %238
  %242 = load i8**, i8*** %5, align 8
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @strchr(i8* %243, i8 signext 61)
  store i8* %244, i8** %14, align 8
  %245 = load i8*, i8** %14, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i8**, i8*** %5, align 8
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %247, %241
  %252 = load i8*, i8** %14, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  store i8 0, i8* %253, align 1
  %254 = load i8*, i8** %14, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %14, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = load i32, i32* %11, align 4
  %258 = load i8**, i8*** %5, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @remove_var(i8* %256, i32 %257, i8* %259)
  %261 = load i8*, i8** %15, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load i8**, i8*** %5, align 8
  %264 = load i8*, i8** %263, align 8
  %265 = load i8*, i8** %14, align 8
  %266 = call i32 @append_var(i8* %261, i32 %262, i8* %264, i8* %265)
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %272

268:                                              ; preds = %251
  %269 = load i8**, i8*** %5, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %270)
  br label %272

272:                                              ; preds = %268, %251
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %4, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %4, align 4
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i32 1
  store i8** %277, i8*** %5, align 8
  br label %238

278:                                              ; preds = %238
  store i32 0, i32* %10, align 4
  br label %279

279:                                              ; preds = %313, %278
  %280 = load i32, i32* %10, align 4
  %281 = trunc i64 %18 to i32
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %314

283:                                              ; preds = %279
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %20, i64 %286
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = sub i64 %18, %289
  %291 = trunc i64 %290 to i32
  %292 = call i32 @write(i32 %284, i8* %287, i32 %291)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %295, label %302

295:                                              ; preds = %283
  %296 = load i64, i64* @errno, align 8
  %297 = load i64, i64* @EINTR, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i8*, i8** @DEVICE_NAME, align 8
  %301 = call i32 @err(i32 1, i8* %300)
  br label %302

302:                                              ; preds = %299, %295, %283
  %303 = load i32, i32* %9, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %314

306:                                              ; preds = %302
  %307 = load i32, i32* %9, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %10, align 4
  br label %313

313:                                              ; preds = %309, %306
  br label %279

314:                                              ; preds = %305, %279
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = icmp ne i64 %316, %18
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i8*, i8** @DEVICE_NAME, align 8
  %320 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %318, %314
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @close(i32 %322)
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = load i8*, i8** @DEVICE_NAME, align 8
  %327 = call i32 @err(i32 1, i8* %326)
  br label %328

328:                                              ; preds = %325, %321
  %329 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @bzero(%struct.deletelist*, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @remove_var(i8*, i32, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @append_var(i8*, i32, i8*, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
