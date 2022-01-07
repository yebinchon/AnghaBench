; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_encdec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_encdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32 }
%struct.cryptodesc = type { i32, i32, i8*, i64, i64 }
%struct.glxsb_session = type { i8*, i32 }
%struct.glxsb_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64 }

@SB_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GLXSB_MAX_AES_LEN = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@SB_CTL_ENC = common dso_local global i64 0, align 8
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@SB_CTL_DEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*, %struct.cryptodesc*, %struct.glxsb_session*, %struct.glxsb_softc*)* @glxsb_crypto_encdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_crypto_encdec(%struct.cryptop* %0, %struct.cryptodesc* %1, %struct.glxsb_session* %2, %struct.glxsb_softc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.glxsb_session*, align 8
  %9 = alloca %struct.glxsb_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.cryptop* %0, %struct.cryptop** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store %struct.glxsb_session* %2, %struct.glxsb_session** %8, align 8
  store %struct.glxsb_softc* %3, %struct.glxsb_softc** %9, align 8
  %24 = load i32, i32* @SB_AES_BLOCK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %29 = icmp eq %struct.cryptodesc* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %32 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SB_AES_BLOCK_SIZE, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %4
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %269

39:                                               ; preds = %30
  %40 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %41 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %49 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %46, %45 ], [ %50, %47 ]
  store i32 %52, i32* %20, align 4
  %53 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %54 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  %57 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %58 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %11, align 8
  %64 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %65 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %12, align 8
  %68 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %69 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  store i64 %74, i64* %13, align 8
  %75 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %76 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %51
  %82 = load i64, i64* @SB_CTL_ENC, align 8
  store i64 %82, i64* %22, align 8
  %83 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %84 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %91 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = trunc i64 %25 to i32
  %94 = call i32 @bcopy(i8* %92, i8* %27, i32 %93)
  br label %101

95:                                               ; preds = %81
  %96 = load %struct.glxsb_session*, %struct.glxsb_session** %8, align 8
  %97 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = trunc i64 %25 to i32
  %100 = call i32 @bcopy(i8* %98, i8* %27, i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %103 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %110 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %113 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %116 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %25 to i32
  %119 = call i32 @crypto_copyback(i32 %111, i32 %114, i64 %117, i32 %118, i8* %27)
  br label %120

120:                                              ; preds = %108, %101
  br label %148

121:                                              ; preds = %51
  %122 = load i64, i64* @SB_CTL_DEC, align 8
  store i64 %122, i64* %22, align 8
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %131 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = trunc i64 %25 to i32
  %134 = call i32 @bcopy(i8* %132, i8* %27, i32 %133)
  br label %147

135:                                              ; preds = %121
  %136 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %137 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %140 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %143 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %25 to i32
  %146 = call i32 @crypto_copydata(i32 %138, i32 %141, i64 %144, i32 %145, i8* %27)
  br label %147

147:                                              ; preds = %135, %129
  br label %148

148:                                              ; preds = %147, %120
  store i32 0, i32* %21, align 4
  %149 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %150 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %19, align 4
  store i8* %27, i8** %16, align 8
  br label %152

152:                                              ; preds = %260, %148
  %153 = load i32, i32* %19, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %261

155:                                              ; preds = %152
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  br label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %19, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %18, align 4
  %165 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %166 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %169 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %172 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* %18, align 4
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @crypto_copydata(i32 %167, i32 %170, i64 %176, i32 %177, i8* %178)
  %180 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %181 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %182 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %181, i32 0, i32 0
  %183 = call i32 @glxsb_dma_pre_op(%struct.glxsb_softc* %180, %struct.TYPE_3__* %182)
  %184 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %185 = load i64, i64* %22, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load %struct.glxsb_session*, %struct.glxsb_session** %8, align 8
  %189 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = call i32 @glxsb_aes(%struct.glxsb_softc* %184, i64 %185, i64 %186, i64 %187, i32 %190, i32 %191, i8* %27)
  store i32 %192, i32* %17, align 4
  %193 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %194 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %195 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %194, i32 0, i32 0
  %196 = call i32 @glxsb_dma_post_op(%struct.glxsb_softc* %193, %struct.TYPE_3__* %195)
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %163
  %200 = load i32, i32* %17, align 4
  store i32 %200, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %269

201:                                              ; preds = %163
  %202 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %203 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %206 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %209 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = load i32, i32* %18, align 4
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @crypto_copyback(i32 %204, i32 %207, i64 %213, i32 %214, i8* %215)
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = sub nsw i32 %221, %220
  store i32 %222, i32* %19, align 4
  %223 = load i32, i32* %19, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %201
  %226 = load %struct.glxsb_session*, %struct.glxsb_session** %8, align 8
  %227 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %16, align 8
  br label %229

229:                                              ; preds = %225, %201
  %230 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %231 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %229
  %237 = load i8*, i8** %11, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = sub i64 0, %25
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = load i8*, i8** %16, align 8
  %244 = trunc i64 %25 to i32
  %245 = call i32 @bcopy(i8* %242, i8* %243, i32 %244)
  br label %260

246:                                              ; preds = %229
  %247 = load i32, i32* %19, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load i8*, i8** %10, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = sub i64 0, %25
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  %256 = load i8*, i8** %16, align 8
  %257 = trunc i64 %25 to i32
  %258 = call i32 @bcopy(i8* %255, i8* %256, i32 %257)
  br label %259

259:                                              ; preds = %249, %246
  br label %260

260:                                              ; preds = %259, %236
  br label %152

261:                                              ; preds = %152
  %262 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %263 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load i32, i32* %20, align 4
  %267 = mul nsw i32 %266, 2
  %268 = call i32 @bzero(i8* %265, i32 %267)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %269

269:                                              ; preds = %261, %199, %37
  %270 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @glxsb_dma_pre_op(%struct.glxsb_softc*, %struct.TYPE_3__*) #2

declare dso_local i32 @glxsb_aes(%struct.glxsb_softc*, i64, i64, i64, i32, i32, i8*) #2

declare dso_local i32 @glxsb_dma_post_op(%struct.glxsb_softc*, %struct.TYPE_3__*) #2

declare dso_local i32 @bzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
