; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_widget_pin_patch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_widget_pin_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@HDA_CONFIG_DEFAULTCONF_SEQUENCE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_SEQUENCE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@HDA_CONFIG_DEFAULTCONF_ASSOCIATION_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_ASSOCIATION_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@HDA_CONFIG_DEFAULTCONF_MISC_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_MISC_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@HDA_CONFIG_DEFAULTCONF_COLOR_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT = common dso_local global i32 0, align 4
@HDA_COLORS = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_SHIFT = common dso_local global i32 0, align 4
@HDA_CONNECTORS = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@HDA_CONFIG_DEFAULTCONF_DEVICE_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT = common dso_local global i32 0, align 4
@HDA_DEVS = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@HDA_CONFIG_DEFAULTCONF_LOCATION_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_LOCATION_SHIFT = common dso_local global i32 0, align 4
@HDA_LOCS = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"conn\00", align 1
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK = common dso_local global i32 0, align 4
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT = common dso_local global i32 0, align 4
@HDA_CONNS = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdaa_widget_pin_patch(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlcpy(i8* %12, i8* %13, i32 256)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %311, %272, %226, %180, %2
  %17 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %312

19:                                               ; preds = %16
  %20 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %312

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strtol(i8* %25, i8** %9, i32 10)
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_SEQUENCE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_SEQUENCE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_SEQUENCE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %311

42:                                               ; preds = %24
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_ASSOCIATION_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_ASSOCIATION_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_ASSOCIATION_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %310

58:                                               ; preds = %42
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_MISC_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_MISC_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_MISC_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %309

74:                                               ; preds = %58
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %74
  %79 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_COLOR_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_COLOR_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %78
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 16
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load i32*, i32** @HDA_COLORS, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @strcasecmp(i32 %105, i8* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %119

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %97

119:                                              ; preds = %109, %97
  br label %308

120:                                              ; preds = %74
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_MASK, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %124
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %134, %124
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %162, %142
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 16
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load i32*, i32** @HDA_CONNECTORS, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = call i64 @strcasecmp(i32 %151, i8* %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  br label %165

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %143

165:                                              ; preds = %155, %143
  br label %307

166:                                              ; preds = %120
  %167 = load i8*, i8** %6, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %212

170:                                              ; preds = %166
  %171 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %3, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %3, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %170
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %3, align 4
  br label %16

188:                                              ; preds = %170
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %208, %188
  %190 = load i32, i32* %11, align 4
  %191 = icmp slt i32 %190, 16
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  %193 = load i32*, i32** @HDA_DEVS, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = call i64 @strcasecmp(i32 %197, i8* %198)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %192
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = load i32, i32* %3, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %3, align 4
  br label %211

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %189

211:                                              ; preds = %201, %189
  br label %306

212:                                              ; preds = %166
  %213 = load i8*, i8** %6, align 8
  %214 = call i64 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %258

216:                                              ; preds = %212
  %217 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_LOCATION_MASK, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %3, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %3, align 4
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %216
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_LOCATION_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_LOCATION_MASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* %3, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %3, align 4
  br label %16

234:                                              ; preds = %216
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %254, %234
  %236 = load i32, i32* %11, align 4
  %237 = icmp slt i32 %236, 64
  br i1 %237, label %238, label %257

238:                                              ; preds = %235
  %239 = load i32*, i32** @HDA_LOCS, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %7, align 8
  %245 = call i64 @strcasecmp(i32 %243, i8* %244)
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %238
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_LOCATION_SHIFT, align 4
  %250 = shl i32 %248, %249
  %251 = load i32, i32* %3, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %3, align 4
  br label %257

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  br label %235

257:                                              ; preds = %247, %235
  br label %305

258:                                              ; preds = %212
  %259 = load i8*, i8** %6, align 8
  %260 = call i64 @strcmp(i8* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %304

262:                                              ; preds = %258
  %263 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %3, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %3, align 4
  %267 = load i8*, i8** %9, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %262
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT, align 4
  %275 = shl i32 %273, %274
  %276 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* %3, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %3, align 4
  br label %16

280:                                              ; preds = %262
  store i32 0, i32* %11, align 4
  br label %281

281:                                              ; preds = %300, %280
  %282 = load i32, i32* %11, align 4
  %283 = icmp slt i32 %282, 4
  br i1 %283, label %284, label %303

284:                                              ; preds = %281
  %285 = load i32*, i32** @HDA_CONNS, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i8*, i8** %7, align 8
  %291 = call i64 @strcasecmp(i32 %289, i8* %290)
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %284
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT, align 4
  %296 = shl i32 %294, %295
  %297 = load i32, i32* %3, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %3, align 4
  br label %303

299:                                              ; preds = %284
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %11, align 4
  br label %281

303:                                              ; preds = %293, %281
  br label %304

304:                                              ; preds = %303, %258
  br label %305

305:                                              ; preds = %304, %257
  br label %306

306:                                              ; preds = %305, %211
  br label %307

307:                                              ; preds = %306, %165
  br label %308

308:                                              ; preds = %307, %119
  br label %309

309:                                              ; preds = %308, %62
  br label %310

310:                                              ; preds = %309, %46
  br label %311

311:                                              ; preds = %310, %30
  br label %16

312:                                              ; preds = %23, %16
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
