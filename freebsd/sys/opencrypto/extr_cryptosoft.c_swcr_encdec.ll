; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_encdec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_encdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i32, i64, i32, i8*, i32, i32, i32, i32 }
%struct.swcr_data = type { i32, %struct.enc_xform* }
%struct.enc_xform = type { i32, i32, i32 (i32*, i32, i32)*, i32 (i32, i8*)*, i32 (i32, i8*)*, i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)*, i32 (i32, i8*)*, i32 (i32*)* }
%struct.uio = type { i32, %struct.iovec* }
%struct.iovec = type { i32, i64 }
%struct.mbuf = type { i32 }

@EALG_MAX_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_AES_ICM = common dso_local global i64 0, align 8
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptodesc*, %struct.swcr_data*, i64, i32)* @swcr_encdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_encdec(%struct.cryptodesc* %0, %struct.swcr_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca %struct.swcr_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.enc_xform*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.uio*, align 8
  %25 = alloca %struct.uio, align 8
  %26 = alloca [4 x %struct.iovec], align 16
  %27 = alloca %struct.iovec*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store %struct.cryptodesc* %0, %struct.cryptodesc** %6, align 8
  store %struct.swcr_data* %1, %struct.swcr_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %36 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %10, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %40 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %12, align 8
  %43 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %15, align 8
  store i32 0, i32* %30, align 4
  %46 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %47 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %46, i32 0, i32 1
  %48 = load %struct.enc_xform*, %struct.enc_xform** %47, align 8
  store %struct.enc_xform* %48, %struct.enc_xform** %16, align 8
  %49 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %50 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %20, align 4
  %52 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %53 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  %55 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %56 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %20, align 4
  %59 = srem i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %4
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %680

63:                                               ; preds = %4
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CRYPTO_AES_ICM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %71 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %680

78:                                               ; preds = %69, %63
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %80 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %78
  %86 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %87 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %94 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @bcopy(i8* %95, i8* %39, i32 %96)
  br label %101

98:                                               ; preds = %85
  %99 = load i32, i32* %23, align 4
  %100 = call i32 @arc4rand(i8* %39, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %103 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %112 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %23, align 4
  %115 = call i32 @crypto_copyback(i32 %109, i64 %110, i32 %113, i32 %114, i8* %39)
  br label %116

116:                                              ; preds = %108, %101
  br label %139

117:                                              ; preds = %78
  %118 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %119 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %126 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @bcopy(i8* %127, i8* %39, i32 %128)
  br label %138

130:                                              ; preds = %117
  %131 = load i32, i32* %9, align 4
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %134 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %23, align 4
  %137 = call i32 @crypto_copydata(i32 %131, i64 %132, i32 %135, i32 %136, i8* %39)
  br label %138

138:                                              ; preds = %130, %124
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %141 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %139
  %147 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %148 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %153 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %152, i32 0, i32 8
  %154 = load i32 (i32*)*, i32 (i32*)** %153, align 8
  %155 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %156 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %155, i32 0, i32 0
  %157 = call i32 %154(i32* %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %160 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %159, i32 0, i32 2
  %161 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %160, align 8
  %162 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %163 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %162, i32 0, i32 0
  %164 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %165 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %168 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = sdiv i32 %169, 8
  %171 = call i32 %161(i32* %163, i32 %166, i32 %170)
  store i32 %171, i32* %32, align 4
  %172 = load i32, i32* %32, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %158
  %175 = load i32, i32* %32, align 4
  store i32 %175, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %680

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %139
  %178 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %26, i64 0, i64 0
  store %struct.iovec* %178, %struct.iovec** %27, align 8
  %179 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %26, i64 0, i64 0
  %180 = call i32 @nitems(%struct.iovec* %179)
  store i32 %180, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store %struct.uio* %25, %struct.uio** %24, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %177
  %186 = load i64, i64* %8, align 8
  %187 = inttoptr i64 %186 to %struct.mbuf*
  %188 = call i32 @crypto_mbuftoiov(%struct.mbuf* %187, %struct.iovec** %27, i32* %28, i32* %29)
  store i32 %188, i32* %30, align 4
  %189 = load i32, i32* %30, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %30, align 4
  store i32 %192, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %680

193:                                              ; preds = %185
  %194 = load %struct.iovec*, %struct.iovec** %27, align 8
  %195 = load %struct.uio*, %struct.uio** %24, align 8
  %196 = getelementptr inbounds %struct.uio, %struct.uio* %195, i32 0, i32 1
  store %struct.iovec* %194, %struct.iovec** %196, align 8
  %197 = load i32, i32* %28, align 4
  %198 = load %struct.uio*, %struct.uio** %24, align 8
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %229

200:                                              ; preds = %177
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @CRYPTO_F_IOV, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i64, i64* %8, align 8
  %207 = inttoptr i64 %206 to %struct.uio*
  store %struct.uio* %207, %struct.uio** %24, align 8
  br label %228

208:                                              ; preds = %200
  %209 = load i64, i64* %8, align 8
  %210 = load %struct.iovec*, %struct.iovec** %27, align 8
  %211 = getelementptr inbounds %struct.iovec, %struct.iovec* %210, i64 0
  %212 = getelementptr inbounds %struct.iovec, %struct.iovec* %211, i32 0, i32 1
  store i64 %209, i64* %212, align 8
  %213 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %214 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %217 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %215, %218
  %220 = load %struct.iovec*, %struct.iovec** %27, align 8
  %221 = getelementptr inbounds %struct.iovec, %struct.iovec* %220, i64 0
  %222 = getelementptr inbounds %struct.iovec, %struct.iovec* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load %struct.iovec*, %struct.iovec** %27, align 8
  %224 = load %struct.uio*, %struct.uio** %24, align 8
  %225 = getelementptr inbounds %struct.uio, %struct.uio* %224, i32 0, i32 1
  store %struct.iovec* %223, %struct.iovec** %225, align 8
  %226 = load %struct.uio*, %struct.uio** %24, align 8
  %227 = getelementptr inbounds %struct.uio, %struct.uio* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %208, %205
  br label %229

229:                                              ; preds = %228, %193
  store i8* %39, i8** %13, align 8
  %230 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %231 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %230, i32 0, i32 7
  %232 = load i32 (i32, i8*)*, i32 (i32, i8*)** %231, align 8
  %233 = icmp ne i32 (i32, i8*)* %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %236 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %235, i32 0, i32 7
  %237 = load i32 (i32, i8*)*, i32 (i32, i8*)** %236, align 8
  %238 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %239 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 %237(i32 %240, i8* %39)
  br label %242

242:                                              ; preds = %234, %229
  %243 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %244 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %22, align 4
  %246 = load %struct.uio*, %struct.uio** %24, align 8
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @cuio_getptr(%struct.uio* %246, i32 %247, i32* %19)
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %21, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @EINVAL, align 4
  store i32 %252, i32* %30, align 4
  br label %671

253:                                              ; preds = %242
  %254 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %255 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  store i32 %256, i32* %17, align 4
  br label %257

257:                                              ; preds = %669, %253
  %258 = load i32, i32* %17, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %670

260:                                              ; preds = %257
  %261 = load %struct.uio*, %struct.uio** %24, align 8
  %262 = getelementptr inbounds %struct.uio, %struct.uio* %261, i32 0, i32 1
  %263 = load %struct.iovec*, %struct.iovec** %262, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.iovec, %struct.iovec* %263, i64 %265
  %267 = getelementptr inbounds %struct.iovec, %struct.iovec* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %269, %270
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %420

273:                                              ; preds = %260
  %274 = load %struct.uio*, %struct.uio** %24, align 8
  %275 = getelementptr inbounds %struct.uio, %struct.uio* %274, i32 0, i32 1
  %276 = load %struct.iovec*, %struct.iovec** %275, align 8
  %277 = load i32, i32* %21, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.iovec, %struct.iovec* %276, i64 %278
  %280 = getelementptr inbounds %struct.iovec, %struct.iovec* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %19, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %420

284:                                              ; preds = %273
  %285 = load %struct.uio*, %struct.uio** %24, align 8
  %286 = load i32, i32* %22, align 4
  %287 = load i32, i32* %20, align 4
  %288 = call i32 @cuio_copydata(%struct.uio* %285, i32 %286, i32 %287, i8* %42)
  %289 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %290 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %289, i32 0, i32 7
  %291 = load i32 (i32, i8*)*, i32 (i32, i8*)** %290, align 8
  %292 = icmp ne i32 (i32, i8*)* %291, null
  br i1 %292, label %293, label %317

293:                                              ; preds = %284
  %294 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %295 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %293
  %301 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %302 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %301, i32 0, i32 4
  %303 = load i32 (i32, i8*)*, i32 (i32, i8*)** %302, align 8
  %304 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %305 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i32 %303(i32 %306, i8* %42)
  br label %316

308:                                              ; preds = %293
  %309 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %310 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %309, i32 0, i32 3
  %311 = load i32 (i32, i8*)*, i32 (i32, i8*)** %310, align 8
  %312 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %313 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 %311(i32 %314, i8* %42)
  br label %316

316:                                              ; preds = %308, %300
  br label %397

317:                                              ; preds = %284
  %318 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %319 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %356

324:                                              ; preds = %317
  store i32 0, i32* %18, align 4
  br label %325

325:                                              ; preds = %343, %324
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* %20, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %346

329:                                              ; preds = %325
  %330 = load i8*, i8** %13, align 8
  %331 = load i32, i32* %18, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = load i32, i32* %18, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %42, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = xor i32 %340, %335
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %338, align 1
  br label %343

343:                                              ; preds = %329
  %344 = load i32, i32* %18, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %18, align 4
  br label %325

346:                                              ; preds = %325
  %347 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %348 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %347, i32 0, i32 4
  %349 = load i32 (i32, i8*)*, i32 (i32, i8*)** %348, align 8
  %350 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %351 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 %349(i32 %352, i8* %42)
  %354 = load i32, i32* %20, align 4
  %355 = call i32 @bcopy(i8* %42, i8* %39, i32 %354)
  store i8* %39, i8** %13, align 8
  br label %396

356:                                              ; preds = %317
  %357 = load i8*, i8** %13, align 8
  %358 = icmp eq i8* %357, %39
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %361

360:                                              ; preds = %356
  br label %361

361:                                              ; preds = %360, %359
  %362 = phi i8* [ %45, %359 ], [ %39, %360 ]
  store i8* %362, i8** %14, align 8
  %363 = load i8*, i8** %14, align 8
  %364 = load i32, i32* %20, align 4
  %365 = call i32 @bcopy(i8* %42, i8* %363, i32 %364)
  %366 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %367 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %366, i32 0, i32 3
  %368 = load i32 (i32, i8*)*, i32 (i32, i8*)** %367, align 8
  %369 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %370 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 %368(i32 %371, i8* %42)
  store i32 0, i32* %18, align 4
  br label %373

373:                                              ; preds = %391, %361
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %20, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %394

377:                                              ; preds = %373
  %378 = load i8*, i8** %13, align 8
  %379 = load i32, i32* %18, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %42, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = xor i32 %388, %383
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %386, align 1
  br label %391

391:                                              ; preds = %377
  %392 = load i32, i32* %18, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %18, align 4
  br label %373

394:                                              ; preds = %373
  %395 = load i8*, i8** %14, align 8
  store i8* %395, i8** %13, align 8
  br label %396

396:                                              ; preds = %394, %346
  br label %397

397:                                              ; preds = %396, %316
  %398 = load %struct.uio*, %struct.uio** %24, align 8
  %399 = load i32, i32* %22, align 4
  %400 = load i32, i32* %20, align 4
  %401 = call i32 @cuio_copyback(%struct.uio* %398, i32 %399, i32 %400, i8* %42)
  %402 = load i32, i32* %20, align 4
  %403 = load i32, i32* %22, align 4
  %404 = add nsw i32 %403, %402
  store i32 %404, i32* %22, align 4
  %405 = load %struct.uio*, %struct.uio** %24, align 8
  %406 = load i32, i32* %22, align 4
  %407 = call i32 @cuio_getptr(%struct.uio* %405, i32 %406, i32* %19)
  store i32 %407, i32* %21, align 4
  %408 = load i32, i32* %21, align 4
  %409 = icmp eq i32 %408, -1
  br i1 %409, label %410, label %412

410:                                              ; preds = %397
  %411 = load i32, i32* @EINVAL, align 4
  store i32 %411, i32* %30, align 4
  br label %671

412:                                              ; preds = %397
  %413 = load i32, i32* %20, align 4
  %414 = load i32, i32* %17, align 4
  %415 = sub nsw i32 %414, %413
  store i32 %415, i32* %17, align 4
  %416 = load i32, i32* %17, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  br label %670

419:                                              ; preds = %412
  br label %420

420:                                              ; preds = %419, %273, %260
  br label %421

421:                                              ; preds = %628, %420
  %422 = load %struct.uio*, %struct.uio** %24, align 8
  %423 = getelementptr inbounds %struct.uio, %struct.uio* %422, i32 0, i32 1
  %424 = load %struct.iovec*, %struct.iovec** %423, align 8
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.iovec, %struct.iovec* %424, i64 %426
  %428 = getelementptr inbounds %struct.iovec, %struct.iovec* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %19, align 4
  %431 = load i32, i32* %20, align 4
  %432 = add nsw i32 %430, %431
  %433 = icmp sge i32 %429, %432
  br i1 %433, label %434, label %437

434:                                              ; preds = %421
  %435 = load i32, i32* %17, align 4
  %436 = icmp sgt i32 %435, 0
  br label %437

437:                                              ; preds = %434, %421
  %438 = phi i1 [ false, %421 ], [ %436, %434 ]
  br i1 %438, label %439, label %644

439:                                              ; preds = %437
  %440 = load i32, i32* %20, align 4
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %34, align 8
  %442 = load i32, i32* %17, align 4
  %443 = sext i32 %442 to i64
  %444 = load %struct.uio*, %struct.uio** %24, align 8
  %445 = getelementptr inbounds %struct.uio, %struct.uio* %444, i32 0, i32 1
  %446 = load %struct.iovec*, %struct.iovec** %445, align 8
  %447 = load i32, i32* %21, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.iovec, %struct.iovec* %446, i64 %448
  %450 = getelementptr inbounds %struct.iovec, %struct.iovec* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = sext i32 %451 to i64
  %453 = load i32, i32* %19, align 4
  %454 = sext i32 %453 to i64
  %455 = sub i64 %452, %454
  %456 = call i64 @MIN(i64 %443, i64 %455)
  store i64 %456, i64* %35, align 8
  %457 = load %struct.uio*, %struct.uio** %24, align 8
  %458 = getelementptr inbounds %struct.uio, %struct.uio* %457, i32 0, i32 1
  %459 = load %struct.iovec*, %struct.iovec** %458, align 8
  %460 = load i32, i32* %21, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.iovec, %struct.iovec* %459, i64 %461
  %463 = getelementptr inbounds %struct.iovec, %struct.iovec* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = inttoptr i64 %464 to i8*
  %466 = load i32, i32* %19, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, i8* %465, i64 %467
  store i8* %468, i8** %33, align 8
  %469 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %470 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %469, i32 0, i32 7
  %471 = load i32 (i32, i8*)*, i32 (i32, i8*)** %470, align 8
  %472 = icmp ne i32 (i32, i8*)* %471, null
  br i1 %472, label %473, label %544

473:                                              ; preds = %439
  %474 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %475 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %494

480:                                              ; preds = %473
  %481 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %482 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %481, i32 0, i32 6
  %483 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %482, align 8
  %484 = icmp eq i32 (i32, i8*, i64)* %483, null
  br i1 %484, label %485, label %494

485:                                              ; preds = %480
  %486 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %487 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %486, i32 0, i32 4
  %488 = load i32 (i32, i8*)*, i32 (i32, i8*)** %487, align 8
  %489 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %490 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i8*, i8** %33, align 8
  %493 = call i32 %488(i32 %491, i8* %492)
  br label %543

494:                                              ; preds = %480, %473
  %495 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %496 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %514

501:                                              ; preds = %494
  %502 = load i64, i64* %35, align 8
  %503 = load i32, i32* %20, align 4
  %504 = call i64 @rounddown(i64 %502, i32 %503)
  store i64 %504, i64* %34, align 8
  %505 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %506 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %505, i32 0, i32 6
  %507 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %506, align 8
  %508 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %509 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i8*, i8** %33, align 8
  %512 = load i64, i64* %34, align 8
  %513 = call i32 %507(i32 %510, i8* %511, i64 %512)
  br label %542

514:                                              ; preds = %494
  %515 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %516 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %515, i32 0, i32 5
  %517 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %516, align 8
  %518 = icmp eq i32 (i32, i8*, i64)* %517, null
  br i1 %518, label %519, label %528

519:                                              ; preds = %514
  %520 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %521 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %520, i32 0, i32 3
  %522 = load i32 (i32, i8*)*, i32 (i32, i8*)** %521, align 8
  %523 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %524 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = load i8*, i8** %33, align 8
  %527 = call i32 %522(i32 %525, i8* %526)
  br label %541

528:                                              ; preds = %514
  %529 = load i64, i64* %35, align 8
  %530 = load i32, i32* %20, align 4
  %531 = call i64 @rounddown(i64 %529, i32 %530)
  store i64 %531, i64* %34, align 8
  %532 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %533 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %532, i32 0, i32 5
  %534 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %533, align 8
  %535 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %536 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load i8*, i8** %33, align 8
  %539 = load i64, i64* %34, align 8
  %540 = call i32 %534(i32 %537, i8* %538, i64 %539)
  br label %541

541:                                              ; preds = %528, %519
  br label %542

542:                                              ; preds = %541, %501
  br label %543

543:                                              ; preds = %542, %485
  br label %628

544:                                              ; preds = %439
  %545 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %546 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %584

551:                                              ; preds = %544
  store i32 0, i32* %18, align 4
  br label %552

552:                                              ; preds = %571, %551
  %553 = load i32, i32* %18, align 4
  %554 = load i32, i32* %20, align 4
  %555 = icmp slt i32 %553, %554
  br i1 %555, label %556, label %574

556:                                              ; preds = %552
  %557 = load i8*, i8** %13, align 8
  %558 = load i32, i32* %18, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, i8* %557, i64 %559
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i32
  %563 = load i8*, i8** %33, align 8
  %564 = load i32, i32* %18, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, i8* %563, i64 %565
  %567 = load i8, i8* %566, align 1
  %568 = zext i8 %567 to i32
  %569 = xor i32 %568, %562
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %566, align 1
  br label %571

571:                                              ; preds = %556
  %572 = load i32, i32* %18, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %18, align 4
  br label %552

574:                                              ; preds = %552
  %575 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %576 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %575, i32 0, i32 4
  %577 = load i32 (i32, i8*)*, i32 (i32, i8*)** %576, align 8
  %578 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %579 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = load i8*, i8** %33, align 8
  %582 = call i32 %577(i32 %580, i8* %581)
  %583 = load i8*, i8** %33, align 8
  store i8* %583, i8** %13, align 8
  br label %627

584:                                              ; preds = %544
  %585 = load i8*, i8** %13, align 8
  %586 = icmp eq i8* %585, %39
  br i1 %586, label %587, label %588

587:                                              ; preds = %584
  br label %589

588:                                              ; preds = %584
  br label %589

589:                                              ; preds = %588, %587
  %590 = phi i8* [ %45, %587 ], [ %39, %588 ]
  store i8* %590, i8** %14, align 8
  %591 = load i8*, i8** %33, align 8
  %592 = load i8*, i8** %14, align 8
  %593 = load i32, i32* %20, align 4
  %594 = call i32 @bcopy(i8* %591, i8* %592, i32 %593)
  %595 = load %struct.enc_xform*, %struct.enc_xform** %16, align 8
  %596 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %595, i32 0, i32 3
  %597 = load i32 (i32, i8*)*, i32 (i32, i8*)** %596, align 8
  %598 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %599 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = load i8*, i8** %33, align 8
  %602 = call i32 %597(i32 %600, i8* %601)
  store i32 0, i32* %18, align 4
  br label %603

603:                                              ; preds = %622, %589
  %604 = load i32, i32* %18, align 4
  %605 = load i32, i32* %20, align 4
  %606 = icmp slt i32 %604, %605
  br i1 %606, label %607, label %625

607:                                              ; preds = %603
  %608 = load i8*, i8** %13, align 8
  %609 = load i32, i32* %18, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i8, i8* %608, i64 %610
  %612 = load i8, i8* %611, align 1
  %613 = zext i8 %612 to i32
  %614 = load i8*, i8** %33, align 8
  %615 = load i32, i32* %18, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, i8* %614, i64 %616
  %618 = load i8, i8* %617, align 1
  %619 = zext i8 %618 to i32
  %620 = xor i32 %619, %613
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %617, align 1
  br label %622

622:                                              ; preds = %607
  %623 = load i32, i32* %18, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %18, align 4
  br label %603

625:                                              ; preds = %603
  %626 = load i8*, i8** %14, align 8
  store i8* %626, i8** %13, align 8
  br label %627

627:                                              ; preds = %625, %574
  br label %628

628:                                              ; preds = %627, %543
  %629 = load i64, i64* %34, align 8
  %630 = load i32, i32* %22, align 4
  %631 = sext i32 %630 to i64
  %632 = add i64 %631, %629
  %633 = trunc i64 %632 to i32
  store i32 %633, i32* %22, align 4
  %634 = load i64, i64* %34, align 8
  %635 = load i32, i32* %19, align 4
  %636 = sext i32 %635 to i64
  %637 = add i64 %636, %634
  %638 = trunc i64 %637 to i32
  store i32 %638, i32* %19, align 4
  %639 = load i64, i64* %34, align 8
  %640 = load i32, i32* %17, align 4
  %641 = sext i32 %640 to i64
  %642 = sub i64 %641, %639
  %643 = trunc i64 %642 to i32
  store i32 %643, i32* %17, align 4
  br label %421

644:                                              ; preds = %437
  %645 = load i32, i32* %17, align 4
  %646 = icmp sgt i32 %645, 0
  br i1 %646, label %647, label %669

647:                                              ; preds = %644
  %648 = load i32, i32* %19, align 4
  %649 = load %struct.uio*, %struct.uio** %24, align 8
  %650 = getelementptr inbounds %struct.uio, %struct.uio* %649, i32 0, i32 1
  %651 = load %struct.iovec*, %struct.iovec** %650, align 8
  %652 = load i32, i32* %21, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.iovec, %struct.iovec* %651, i64 %653
  %655 = getelementptr inbounds %struct.iovec, %struct.iovec* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = icmp eq i32 %648, %656
  br i1 %657, label %658, label %669

658:                                              ; preds = %647
  store i32 0, i32* %19, align 4
  %659 = load i32, i32* %21, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %21, align 4
  %661 = load i32, i32* %21, align 4
  %662 = load %struct.uio*, %struct.uio** %24, align 8
  %663 = getelementptr inbounds %struct.uio, %struct.uio* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = icmp sge i32 %661, %664
  br i1 %665, label %666, label %668

666:                                              ; preds = %658
  %667 = load i32, i32* @EINVAL, align 4
  store i32 %667, i32* %30, align 4
  br label %671

668:                                              ; preds = %658
  br label %669

669:                                              ; preds = %668, %647, %644
  br label %257

670:                                              ; preds = %418, %257
  br label %671

671:                                              ; preds = %670, %666, %410, %251
  %672 = load i32, i32* %29, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %678

674:                                              ; preds = %671
  %675 = load %struct.iovec*, %struct.iovec** %27, align 8
  %676 = load i32, i32* @M_CRYPTO_DATA, align 4
  %677 = call i32 @free(%struct.iovec* %675, i32 %676)
  br label %678

678:                                              ; preds = %674, %671
  %679 = load i32, i32* %30, align 4
  store i32 %679, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %680

680:                                              ; preds = %678, %191, %174, %76, %61
  %681 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %681)
  %682 = load i32, i32* %5, align 4
  ret i32 %682
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @arc4rand(i8*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i64, i32, i32, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i64, i32, i32, i8*) #2

declare dso_local i32 @nitems(%struct.iovec*) #2

declare dso_local i32 @crypto_mbuftoiov(%struct.mbuf*, %struct.iovec**, i32*, i32*) #2

declare dso_local i32 @cuio_getptr(%struct.uio*, i32, i32*) #2

declare dso_local i32 @cuio_copydata(%struct.uio*, i32, i32, i8*) #2

declare dso_local i32 @cuio_copyback(%struct.uio*, i32, i32, i8*) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i64 @rounddown(i64, i32) #2

declare dso_local i32 @free(%struct.iovec*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
