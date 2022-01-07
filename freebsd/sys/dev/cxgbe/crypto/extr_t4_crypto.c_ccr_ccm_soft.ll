; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_ccm_soft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_ccm_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i32, i32 (i8*, %union.authctx*)*, i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i32, i32)*, i32 (%union.authctx*)* }
%union.authctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.enc_xform = type { i32 (i32**, i32, i32)*, i32 (i32**)*, i32 (i32*, i8*)*, i32 (i32*, i8*)*, i32 (i32*, i8*)* }
%struct.ccr_session = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cryptop = type { i32, i32, i32 }
%struct.cryptodesc = type { i32, i32, i64, i64, i32 }

@CCM_CBC_BLOCK_LEN = common dso_local global i32 0, align 4
@AES_CBC_MAC_HASH_LEN = common dso_local global i32 0, align 4
@AES_CCM_IV_LEN = common dso_local global i32 0, align 4
@auth_hash_ccm_cbc_mac_128 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_ccm_cbc_mac_192 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_ccm_cbc_mac_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_CCR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@enc_xform_ccm = common dso_local global %struct.enc_xform zeroinitializer, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@GMAC_DIGEST_LEN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*)* @ccr_ccm_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_ccm_soft(%struct.ccr_session* %0, %struct.cryptop* %1, %struct.cryptodesc* %2, %struct.cryptodesc* %3) #0 {
  %5 = alloca %struct.ccr_session*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.auth_hash*, align 8
  %10 = alloca %struct.enc_xform*, align 8
  %11 = alloca %union.authctx*, align 8
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
  %22 = load i32, i32* @CCM_CBC_BLOCK_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @AES_CBC_MAC_HASH_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  store %union.authctx* null, %union.authctx** %11, align 8
  store i32* null, i32** %12, align 8
  %32 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %33 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %39 [
    i32 16, label %36
    i32 24, label %37
    i32 32, label %38
  ]

36:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_128, %struct.auth_hash** %9, align 8
  br label %41

37:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_192, %struct.auth_hash** %9, align 8
  br label %41

38:                                               ; preds = %4
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_256, %struct.auth_hash** %9, align 8
  br label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %17, align 4
  br label %432

41:                                               ; preds = %38, %37, %36
  %42 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %43 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @M_CCR, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call %union.authctx* @malloc(i32 %44, i32 %45, i32 %46)
  store %union.authctx* %47, %union.authctx** %11, align 8
  %48 = load %union.authctx*, %union.authctx** %11, align 8
  %49 = icmp eq %union.authctx* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %17, align 4
  br label %432

52:                                               ; preds = %41
  %53 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %54 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %53, i32 0, i32 5
  %55 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %54, align 8
  %56 = load %union.authctx*, %union.authctx** %11, align 8
  %57 = call i32 %55(%union.authctx* %56)
  %58 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %59 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %58, i32 0, i32 4
  %60 = load i32 (%union.authctx*, i32, i32)*, i32 (%union.authctx*, i32, i32)** %59, align 8
  %61 = load %union.authctx*, %union.authctx** %11, align 8
  %62 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %63 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %67 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %60(%union.authctx* %61, i32 %65, i32 %69)
  store %struct.enc_xform* @enc_xform_ccm, %struct.enc_xform** %10, align 8
  %71 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %72 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %71, i32 0, i32 0
  %73 = load i32 (i32**, i32, i32)*, i32 (i32**, i32, i32)** %72, align 8
  %74 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %75 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %79 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %73(i32** %12, i32 %77, i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %52
  br label %432

86:                                               ; preds = %52
  %87 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %88 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %86
  %94 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %95 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %102 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %105 = call i32 @memcpy(i8* %31, i32 %103, i32 %104)
  br label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %108 = call i32 @arc4rand(i8* %31, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %111 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %118 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %121 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %127 = call i32 @crypto_copyback(i32 %119, i32 %122, i64 %125, i32 %126, i8* %31)
  br label %128

128:                                              ; preds = %116, %109
  br label %155

129:                                              ; preds = %86
  %130 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %131 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %138 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %141 = call i32 @memcpy(i8* %31, i32 %139, i32 %140)
  br label %154

142:                                              ; preds = %129
  %143 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %144 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %147 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %150 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @AES_CCM_IV_LEN, align 4
  %153 = call i32 @crypto_copydata(i32 %145, i32 %148, i64 %151, i32 %152, i8* %31)
  br label %154

154:                                              ; preds = %142, %136
  br label %155

155:                                              ; preds = %154, %128
  %156 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %157 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %union.authctx*, %union.authctx** %11, align 8
  %160 = bitcast %union.authctx* %159 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %163 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %union.authctx*, %union.authctx** %11, align 8
  %166 = bitcast %union.authctx* %165 to %struct.TYPE_4__*
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %169 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %168, i32 0, i32 3
  %170 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %169, align 8
  %171 = load %union.authctx*, %union.authctx** %11, align 8
  %172 = trunc i64 %30 to i32
  %173 = call i32 %170(%union.authctx* %171, i8* %31, i32 %172)
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %216, %155
  %175 = load i32, i32* %18, align 4
  %176 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %177 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %221

180:                                              ; preds = %174
  %181 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %182 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %18, align 4
  %185 = sub nsw i32 %183, %184
  %186 = trunc i64 %23 to i32
  %187 = call i32 @imin(i32 %185, i32 %186)
  store i32 %187, i32* %19, align 4
  %188 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %189 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %192 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %195 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = load i32, i32* %19, align 4
  %201 = call i32 @crypto_copydata(i32 %190, i32 %193, i64 %199, i32 %200, i8* %25)
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %25, i64 %203
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 %23, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @bzero(i8* %204, i32 %208)
  %210 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %211 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %210, i32 0, i32 2
  %212 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %211, align 8
  %213 = load %union.authctx*, %union.authctx** %11, align 8
  %214 = trunc i64 %23 to i32
  %215 = call i32 %212(%union.authctx* %213, i8* %25, i32 %214)
  br label %216

216:                                              ; preds = %180
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = add i64 %218, %23
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %18, align 4
  br label %174

221:                                              ; preds = %174
  %222 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %223 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %222, i32 0, i32 3
  %224 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %223, align 8
  %225 = load i32*, i32** %12, align 8
  %226 = call i32 %224(i32* %225, i8* %31)
  store i32 0, i32* %18, align 4
  br label %227

227:                                              ; preds = %308, %221
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %230 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %313

233:                                              ; preds = %227
  %234 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %235 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %18, align 4
  %238 = sub nsw i32 %236, %237
  %239 = trunc i64 %23 to i32
  %240 = call i32 @imin(i32 %238, i32 %239)
  store i32 %240, i32* %19, align 4
  %241 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %242 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %245 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %248 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %249, %251
  %253 = load i32, i32* %19, align 4
  %254 = call i32 @crypto_copydata(i32 %243, i32 %246, i64 %252, i32 %253, i8* %25)
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %25, i64 %256
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = sub i64 %23, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @bzero(i8* %257, i32 %261)
  %263 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %264 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %295

269:                                              ; preds = %233
  %270 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %271 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %270, i32 0, i32 2
  %272 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %271, align 8
  %273 = load %union.authctx*, %union.authctx** %11, align 8
  %274 = load i32, i32* %19, align 4
  %275 = call i32 %272(%union.authctx* %273, i8* %25, i32 %274)
  %276 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %277 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %276, i32 0, i32 4
  %278 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %277, align 8
  %279 = load i32*, i32** %12, align 8
  %280 = call i32 %278(i32* %279, i8* %25)
  %281 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %282 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %285 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %288 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %289, %291
  %293 = load i32, i32* %19, align 4
  %294 = call i32 @crypto_copyback(i32 %283, i32 %286, i64 %292, i32 %293, i8* %25)
  br label %307

295:                                              ; preds = %233
  %296 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %297 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %296, i32 0, i32 2
  %298 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %297, align 8
  %299 = load i32*, i32** %12, align 8
  %300 = call i32 %298(i32* %299, i8* %25)
  %301 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %302 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %301, i32 0, i32 2
  %303 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %302, align 8
  %304 = load %union.authctx*, %union.authctx** %11, align 8
  %305 = load i32, i32* %19, align 4
  %306 = call i32 %303(%union.authctx* %304, i8* %25, i32 %305)
  br label %307

307:                                              ; preds = %295, %269
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %18, align 4
  %310 = sext i32 %309 to i64
  %311 = add i64 %310, %23
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %18, align 4
  br label %227

313:                                              ; preds = %227
  %314 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %315 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %314, i32 0, i32 1
  %316 = load i32 (i8*, %union.authctx*)*, i32 (i8*, %union.authctx*)** %315, align 8
  %317 = load %union.authctx*, %union.authctx** %11, align 8
  %318 = call i32 %316(i8* %28, %union.authctx* %317)
  %319 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %320 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %313
  %326 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %327 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %330 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %333 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = trunc i64 %27 to i32
  %336 = call i32 @crypto_copyback(i32 %328, i32 %331, i64 %334, i32 %335, i8* %28)
  store i32 0, i32* %17, align 4
  br label %427

337:                                              ; preds = %313
  %338 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %339 = zext i32 %338 to i64
  %340 = call i8* @llvm.stacksave()
  store i8* %340, i8** %20, align 8
  %341 = alloca i8, i64 %339, align 16
  store i64 %339, i64* %21, align 8
  %342 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %343 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %346 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %349 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %339 to i32
  %352 = call i32 @crypto_copydata(i32 %344, i32 %347, i64 %350, i32 %351, i8* %341)
  %353 = trunc i64 %27 to i32
  %354 = call i64 @timingsafe_bcmp(i8* %28, i8* %341, i32 %353)
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %423

356:                                              ; preds = %337
  store i32 0, i32* %17, align 4
  %357 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %358 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %357, i32 0, i32 3
  %359 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %358, align 8
  %360 = load i32*, i32** %12, align 8
  %361 = call i32 %359(i32* %360, i8* %31)
  store i32 0, i32* %18, align 4
  br label %362

362:                                              ; preds = %417, %356
  %363 = load i32, i32* %18, align 4
  %364 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %365 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp slt i32 %363, %366
  br i1 %367, label %368, label %422

368:                                              ; preds = %362
  %369 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %370 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %18, align 4
  %373 = sub nsw i32 %371, %372
  %374 = trunc i64 %23 to i32
  %375 = call i32 @imin(i32 %373, i32 %374)
  store i32 %375, i32* %19, align 4
  %376 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %377 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %380 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %383 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %384, %386
  %388 = load i32, i32* %19, align 4
  %389 = call i32 @crypto_copydata(i32 %378, i32 %381, i64 %387, i32 %388, i8* %25)
  %390 = load i32, i32* %19, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %25, i64 %391
  %393 = load i32, i32* %19, align 4
  %394 = sext i32 %393 to i64
  %395 = sub i64 %23, %394
  %396 = trunc i64 %395 to i32
  %397 = call i32 @bzero(i8* %392, i32 %396)
  %398 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %399 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %398, i32 0, i32 2
  %400 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %399, align 8
  %401 = load i32*, i32** %12, align 8
  %402 = call i32 %400(i32* %401, i8* %25)
  %403 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %404 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %407 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %410 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = load i32, i32* %18, align 4
  %413 = sext i32 %412 to i64
  %414 = add nsw i64 %411, %413
  %415 = load i32, i32* %19, align 4
  %416 = call i32 @crypto_copyback(i32 %405, i32 %408, i64 %414, i32 %415, i8* %25)
  br label %417

417:                                              ; preds = %368
  %418 = load i32, i32* %18, align 4
  %419 = sext i32 %418 to i64
  %420 = add i64 %419, %23
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %18, align 4
  br label %362

422:                                              ; preds = %362
  br label %425

423:                                              ; preds = %337
  %424 = load i32, i32* @EBADMSG, align 4
  store i32 %424, i32* %17, align 4
  br label %425

425:                                              ; preds = %423, %422
  %426 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %426)
  br label %427

427:                                              ; preds = %425, %325
  %428 = load %struct.enc_xform*, %struct.enc_xform** %10, align 8
  %429 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %428, i32 0, i32 1
  %430 = load i32 (i32**)*, i32 (i32**)** %429, align 8
  %431 = call i32 %430(i32** %12)
  br label %432

432:                                              ; preds = %427, %85, %50, %39
  %433 = load %union.authctx*, %union.authctx** %11, align 8
  %434 = icmp ne %union.authctx* %433, null
  br i1 %434, label %435, label %444

435:                                              ; preds = %432
  %436 = load %union.authctx*, %union.authctx** %11, align 8
  %437 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  %438 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @memset(%union.authctx* %436, i32 0, i32 %439)
  %441 = load %union.authctx*, %union.authctx** %11, align 8
  %442 = load i32, i32* @M_CCR, align 4
  %443 = call i32 @free(%union.authctx* %441, i32 %442)
  br label %444

444:                                              ; preds = %435, %432
  %445 = load i32, i32* %17, align 4
  %446 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %447 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %446, i32 0, i32 0
  store i32 %445, i32* %447, align 4
  %448 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %449 = call i32 @crypto_done(%struct.cryptop* %448)
  %450 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %450)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %union.authctx* @malloc(i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @arc4rand(i8*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @imin(i32, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i64 @timingsafe_bcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @memset(%union.authctx*, i32, i32) #2

declare dso_local i32 @free(%union.authctx*, i32) #2

declare dso_local i32 @crypto_done(%struct.cryptop*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
