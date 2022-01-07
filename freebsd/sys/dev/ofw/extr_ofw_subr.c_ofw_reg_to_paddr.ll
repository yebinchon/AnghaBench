; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_subr.c_ofw_reg_to_paddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_subr.c_ofw_reg_to_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofw_reg_to_paddr.cell = internal global [256 x i32] zeroinitializer, align 16
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OFW_PADDR_NOT_PCI = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_SPACEMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Bus address is too large: %jx\00", align 1
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Bus size is too large: %jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_reg_to_paddr(i64 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %328

33:                                               ; preds = %5
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @OF_parent(i64 %34)
  store i64 %35, i64* %22, align 8
  %36 = load i64, i64* %22, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %328

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %6, align 4
  br label %328

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %6, align 4
  br label %328

53:                                               ; preds = %48
  %54 = load i64, i64* %22, align 8
  %55 = call i32 @get_addr_props(i64 %54, i32* %20, i32* %21, i32* %26)
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %26, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %61 = call i32 @OF_getencprop(i64 %56, i8* %60, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 0), i32 1024)
  store i32 %61, i32* %28, align 4
  %62 = load i32, i32* %28, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %6, align 4
  br label %328

66:                                               ; preds = %53
  %67 = load i32, i32* %28, align 4
  %68 = sext i32 %67 to i64
  %69 = urem i64 %68, 4
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %6, align 4
  br label %328

73:                                               ; preds = %66
  %74 = load i32, i32* %28, align 4
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %28, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %21, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %28, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %6, align 4
  br label %328

92:                                               ; preds = %73
  %93 = load i32, i32* %26, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  br label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi i32 [ %99, %95 ], [ %101, %100 ]
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %24, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %120, %102
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %112, 32
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %113, %118
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %107

123:                                              ; preds = %107
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 %129, 32
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %130, %135
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %124

140:                                              ; preds = %124
  %141 = load i64, i64* %22, align 8
  %142 = call i64 @OF_parent(i64 %141)
  store i64 %142, i64* %23, align 8
  br label %143

143:                                              ; preds = %295, %140
  %144 = load i64, i64* %23, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %301

146:                                              ; preds = %143
  %147 = load i64, i64* %23, align 8
  %148 = call i32 @get_addr_props(i64 %147, i32* %19, i32* null, i32* %27)
  %149 = load i64, i64* %22, align 8
  %150 = call i32 @OF_getencprop(i64 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 0), i32 1024)
  store i32 %150, i32* %28, align 4
  %151 = load i32, i32* %28, align 4
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %295

154:                                              ; preds = %146
  %155 = load i32, i32* %28, align 4
  %156 = sext i32 %155 to i64
  %157 = urem i64 %156, 4
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @ENXIO, align 4
  store i32 %160, i32* %6, align 4
  br label %328

161:                                              ; preds = %154
  %162 = load i32, i32* %27, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 0), align 16
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %172 = and i32 %170, %171
  store i32 %172, i32* %24, align 4
  br label %173

173:                                              ; preds = %168, %164, %161
  %174 = load i32, i32* %28, align 4
  %175 = sext i32 %174 to i64
  %176 = udiv i64 %175, 4
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %28, align 4
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %293, %281, %199, %173
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %28, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %294

182:                                              ; preds = %178
  %183 = load i32, i32* %26, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  br label %192

190:                                              ; preds = %182
  %191 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  br label %192

192:                                              ; preds = %190, %185
  %193 = phi i32 [ %189, %185 ], [ %191, %190 ]
  %194 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %195 = and i32 %193, %194
  store i32 %195, i32* %25, align 4
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %192
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %21, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %8, align 4
  br label %178

207:                                              ; preds = %192
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %208

208:                                              ; preds = %221, %207
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %20, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load i32, i32* %14, align 4
  %214 = shl i32 %213, 32
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %214, %219
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %18, align 4
  br label %208

224:                                              ; preds = %208
  %225 = load i32, i32* %27, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %233 = and i32 %231, %232
  br label %236

234:                                              ; preds = %224
  %235 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  br label %236

236:                                              ; preds = %234, %227
  %237 = phi i32 [ %233, %227 ], [ %235, %234 ]
  store i32 %237, i32* %25, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %238

238:                                              ; preds = %251, %236
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %19, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %238
  %243 = load i32, i32* %15, align 4
  %244 = shl i32 %243, 32
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %244, %249
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %242
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  br label %238

254:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %255

255:                                              ; preds = %268, %254
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %21, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %271

259:                                              ; preds = %255
  %260 = load i32, i32* %17, align 4
  %261 = shl i32 %260, 32
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds [256 x i32], [256 x i32]* @ofw_reg_to_paddr.cell, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %261, %266
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %259
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %18, align 4
  br label %255

271:                                              ; preds = %255
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %277, %278
  %280 = icmp sge i32 %276, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275, %271
  br label %178

282:                                              ; preds = %275
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %14, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load i32, i32* %15, align 4
  %287 = add nsw i32 %285, %286
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %25, align 4
  %289 = load i32, i32* @OFW_PADDR_NOT_PCI, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %282
  %292 = load i32, i32* %25, align 4
  store i32 %292, i32* %24, align 4
  br label %293

293:                                              ; preds = %291, %282
  br label %178

294:                                              ; preds = %178
  br label %295

295:                                              ; preds = %294, %153
  %296 = load i64, i64* %23, align 8
  store i64 %296, i64* %22, align 8
  %297 = load i64, i64* %22, align 8
  %298 = call i64 @OF_parent(i64 %297)
  store i64 %298, i64* %23, align 8
  %299 = load i64, i64* %22, align 8
  %300 = call i32 @get_addr_props(i64 %299, i32* %20, i32* %21, i32* %26)
  br label %143

301:                                              ; preds = %143
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %304 = icmp sle i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = call i32 @KASSERT(i32 %305, i8* %308)
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %312 = icmp sle i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = inttoptr i64 %315 to i8*
  %317 = call i32 @KASSERT(i32 %313, i8* %316)
  %318 = load i32, i32* %13, align 4
  %319 = load i32*, i32** %9, align 8
  store i32 %318, i32* %319, align 4
  %320 = load i32, i32* %16, align 4
  %321 = load i32*, i32** %10, align 8
  store i32 %320, i32* %321, align 4
  %322 = load i32*, i32** %11, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %301
  %325 = load i32, i32* %12, align 4
  %326 = load i32*, i32** %11, align 8
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %324, %301
  store i32 0, i32* %6, align 4
  br label %328

328:                                              ; preds = %327, %159, %90, %71, %64, %51, %43, %38, %31
  %329 = load i32, i32* %6, align 4
  ret i32 %329
}

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i32 @get_addr_props(i64, i32*, i32*, i32*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
