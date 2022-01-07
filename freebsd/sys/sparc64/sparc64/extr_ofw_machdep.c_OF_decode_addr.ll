; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_ofw_machdep.c_OF_decode_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_ofw_machdep.c_OF_decode_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@NEXUS_BUS_SPACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"central\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ebus\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"upa\00", align 1
@PCI_IO_BUS_SPACE = common dso_local global i32 0, align 4
@PCI_MEMORY_BUS_SPACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"sbus\00", align 1
@SBUS_BUS_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_decode_addr(i64 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [50 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @OF_parent(i64 %31)
  store i64 %32, i64* %21, align 8
  %33 = load i64, i64* %21, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %5, align 4
  br label %429

37:                                               ; preds = %4
  %38 = load i64, i64* %21, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %40 = call i32 (i64, i8*, ...) @OF_getprop(i64 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %39, i64 32)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %5, align 4
  br label %429

44:                                               ; preds = %37
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 31
  store i8 0, i8* %45, align 1
  %46 = load i64, i64* %21, align 8
  %47 = call i32 (i64, i8*, ...) @OF_getprop(i64 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %18, i64 4)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 2, i32* %18, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i64, i64* %21, align 8
  %52 = call i32 (i64, i8*, ...) @OF_getprop(i64 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %19, i64 4)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %19, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %18, align 4
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %19, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61, %58, %55
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %5, align 4
  br label %429

69:                                               ; preds = %64
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %18, align 4
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %5, align 4
  br label %429

78:                                               ; preds = %73
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (i64, i8*, ...) @OF_getprop(i64 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), [50 x i32]* %24, i64 200)
  store i32 %80, i32* %30, align 4
  br label %89

81:                                               ; preds = %69
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %5, align 4
  br label %429

86:                                               ; preds = %81
  %87 = load i64, i64* %6, align 8
  %88 = call i32 (i64, i8*, ...) @OF_getprop(i64 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), [50 x i32]* %24, i64 200)
  store i32 %88, i32* %30, align 4
  br label %89

89:                                               ; preds = %86, %78
  %90 = load i32, i32* %30, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %5, align 4
  br label %429

94:                                               ; preds = %89
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = load i32, i32* %30, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %30, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %30, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %94
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %5, align 4
  br label %429

113:                                              ; preds = %106
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @phys_hi_mask_space(i8* %119, i32 %123)
  store i32 %124, i32* %27, align 4
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %125, 2
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %28, align 4
  br label %129

129:                                              ; preds = %143, %113
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @MIN(i32 2, i32 %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i32, i32* %14, align 4
  %136 = shl i32 %135, 32
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %136, %141
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %28, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %28, align 4
  br label %129

146:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  store i32 0, i32* %28, align 4
  br label %147

147:                                              ; preds = %160, %146
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i32, i32* %16, align 4
  %153 = shl i32 %152, 32
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %153, %158
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %28, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %28, align 4
  br label %147

163:                                              ; preds = %147
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %165, %166
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  store i32 0, i32* %25, align 4
  %169 = load i64, i64* %21, align 8
  store i64 %169, i64* %22, align 8
  br label %170

170:                                              ; preds = %370, %163
  %171 = load i64, i64* %21, align 8
  %172 = call i64 @OF_parent(i64 %171)
  store i64 %172, i64* %23, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %373

174:                                              ; preds = %170
  %175 = load i64, i64* %23, align 8
  %176 = call i32 (i64, i8*, ...) @OF_getprop(i64 %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %20, i64 4)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 2, i32* %20, align 4
  br label %179

179:                                              ; preds = %178, %174
  %180 = load i32, i32* %20, align 4
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %20, align 4
  %184 = icmp sgt i32 %183, 3
  br i1 %184, label %185, label %187

185:                                              ; preds = %182, %179
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %5, align 4
  br label %429

187:                                              ; preds = %182
  %188 = load i64, i64* %21, align 8
  %189 = call i32 (i64, i8*, ...) @OF_getprop(i64 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), [50 x i32]* %24, i64 200)
  store i32 %189, i32* %30, align 4
  %190 = load i32, i32* %30, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = load i64, i64* %23, align 8
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %195 = call i32 (i64, i8*, ...) @OF_getprop(i64 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %194, i64 32)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @ENXIO, align 4
  store i32 %198, i32* %5, align 4
  br label %429

199:                                              ; preds = %192
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 31
  store i8 0, i8* %200, align 1
  br label %370

201:                                              ; preds = %187
  %202 = load i64, i64* %21, align 8
  %203 = call i32 (i64, i8*, ...) @OF_getprop(i64 %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %19, i64 4)
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %19, align 4
  br label %206

206:                                              ; preds = %205, %201
  %207 = load i32, i32* %19, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %19, align 4
  %211 = icmp sgt i32 %210, 2
  br i1 %211, label %212, label %214

212:                                              ; preds = %209, %206
  %213 = load i32, i32* @ENXIO, align 4
  store i32 %213, i32* %5, align 4
  br label %429

214:                                              ; preds = %209
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = mul i64 4, %220
  %222 = load i32, i32* %30, align 4
  %223 = sext i32 %222 to i64
  %224 = udiv i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %30, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %28, align 4
  br label %226

226:                                              ; preds = %359, %214
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %30, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %362

230:                                              ; preds = %226
  %231 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @phys_hi_mask_space(i8* %231, i32 %235)
  store i32 %236, i32* %25, align 4
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %230
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %19, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %7, align 4
  br label %359

248:                                              ; preds = %230
  %249 = load i32, i32* %18, align 4
  %250 = sub nsw i32 %249, 2
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %29, align 4
  br label %253

253:                                              ; preds = %267, %248
  %254 = load i32, i32* %29, align 4
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @MIN(i32 2, i32 %255)
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = load i32, i32* %14, align 4
  %260 = shl i32 %259, 32
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %260, %265
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %258
  %268 = load i32, i32* %29, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %29, align 4
  br label %253

270:                                              ; preds = %253
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %26, align 4
  %275 = load i32, i32* %20, align 4
  %276 = sub nsw i32 %275, 2
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %7, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %29, align 4
  br label %279

279:                                              ; preds = %293, %270
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* %20, align 4
  %282 = call i32 @MIN(i32 2, i32 %281)
  %283 = icmp slt i32 %280, %282
  br i1 %283, label %284, label %296

284:                                              ; preds = %279
  %285 = load i32, i32* %15, align 4
  %286 = shl i32 %285, 32
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %286, %291
  store i32 %292, i32* %15, align 4
  br label %293

293:                                              ; preds = %284
  %294 = load i32, i32* %29, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %29, align 4
  br label %279

296:                                              ; preds = %279
  store i32 0, i32* %16, align 4
  store i32 0, i32* %29, align 4
  br label %297

297:                                              ; preds = %310, %296
  %298 = load i32, i32* %29, align 4
  %299 = load i32, i32* %19, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %297
  %302 = load i32, i32* %16, align 4
  %303 = shl i32 %302, 32
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds [50 x i32], [50 x i32]* %24, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %303, %308
  store i32 %309, i32* %16, align 4
  br label %310

310:                                              ; preds = %301
  %311 = load i32, i32* %29, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %29, align 4
  br label %297

313:                                              ; preds = %297
  %314 = load i32, i32* %14, align 4
  store i32 %314, i32* %12, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %315, %316
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %326, label %322

322:                                              ; preds = %313
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322, %313
  br label %359

327:                                              ; preds = %322
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* %12, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %11, align 4
  %334 = icmp sgt i32 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %331, %327
  %336 = load i32, i32* @ENXIO, align 4
  store i32 %336, i32* %5, align 4
  br label %429

337:                                              ; preds = %331
  %338 = load i64, i64* %23, align 8
  %339 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %340 = call i32 (i64, i8*, ...) @OF_getprop(i64 %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %339, i64 32)
  %341 = icmp eq i32 %340, -1
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* @ENXIO, align 4
  store i32 %343, i32* %5, align 4
  br label %429

344:                                              ; preds = %337
  %345 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 31
  store i8 0, i8* %345, align 1
  %346 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %347 = load i32, i32* %26, align 4
  %348 = call i32 @phys_hi_mask_space(i8* %346, i32 %347)
  store i32 %348, i32* %27, align 4
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %12, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load i32, i32* %17, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %17, align 4
  %354 = load i32, i32* %15, align 4
  %355 = load i32, i32* %12, align 4
  %356 = sub nsw i32 %354, %355
  %357 = load i32, i32* %13, align 4
  %358 = add nsw i32 %357, %356
  store i32 %358, i32* %13, align 4
  br label %362

359:                                              ; preds = %326, %240
  %360 = load i32, i32* %28, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %28, align 4
  br label %226

362:                                              ; preds = %344, %226
  %363 = load i32, i32* %28, align 4
  %364 = load i32, i32* %30, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = load i32, i32* @ENXIO, align 4
  store i32 %367, i32* %5, align 4
  br label %429

368:                                              ; preds = %362
  %369 = load i64, i64* %21, align 8
  store i64 %369, i64* %22, align 8
  br label %370

370:                                              ; preds = %368, %199
  %371 = load i32, i32* %20, align 4
  store i32 %371, i32* %18, align 4
  %372 = load i64, i64* %23, align 8
  store i64 %372, i64* %21, align 8
  br label %170

373:                                              ; preds = %170
  %374 = load i32, i32* %17, align 4
  %375 = load i32*, i32** %9, align 8
  store i32 %374, i32* %375, align 4
  %376 = load i64, i64* %22, align 8
  %377 = call i64 @OF_parent(i64 %376)
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = load i32, i32* @NEXUS_BUS_SPACE, align 4
  %381 = load i32*, i32** %8, align 8
  store i32 %380, i32* %381, align 4
  store i32 0, i32* %5, align 4
  br label %429

382:                                              ; preds = %373
  %383 = load i64, i64* %22, align 8
  %384 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %385 = call i32 (i64, i8*, ...) @OF_getprop(i64 %383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %384, i64 32)
  %386 = icmp eq i32 %385, -1
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = load i32, i32* @ENXIO, align 4
  store i32 %388, i32* %5, align 4
  br label %429

389:                                              ; preds = %382
  %390 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 31
  store i8 0, i8* %390, align 1
  %391 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %392 = call i64 @strcmp(i8* %391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %402, label %394

394:                                              ; preds = %389
  %395 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %396 = call i64 @strcmp(i8* %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %400 = call i64 @strcmp(i8* %399, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %398, %394, %389
  %403 = load i32, i32* @NEXUS_BUS_SPACE, align 4
  %404 = load i32*, i32** %8, align 8
  store i32 %403, i32* %404, align 4
  store i32 0, i32* %5, align 4
  br label %429

405:                                              ; preds = %398
  %406 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %407 = call i64 @strcmp(i8* %406, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %405
  %410 = load i32, i32* %25, align 4
  switch i32 %410, label %417 [
    i32 129, label %411
    i32 128, label %414
  ]

411:                                              ; preds = %409
  %412 = load i32, i32* @PCI_IO_BUS_SPACE, align 4
  %413 = load i32*, i32** %8, align 8
  store i32 %412, i32* %413, align 4
  store i32 0, i32* %5, align 4
  br label %429

414:                                              ; preds = %409
  %415 = load i32, i32* @PCI_MEMORY_BUS_SPACE, align 4
  %416 = load i32*, i32** %8, align 8
  store i32 %415, i32* %416, align 4
  store i32 0, i32* %5, align 4
  br label %429

417:                                              ; preds = %409
  br label %426

418:                                              ; preds = %405
  %419 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %420 = call i64 @strcmp(i8* %419, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = load i32, i32* @SBUS_BUS_SPACE, align 4
  %424 = load i32*, i32** %8, align 8
  store i32 %423, i32* %424, align 4
  store i32 0, i32* %5, align 4
  br label %429

425:                                              ; preds = %418
  br label %426

426:                                              ; preds = %425, %417
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* @ENXIO, align 4
  store i32 %428, i32* %5, align 4
  br label %429

429:                                              ; preds = %427, %422, %414, %411, %402, %387, %379, %366, %342, %335, %212, %197, %185, %111, %92, %84, %76, %67, %42, %35
  %430 = load i32, i32* %5, align 4
  ret i32 %430
}

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @phys_hi_mask_space(i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
