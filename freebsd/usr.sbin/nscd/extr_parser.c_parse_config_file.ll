; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_parse_config_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_parse_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"enable-cache\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"debug-level\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"positive-time-to-live\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"positive-confidence-threshold\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"positive-policy\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"perform-actual-lookups\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"negative-time-to-live\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"negative-confidence-threshold\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"negative-policy\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"suggested-size\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"keep-hot-count\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"check-files\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"config file parser\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"error in file %s on line %d\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_config_file(%struct.configuration* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.configuration*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca [128 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.configuration* %0, %struct.configuration** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = call i32 @TRACE_IN(i32 (%struct.configuration*, i8*, i8**, i32*)* @parse_config_file)
  %18 = load %struct.configuration*, %struct.configuration** %6, align 8
  %19 = icmp ne %struct.configuration* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 @TRACE_OUT(i32 (%struct.configuration*, i8*, i8**, i32*)* @parse_config_file)
  store i32 -1, i32* %5, align 4
  br label %372

32:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i32 0, i32 255)
  br label %35

35:                                               ; preds = %360, %352, %327, %304, %284, %257, %233, %214, %186, %162, %138, %119, %99, %79, %60, %53, %32
  %36 = load i32, i32* %16, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @fgets(i8* %39, i32 254, i32* %40)
  %42 = icmp ne i32* %41, null
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %45, label %367

45:                                               ; preds = %43
  %46 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %48 = call i32 @strbreak(i8* %46, i8** %47, i32 1024)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %35

54:                                               ; preds = %45
  %55 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %359 [
    i32 35, label %60
    i32 0, label %60
    i32 101, label %61
    i32 100, label %86
    i32 112, label %101
    i32 110, label %196
    i32 115, label %266
    i32 116, label %291
    i32 107, label %309
    i32 99, label %334
  ]

60:                                               ; preds = %54, %54
  br label %35

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %66 = load i8*, i8** %65, align 16
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @check_cachename(i8* %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %76 = load i8*, i8** %75, align 16
  %77 = call i32 @get_yesno(i8* %76)
  store i32 %77, i32* %15, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.configuration*, %struct.configuration** %6, align 8
  %81 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @enable_cache(%struct.configuration* %80, i8* %82, i32 %83)
  br label %35

85:                                               ; preds = %74, %69, %64, %61
  br label %360

86:                                               ; preds = %54
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %91 = load i8*, i8** %90, align 16
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @get_number(i8* %96, i32 0, i32 10)
  store i32 %97, i32* %15, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %35

100:                                              ; preds = %94, %89, %86
  br label %360

101:                                              ; preds = %54
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %106 = load i8*, i8** %105, align 16
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @check_cachename(i8* %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %116 = load i8*, i8** %115, align 16
  %117 = call i32 @get_number(i8* %116, i32 0, i32 -1)
  store i32 %117, i32* %15, align 4
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.configuration*, %struct.configuration** %6, align 8
  %121 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @set_positive_time_to_live(%struct.configuration* %120, i8* %122, i32 %123)
  br label %35

125:                                              ; preds = %114, %109, %104, %101
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %130 = load i8*, i8** %129, align 16
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %135 = load i8*, i8** %134, align 16
  %136 = call i32 @get_number(i8* %135, i32 1, i32 -1)
  store i32 %136, i32* %15, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.configuration*, %struct.configuration** %6, align 8
  %140 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @set_positive_confidence_threshold(%struct.configuration* %139, i8* %141, i32 %142)
  br label %35

144:                                              ; preds = %133, %128, %125
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %149 = load i8*, i8** %148, align 16
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @check_cachename(i8* %154)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %159 = load i8*, i8** %158, align 16
  %160 = call i32 @get_policy(i8* %159)
  store i32 %160, i32* %15, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.configuration*, %struct.configuration** %6, align 8
  %164 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @set_positive_policy(%struct.configuration* %163, i8* %165, i32 %166)
  br label %35

168:                                              ; preds = %157, %152, %147, %144
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %173 = load i8*, i8** %172, align 16
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %171
  %177 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @check_cachename(i8* %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %176
  %182 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %183 = load i8*, i8** %182, align 16
  %184 = call i32 @get_yesno(i8* %183)
  store i32 %184, i32* %15, align 4
  %185 = icmp ne i32 %184, -1
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.configuration*, %struct.configuration** %6, align 8
  %188 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @set_perform_actual_lookups(%struct.configuration* %187, i8* %189, i32 %190)
  br label %35

192:                                              ; preds = %181, %176, %171, %168
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %360

196:                                              ; preds = %54
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %220

199:                                              ; preds = %196
  %200 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %201 = load i8*, i8** %200, align 16
  %202 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @check_cachename(i8* %206)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %211 = load i8*, i8** %210, align 16
  %212 = call i32 @get_number(i8* %211, i32 0, i32 -1)
  store i32 %212, i32* %15, align 4
  %213 = icmp ne i32 %212, -1
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.configuration*, %struct.configuration** %6, align 8
  %216 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @set_negative_time_to_live(%struct.configuration* %215, i8* %217, i32 %218)
  br label %35

220:                                              ; preds = %209, %204, %199, %196
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %225 = load i8*, i8** %224, align 16
  %226 = call i32 @strcmp(i8* %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %230 = load i8*, i8** %229, align 16
  %231 = call i32 @get_number(i8* %230, i32 1, i32 -1)
  store i32 %231, i32* %15, align 4
  %232 = icmp ne i32 %231, -1
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.configuration*, %struct.configuration** %6, align 8
  %235 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = call i32 @set_negative_confidence_threshold(%struct.configuration* %234, i8* %236, i32 %237)
  br label %35

239:                                              ; preds = %228, %223, %220
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %242, label %263

242:                                              ; preds = %239
  %243 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %244 = load i8*, i8** %243, align 16
  %245 = call i32 @strcmp(i8* %244, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %242
  %248 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @check_cachename(i8* %249)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %254 = load i8*, i8** %253, align 16
  %255 = call i32 @get_policy(i8* %254)
  store i32 %255, i32* %15, align 4
  %256 = icmp ne i32 %255, -1
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load %struct.configuration*, %struct.configuration** %6, align 8
  %259 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @set_negative_policy(%struct.configuration* %258, i8* %260, i32 %261)
  br label %35

263:                                              ; preds = %252, %247, %242, %239
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  br label %360

266:                                              ; preds = %54
  %267 = load i32, i32* %13, align 4
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %271 = load i8*, i8** %270, align 16
  %272 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %290

274:                                              ; preds = %269
  %275 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @check_cachename(i8* %276)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %274
  %280 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %281 = load i8*, i8** %280, align 16
  %282 = call i32 @get_number(i8* %281, i32 1, i32 -1)
  store i32 %282, i32* %15, align 4
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load %struct.configuration*, %struct.configuration** %6, align 8
  %286 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @set_suggested_size(%struct.configuration* %285, i8* %287, i32 %288)
  br label %35

290:                                              ; preds = %279, %274, %269, %266
  br label %360

291:                                              ; preds = %54
  %292 = load i32, i32* %13, align 4
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %294, label %308

294:                                              ; preds = %291
  %295 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %296 = load i8*, i8** %295, align 16
  %297 = call i32 @strcmp(i8* %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %294
  %300 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @get_number(i8* %301, i32 1, i32 -1)
  store i32 %302, i32* %15, align 4
  %303 = icmp ne i32 %302, -1
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load %struct.configuration*, %struct.configuration** %6, align 8
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @set_threads_num(%struct.configuration* %305, i32 %306)
  br label %35

308:                                              ; preds = %299, %294, %291
  br label %360

309:                                              ; preds = %54
  %310 = load i32, i32* %13, align 4
  %311 = icmp eq i32 %310, 3
  br i1 %311, label %312, label %333

312:                                              ; preds = %309
  %313 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %314 = load i8*, i8** %313, align 16
  %315 = call i32 @strcmp(i8* %314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %312
  %318 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @check_cachename(i8* %319)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %317
  %323 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %324 = load i8*, i8** %323, align 16
  %325 = call i32 @get_number(i8* %324, i32 0, i32 -1)
  store i32 %325, i32* %15, align 4
  %326 = icmp ne i32 %325, -1
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = load %struct.configuration*, %struct.configuration** %6, align 8
  %329 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* %15, align 4
  %332 = call i32 @set_keep_hot_count(%struct.configuration* %328, i8* %330, i32 %331)
  br label %35

333:                                              ; preds = %322, %317, %312, %309
  br label %360

334:                                              ; preds = %54
  %335 = load i32, i32* %13, align 4
  %336 = icmp eq i32 %335, 3
  br i1 %336, label %337, label %358

337:                                              ; preds = %334
  %338 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 0
  %339 = load i8*, i8** %338, align 16
  %340 = call i32 @strcmp(i8* %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %358

342:                                              ; preds = %337
  %343 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @check_cachename(i8* %344)
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %342
  %348 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 2
  %349 = load i8*, i8** %348, align 16
  %350 = call i32 @get_yesno(i8* %349)
  store i32 %350, i32* %15, align 4
  %351 = icmp ne i32 %350, -1
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.configuration*, %struct.configuration** %6, align 8
  %354 = getelementptr inbounds [128 x i8*], [128 x i8*]* %12, i64 0, i64 1
  %355 = load i8*, i8** %354, align 8
  %356 = load i32, i32* %15, align 4
  %357 = call i32 @check_files(%struct.configuration* %353, i8* %355, i32 %356)
  br label %35

358:                                              ; preds = %347, %342, %337, %334
  br label %360

359:                                              ; preds = %54
  br label %360

360:                                              ; preds = %359, %358, %333, %308, %290, %265, %195, %100, %85
  %361 = load i8*, i8** %7, align 8
  %362 = load i32, i32* %14, align 4
  %363 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %361, i32 %362)
  %364 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %364, align 8
  %365 = load i32, i32* %14, align 4
  %366 = load i32*, i32** %9, align 8
  store i32 %365, i32* %366, align 4
  store i32 -1, i32* %16, align 4
  br label %35

367:                                              ; preds = %43
  %368 = load i32*, i32** %10, align 8
  %369 = call i32 @fclose(i32* %368)
  %370 = call i32 @TRACE_OUT(i32 (%struct.configuration*, i8*, i8**, i32*)* @parse_config_file)
  %371 = load i32, i32* %16, align 4
  store i32 %371, i32* %5, align 4
  br label %372

372:                                              ; preds = %367, %30
  %373 = load i32, i32* %5, align 4
  ret i32 %373
}

declare dso_local i32 @TRACE_IN(i32 (%struct.configuration*, i8*, i8**, i32*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.configuration*, i8*, i8**, i32*)*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strbreak(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_cachename(i8*) #1

declare dso_local i32 @get_yesno(i8*) #1

declare dso_local i32 @enable_cache(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @get_number(i8*, i32, i32) #1

declare dso_local i32 @set_positive_time_to_live(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_positive_confidence_threshold(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @get_policy(i8*) #1

declare dso_local i32 @set_positive_policy(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_perform_actual_lookups(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_negative_time_to_live(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_negative_confidence_threshold(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_negative_policy(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_suggested_size(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @set_threads_num(%struct.configuration*, i32) #1

declare dso_local i32 @set_keep_hot_count(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @check_files(%struct.configuration*, i8*, i32) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
