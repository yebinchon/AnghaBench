; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_gcm_soft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_gcm_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i32, i32 (i8*, i8*)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*)* }
%struct.enc_xform = type { i32 (i32**, i32, i32)*, i32 (i32**)*, i32 (i32*, i8*)*, i32 (i32*, i8*)*, i32 (i32*, i8*)* }
%struct.ccr_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cryptop = type { i32, i32, i32 }
%struct.cryptodesc = type { i32, i32, i64, i64, i32 }

@GMAC_BLOCK_LEN = common dso_local global i32 0, align 4
@GMAC_DIGEST_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@auth_hash_nist_gmac_aes_128 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_nist_gmac_aes_192 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_nist_gmac_aes_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_CCR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@enc_xform_aes_nist_gcm = common dso_local global %struct.enc_xform zeroinitializer, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*)* @ccr_gcm_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_gcm_soft(%struct.ccr_session* %0, %struct.cryptop* %1, %struct.cryptodesc* %2, %struct.cryptodesc* %3) #0 {
  %5 = alloca %struct.ccr_session*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.auth_hash*, align 8
  %10 = alloca %struct.enc_xform*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.ccr_session* %0, %struct.ccr_session** %5, align 8
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store %struct.cryptodesc* %2, %struct.cryptodesc** %7, align 8
  store %struct.cryptodesc* %3, %struct.cryptodesc** %8, align 8
  %22 = load i32, i32* @GMAC_BLOCK_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load i32, i32* @AES_BLOCK_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %32 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %33 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %39 [
    i32 16, label %36
    i32 24, label %37
    i32 32, label %38
  ]

36:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_128, %struct.auth_hash** %9, align 8
  br label %41

37:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_192, %struct.auth_hash** %9, align 8
  br label %41

38:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_256, %struct.auth_hash** %9, align 8
  br label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %17, align 4
  br label %430

41:                                               ; preds = %38, %37, %36
  %42 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %43 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @M_CCR, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call i8* @malloc(i32 %44, i32 %45, i32 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %17, align 4
  br label %430

52:                                               ; preds = %41
  %53 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %54 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %53, i32 0, i32 5
  %55 = load i32 (i8*)*, i32 (i8*)** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 %55(i8* %56)
  %58 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %59 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %58, i32 0, i32 4
  %60 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %59, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %63 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %67 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %60(i8* %61, i32 %65, i32 %69)
  store %struct.enc_xform* @enc_xform_aes_nist_gcm, %struct.enc_xform** %10, align 8
  %71 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %72 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %71, i32 0, i32 0
  %73 = load i32 (i32**, i32, i32)*, i32 (i32**, i32, i32)** %72, align 8
  %74 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %75 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %79 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %73(i32** %12, i32 %77, i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %52
  br label %430

86:                                               ; preds = %52
  %87 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %88 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %86
  %94 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %95 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %102 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i8* %31, i32 %103, i32 12)
  br label %107

105:                                              ; preds = %93
  %106 = call i32 @arc4rand(i8* %31, i32 12, i32 0)
  br label %107

107:                                              ; preds = %105, %100
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %109 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %107
  %115 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %116 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %119 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %122 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @crypto_copyback(i32 %117, i32 %120, i64 %123, i32 12, i8* %31)
  br label %125

125:                                              ; preds = %114, %107
  br label %150

126:                                              ; preds = %86
  %127 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %128 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %135 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @memcpy(i8* %31, i32 %136, i32 12)
  br label %149

138:                                              ; preds = %126
  %139 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %140 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %143 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %146 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @crypto_copydata(i32 %141, i32 %144, i64 %147, i32 12, i8* %31)
  br label %149

149:                                              ; preds = %138, %133
  br label %150

150:                                              ; preds = %149, %125
  %151 = call i32 @htobe32(i32 1)
  %152 = getelementptr inbounds i8, i8* %31, i64 12
  %153 = bitcast i8* %152 to i32*
  store i32 %151, i32* %153, align 4
  %154 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %155 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %154, i32 0, i32 3
  %156 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %155, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = trunc i64 %30 to i32
  %159 = call i32 %156(i8* %157, i8* %31, i32 %158)
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %202, %150
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %163 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %207

166:                                              ; preds = %160
  %167 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %168 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %18, align 4
  %171 = sub nsw i32 %169, %170
  %172 = trunc i64 %23 to i32
  %173 = call i32 @imin(i32 %171, i32 %172)
  store i32 %173, i32* %19, align 4
  %174 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %175 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %178 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %181 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %182, %184
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @crypto_copydata(i32 %176, i32 %179, i64 %185, i32 %186, i8* %25)
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %25, i64 %189
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = sub i64 %23, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @bzero(i8* %190, i32 %194)
  %196 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %197 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %196, i32 0, i32 2
  %198 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %197, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = trunc i64 %23 to i32
  %201 = call i32 %198(i8* %199, i8* %25, i32 %200)
  br label %202

202:                                              ; preds = %166
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, %23
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %18, align 4
  br label %160

207:                                              ; preds = %160
  %208 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %209 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %208, i32 0, i32 4
  %210 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %209, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 %210(i32* %211, i8* %31)
  store i32 0, i32* %18, align 4
  br label %213

213:                                              ; preds = %289, %207
  %214 = load i32, i32* %18, align 4
  %215 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %216 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %294

219:                                              ; preds = %213
  %220 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %221 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %18, align 4
  %224 = sub nsw i32 %222, %223
  %225 = trunc i64 %23 to i32
  %226 = call i32 @imin(i32 %224, i32 %225)
  store i32 %226, i32* %19, align 4
  %227 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %228 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %231 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %234 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @crypto_copydata(i32 %229, i32 %232, i64 %238, i32 %239, i8* %25)
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %25, i64 %242
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 %23, %245
  %247 = trunc i64 %246 to i32
  %248 = call i32 @bzero(i8* %243, i32 %247)
  %249 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %250 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %219
  %256 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %257 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %256, i32 0, i32 3
  %258 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %257, align 8
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 %258(i32* %259, i8* %25)
  %261 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %262 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %261, i32 0, i32 2
  %263 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %262, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = load i32, i32* %19, align 4
  %266 = call i32 %263(i8* %264, i8* %25, i32 %265)
  %267 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %268 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %271 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %274 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %275, %277
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @crypto_copyback(i32 %269, i32 %272, i64 %278, i32 %279, i8* %25)
  br label %288

281:                                              ; preds = %219
  %282 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %283 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %282, i32 0, i32 2
  %284 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %283, align 8
  %285 = load i8*, i8** %11, align 8
  %286 = load i32, i32* %19, align 4
  %287 = call i32 %284(i8* %285, i8* %25, i32 %286)
  br label %288

288:                                              ; preds = %281, %255
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = add i64 %291, %23
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %18, align 4
  br label %213

294:                                              ; preds = %213
  %295 = trunc i64 %23 to i32
  %296 = call i32 @bzero(i8* %25, i32 %295)
  %297 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %298 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %299, 8
  %301 = call i32 @htobe32(i32 %300)
  %302 = bitcast i8* %25 to i32*
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 %301, i32* %303, align 4
  %304 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %305 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 %306, 8
  %308 = call i32 @htobe32(i32 %307)
  %309 = bitcast i8* %25 to i32*
  %310 = getelementptr inbounds i32, i32* %309, i64 3
  store i32 %308, i32* %310, align 4
  %311 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %312 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %311, i32 0, i32 2
  %313 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %312, align 8
  %314 = load i8*, i8** %11, align 8
  %315 = trunc i64 %23 to i32
  %316 = call i32 %313(i8* %314, i8* %25, i32 %315)
  %317 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %318 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %317, i32 0, i32 1
  %319 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %318, align 8
  %320 = load i8*, i8** %11, align 8
  %321 = call i32 %319(i8* %28, i8* %320)
  %322 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %323 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %294
  %329 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %330 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %333 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %336 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %27 to i32
  %339 = call i32 @crypto_copyback(i32 %331, i32 %334, i64 %337, i32 %338, i8* %28)
  store i32 0, i32* %17, align 4
  br label %425

340:                                              ; preds = %294
  %341 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %342 = zext i32 %341 to i64
  %343 = call i8* @llvm.stacksave()
  store i8* %343, i8** %20, align 8
  %344 = alloca i8, i64 %342, align 16
  store i64 %342, i64* %21, align 8
  %345 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %346 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %349 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %352 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %342 to i32
  %355 = call i32 @crypto_copydata(i32 %347, i32 %350, i64 %353, i32 %354, i8* %344)
  %356 = trunc i64 %27 to i32
  %357 = call i64 @timingsafe_bcmp(i8* %28, i8* %344, i32 %356)
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %421

359:                                              ; preds = %340
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %360

360:                                              ; preds = %415, %359
  %361 = load i32, i32* %18, align 4
  %362 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %363 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %420

366:                                              ; preds = %360
  %367 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %368 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %18, align 4
  %371 = sub nsw i32 %369, %370
  %372 = trunc i64 %23 to i32
  %373 = call i32 @imin(i32 %371, i32 %372)
  store i32 %373, i32* %19, align 4
  %374 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %375 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %378 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %381 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = load i32, i32* %18, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %382, %384
  %386 = load i32, i32* %19, align 4
  %387 = call i32 @crypto_copydata(i32 %376, i32 %379, i64 %385, i32 %386, i8* %25)
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %25, i64 %389
  %391 = load i32, i32* %19, align 4
  %392 = sext i32 %391 to i64
  %393 = sub i64 %23, %392
  %394 = trunc i64 %393 to i32
  %395 = call i32 @bzero(i8* %390, i32 %394)
  %396 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %397 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %396, i32 0, i32 2
  %398 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %397, align 8
  %399 = load i32*, i32** %12, align 8
  %400 = call i32 %398(i32* %399, i8* %25)
  %401 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %402 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %405 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %408 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = load i32, i32* %18, align 4
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %409, %411
  %413 = load i32, i32* %19, align 4
  %414 = call i32 @crypto_copyback(i32 %403, i32 %406, i64 %412, i32 %413, i8* %25)
  br label %415

415:                                              ; preds = %366
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = add i64 %417, %23
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %18, align 4
  br label %360

420:                                              ; preds = %360
  br label %423

421:                                              ; preds = %340
  %422 = load i32, i32* @EBADMSG, align 4
  store i32 %422, i32* %17, align 4
  br label %423

423:                                              ; preds = %421, %420
  %424 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %424)
  br label %425

425:                                              ; preds = %423, %328
  %426 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %427 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %426, i32 0, i32 1
  %428 = load i32 (i32**)*, i32 (i32**)** %427, align 8
  %429 = call i32 %428(i32** %12)
  br label %430

430:                                              ; preds = %425, %85, %50, %39
  %431 = load i8*, i8** %11, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %442

433:                                              ; preds = %430
  %434 = load i8*, i8** %11, align 8
  %435 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %436 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @memset(i8* %434, i32 0, i32 %437)
  %439 = load i8*, i8** %11, align 8
  %440 = load i32, i32* @M_CCR, align 4
  %441 = call i32 @free(i8* %439, i32 %440)
  br label %442

442:                                              ; preds = %433, %430
  %443 = load i32, i32* %17, align 4
  %444 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %445 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %444, i32 0, i32 0
  store i32 %443, i32* %445, align 4
  %446 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %447 = call i32 @crypto_done(%struct.cryptop* %446)
  %448 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %448)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @arc4rand(i8*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @htobe32(i32) #2

declare dso_local i32 @imin(i32, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i64 @timingsafe_bcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @free(i8*, i32) #2

declare dso_local i32 @crypto_done(%struct.cryptop*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
