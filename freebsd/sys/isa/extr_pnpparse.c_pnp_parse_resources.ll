; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_parse_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_parse_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32 }

@MAXDEP = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No memory to parse PNP data\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"too many dependent configs (%d)\0A\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"start dependent (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"malformed resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"end dependent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnp_parse_resources(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.isa_config*, align 8
  %10 = alloca %struct.isa_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @MAXDEP, align 4
  %23 = add nsw i32 1, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @isa_get_logicalid(i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* @MAXDEP, align 4
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @malloc(i32 %35, i32 %36, i32 %39)
  %41 = inttoptr i64 %40 to %struct.isa_config*
  store %struct.isa_config* %41, %struct.isa_config** %9, align 8
  %42 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %43 = icmp eq %struct.isa_config* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %287

47:                                               ; preds = %4
  %48 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %49 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %48, i64 0
  store %struct.isa_config* %49, %struct.isa_config** %10, align 8
  %50 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %50, align 16
  store i32 1, i32* %18, align 4
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %15, align 8
  store i32* null, i32** %14, align 8
  br label %52

52:                                               ; preds = %240, %70, %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %241

55:                                               ; preds = %52
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %15, align 8
  %58 = load i32, i32* %56, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i64 @PNP_RES_TYPE(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %204

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @PNP_SRES_LEN(i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %52

71:                                               ; preds = %64
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @PNP_SRES_NUM(i32 %75)
  switch i32 %76, label %184 [
    i32 128, label %77
    i32 129, label %142
    i32 130, label %177
  ]

77:                                               ; preds = %71
  %78 = load i32*, i32** %14, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %83 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %82, i64 0
  %84 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %85 = call i32 @pnp_merge_resources(i32 %81, %struct.isa_config* %83, %struct.isa_config* %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = sub nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @pnp_parse_dependant(i32 %86, i32* %87, i32 %95, %struct.isa_config* %96, i32 %97)
  br label %99

99:                                               ; preds = %80, %77
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %14, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @MAXDEP, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @MAXDEP, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  store i32 0, i32* %7, align 4
  br label %199

111:                                              ; preds = %99
  %112 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %112, i64 %114
  store %struct.isa_config* %115, %struct.isa_config** %10, align 8
  %116 = load i32, i32* %19, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %26, i64 %123
  store i32 %121, i32* %124, align 4
  br label %129

125:                                              ; preds = %111
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %26, i64 %127
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %118
  %130 = load i32, i32* @bootverbose, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %26, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @pnp_printf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %129
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %199

142:                                              ; preds = %71
  %143 = load i32*, i32** %14, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %199

148:                                              ; preds = %142
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %151 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %150, i64 0
  %152 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %153 = call i32 @pnp_merge_resources(i32 %149, %struct.isa_config* %151, %struct.isa_config* %152)
  %154 = load i32, i32* %5, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = sub nsw i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @pnp_parse_dependant(i32 %154, i32* %155, i32 %163, %struct.isa_config* %164, i32 %165)
  store i32* null, i32** %14, align 8
  %167 = load i32, i32* @bootverbose, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %148
  %170 = load i32, i32* %17, align 4
  %171 = call i32 (i32, i8*, ...) @pnp_printf(i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %148
  %173 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %174 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %173, i64 0
  store %struct.isa_config* %174, %struct.isa_config** %10, align 8
  %175 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %176 = call i32 @bzero(%struct.isa_config* %175, i32 4)
  br label %199

177:                                              ; preds = %71
  %178 = load i32*, i32** %14, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %11, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %177
  store i32 0, i32* %7, align 4
  br label %199

184:                                              ; preds = %71
  %185 = load i32*, i32** %14, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %199

188:                                              ; preds = %184
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32*, i32** %15, align 8
  %192 = load i32, i32* %19, align 4
  %193 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i64 @pnp_parse_desc(i32 %189, i32 %190, i32* %191, i32 %192, %struct.isa_config* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %197, %188
  br label %199

199:                                              ; preds = %198, %187, %183, %172, %145, %139, %107
  %200 = load i32, i32* %19, align 4
  %201 = load i32*, i32** %15, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %15, align 8
  br label %240

204:                                              ; preds = %55
  %205 = load i32, i32* %7, align 4
  %206 = icmp slt i32 %205, 2
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 0, i32* %7, align 4
  br label %241

208:                                              ; preds = %204
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @I16(i32* %209)
  store i32 %210, i32* %19, align 4
  %211 = load i32*, i32** %15, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  store i32* %212, i32** %15, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %213, 2
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  store i32 0, i32* %7, align 4
  br label %241

219:                                              ; preds = %208
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %16, align 4
  %228 = load i32*, i32** %15, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load %struct.isa_config*, %struct.isa_config** %10, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i64 @pnp_parse_desc(i32 %226, i32 %227, i32* %228, i32 %229, %struct.isa_config* %230, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  store i32 0, i32* %7, align 4
  br label %241

235:                                              ; preds = %225, %219
  %236 = load i32, i32* %19, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %15, align 8
  br label %240

240:                                              ; preds = %235, %199
  br label %52

241:                                              ; preds = %234, %218, %207, %52
  %242 = load i32, i32* %18, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %255

244:                                              ; preds = %241
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %5, align 4
  %247 = getelementptr inbounds i32, i32* %26, i64 0
  %248 = load i32, i32* %247, align 16
  %249 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %250 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %249, i64 0
  %251 = call i32 @ISA_ADD_CONFIG(i32 %245, i32 %246, i32 %248, %struct.isa_config* %250)
  %252 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %253 = load i32, i32* @M_DEVBUF, align 4
  %254 = call i32 @free(%struct.isa_config* %252, i32 %253)
  store i32 1, i32* %21, align 4
  br label %287

255:                                              ; preds = %241
  store i32 1, i32* %20, align 4
  br label %256

256:                                              ; preds = %280, %255
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %283

260:                                              ; preds = %256
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %263 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %262, i64 0
  %264 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %264, i64 %266
  %268 = call i32 @pnp_merge_resources(i32 %261, %struct.isa_config* %263, %struct.isa_config* %267)
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %20, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %26, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %275, i64 %277
  %279 = call i32 @ISA_ADD_CONFIG(i32 %269, i32 %270, i32 %274, %struct.isa_config* %278)
  br label %280

280:                                              ; preds = %260
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %20, align 4
  br label %256

283:                                              ; preds = %256
  %284 = load %struct.isa_config*, %struct.isa_config** %9, align 8
  %285 = load i32, i32* @M_DEVBUF, align 4
  %286 = call i32 @free(%struct.isa_config* %284, i32 %285)
  store i32 0, i32* %21, align 4
  br label %287

287:                                              ; preds = %283, %244, %44
  %288 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %288)
  %289 = load i32, i32* %21, align 4
  switch i32 %289, label %291 [
    i32 0, label %290
    i32 1, label %290
  ]

290:                                              ; preds = %287, %287
  ret void

291:                                              ; preds = %287
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @isa_get_logicalid(i32) #2

declare dso_local i64 @malloc(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i64 @PNP_RES_TYPE(i32) #2

declare dso_local i32 @PNP_SRES_LEN(i32) #2

declare dso_local i32 @PNP_SRES_NUM(i32) #2

declare dso_local i32 @pnp_merge_resources(i32, %struct.isa_config*, %struct.isa_config*) #2

declare dso_local i32 @pnp_parse_dependant(i32, i32*, i32, %struct.isa_config*, i32) #2

declare dso_local i32 @pnp_printf(i32, i8*, ...) #2

declare dso_local i32 @bzero(%struct.isa_config*, i32) #2

declare dso_local i64 @pnp_parse_desc(i32, i32, i32*, i32, %struct.isa_config*, i32) #2

declare dso_local i32 @I16(i32*) #2

declare dso_local i32 @ISA_ADD_CONFIG(i32, i32, i32, %struct.isa_config*) #2

declare dso_local i32 @free(%struct.isa_config*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
