; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@porttab = common dso_local global i16* null, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@NPORT = common dso_local global i16 0, align 2
@ISA_ORDER_SPECULATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cronyx Tau-ISA\00", align 1
@NCTAU = common dso_local global i32 0, align 4
@ct_identify.porttab = internal global [17 x i16] [i16 512, i16 544, i16 576, i16 608, i16 640, i16 672, i16 704, i16 736, i16 768, i16 800, i16 832, i16 864, i16 896, i16 928, i16 960, i16 992, i16 0], align 16
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ct_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = call i32* @devclass_find(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %10, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %288

16:                                               ; preds = %2
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @devclass_get_devices(i32* %17, i32*** %8, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i16*, i16** @porttab, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %5, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SYS_RES_IOPORT, align 4
  %33 = load i16, i16* %5, align 2
  %34 = load i16, i16* %5, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* @NPORT, align 2
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = trunc i32 %38 to i16
  %40 = load i16, i16* @NPORT, align 2
  %41 = call i32 @ct_is_free_res(i32* %31, i32 0, i32 %32, i16 signext %33, i16 signext %39, i16 signext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %74

44:                                               ; preds = %30
  %45 = load i16, i16* %5, align 2
  %46 = call i64 @ct_probe_board(i16 signext %45, i32 -1, i32 -1)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %74

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @ISA_ORDER_SPECULATIVE, align 4
  %54 = call i32* @BUS_ADD_CHILD(i32* %52, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %288

58:                                               ; preds = %49
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @device_set_desc_copy(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @device_set_driver(i32* %61, i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @SYS_RES_IOPORT, align 4
  %66 = load i16, i16* %5, align 2
  %67 = load i16, i16* @NPORT, align 2
  %68 = call i32 @bus_set_resource(i32* %64, i32 %65, i32 0, i16 signext %66, i16 signext %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NCTAU, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %77

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %48, %43
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %22

77:                                               ; preds = %72, %22
  br label %287

78:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %172, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %175

83:                                               ; preds = %79
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @SYS_RES_IOPORT, align 4
  %90 = call i64 @bus_get_resource(i32* %88, i32 %89, i32 0, i16* %5, i16* %6)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %172

93:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %144, %93
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16, i16* %5, align 2
  %108 = sext i16 %107 to i32
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %144

111:                                              ; preds = %101
  %112 = load i32**, i32*** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @SYS_RES_IOPORT, align 4
  %118 = load i16, i16* %5, align 2
  %119 = load i16, i16* %5, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16, i16* @NPORT, align 2
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %120, %122
  %124 = trunc i32 %123 to i16
  %125 = load i16, i16* @NPORT, align 2
  %126 = call i32 @ct_is_free_res(i32* %116, i32 0, i32 %117, i16 signext %118, i16 signext %124, i16 signext %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %111
  br label %144

129:                                              ; preds = %111
  %130 = load i16, i16* %5, align 2
  %131 = call i64 @ct_probe_board(i16 signext %130, i32 -1, i32 -1)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %144

134:                                              ; preds = %129
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %136
  store i16 -1, i16* %137, align 2
  %138 = load i32**, i32*** %8, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @device_set_desc_copy(i32* %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %147

144:                                              ; preds = %133, %128, %110
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %94

147:                                              ; preds = %134, %94
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %149
  %151 = load i16, i16* %150, align 2
  %152 = sext i16 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = load i32**, i32*** %8, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @device_get_parent(i32* %159)
  %161 = load i32**, i32*** %8, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @device_delete_child(i32 %160, i32* %165)
  %167 = load i32**, i32*** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  store i32* null, i32** %170, align 8
  br label %172

171:                                              ; preds = %147
  br label %172

172:                                              ; preds = %171, %154, %92
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %79

175:                                              ; preds = %79
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %280, %175
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %283

180:                                              ; preds = %176
  %181 = load i32**, i32*** %8, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %280

188:                                              ; preds = %180
  %189 = load i32**, i32*** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* @SYS_RES_IOPORT, align 4
  %195 = call i64 @bus_get_resource(i32* %193, i32 %194, i32 0, i16* %5, i16* %6)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %280

198:                                              ; preds = %188
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %256, %198
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %201
  %203 = load i16, i16* %202, align 2
  store i16 %203, i16* %5, align 2
  %204 = sext i16 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %259

206:                                              ; preds = %199
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %208
  %210 = load i16, i16* %209, align 2
  %211 = sext i16 %210 to i32
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %256

214:                                              ; preds = %206
  %215 = load i32**, i32*** %8, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @SYS_RES_IOPORT, align 4
  %221 = load i16, i16* %5, align 2
  %222 = load i16, i16* %5, align 2
  %223 = sext i16 %222 to i32
  %224 = load i16, i16* @NPORT, align 2
  %225 = sext i16 %224 to i32
  %226 = add nsw i32 %223, %225
  %227 = trunc i32 %226 to i16
  %228 = load i16, i16* @NPORT, align 2
  %229 = call i32 @ct_is_free_res(i32* %219, i32 0, i32 %220, i16 signext %221, i16 signext %227, i16 signext %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %214
  br label %256

232:                                              ; preds = %214
  %233 = load i16, i16* %5, align 2
  %234 = call i64 @ct_probe_board(i16 signext %233, i32 -1, i32 -1)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %256

237:                                              ; preds = %232
  %238 = load i32**, i32*** %8, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @SYS_RES_IOPORT, align 4
  %244 = load i16, i16* %5, align 2
  %245 = load i16, i16* @NPORT, align 2
  %246 = call i32 @bus_set_resource(i32* %242, i32 %243, i32 0, i16 signext %244, i16 signext %245)
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %248
  store i16 -1, i16* %249, align 2
  %250 = load i32**, i32*** %8, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @device_set_desc_copy(i32* %254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %259

256:                                              ; preds = %236, %231, %213
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %11, align 4
  br label %199

259:                                              ; preds = %237, %199
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [17 x i16], [17 x i16]* @ct_identify.porttab, i64 0, i64 %261
  %263 = load i16, i16* %262, align 2
  %264 = sext i16 %263 to i32
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %259
  %267 = load i32**, i32*** %8, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @device_get_parent(i32* %271)
  %273 = load i32**, i32*** %8, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @device_delete_child(i32 %272, i32* %277)
  br label %279

279:                                              ; preds = %266, %259
  br label %280

280:                                              ; preds = %279, %197, %187
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %176

283:                                              ; preds = %176
  %284 = load i32**, i32*** %8, align 8
  %285 = load i32, i32* @M_TEMP, align 4
  %286 = call i32 @free(i32** %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %77
  br label %288

288:                                              ; preds = %287, %57, %15
  ret void
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_devices(i32*, i32***, i32*) #1

declare dso_local i32 @ct_is_free_res(i32*, i32, i32, i16 signext, i16 signext, i16 signext) #1

declare dso_local i64 @ct_probe_board(i16 signext, i32, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_set_desc_copy(i32*, i8*) #1

declare dso_local i32 @device_set_driver(i32*, i32*) #1

declare dso_local i32 @bus_set_resource(i32*, i32, i32, i16 signext, i16 signext) #1

declare dso_local i64 @bus_get_resource(i32*, i32, i32, i16*, i16*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
