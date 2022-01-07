; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_blkcipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_blkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ccr_session = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i8*, i8*, i32, i32 }
%struct.cryptop = type { i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32, i32, i8*, i32, i32 }
%struct.chcr_wr = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wrqe = type { i32 }

@CHCR_MAX_CRYPTO_IV_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@MAX_REQUEST_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i64 0, align 8
@CHCR_DECRYPT_OP = common dso_local global i64 0, align 8
@DSGL_SGE_MAXLEN = common dso_local global i32 0, align 4
@MAX_RX_PHYS_DSGL_SGE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CPL_TX_SEC_PDU = common dso_local global i32 0, align 4
@SCMD_PROTO_VERSION_GENERIC = common dso_local global i32 0, align 4
@SCMD_AUTH_MODE_NOP = common dso_local global i32 0, align 4
@SCMD_HMAC_CTRL_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*)* @ccr_blkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_blkcipher(%struct.ccr_softc* %0, %struct.ccr_session* %1, %struct.cryptop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccr_softc*, align 8
  %6 = alloca %struct.ccr_session*, align 8
  %7 = alloca %struct.cryptop*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.chcr_wr*, align 8
  %11 = alloca %struct.wrqe*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ccr_softc* %0, %struct.ccr_softc** %5, align 8
  store %struct.ccr_session* %1, %struct.ccr_session** %6, align 8
  store %struct.cryptop* %2, %struct.cryptop** %7, align 8
  %26 = load i32, i32* @CHCR_MAX_CRYPTO_IV_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %31 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %30, i32 0, i32 2
  %32 = load %struct.cryptodesc*, %struct.cryptodesc** %31, align 8
  store %struct.cryptodesc* %32, %struct.cryptodesc** %12, align 8
  %33 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %34 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %40 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %3
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

45:                                               ; preds = %38
  %46 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %47 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %52 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AES_BLOCK_LEN, align 4
  %55 = srem i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

59:                                               ; preds = %50, %45
  %60 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %61 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAX_REQUEST_SIZE, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @EFBIG, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

67:                                               ; preds = %59
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  store i64 %75, i64* %16, align 8
  br label %78

76:                                               ; preds = %67
  %77 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %80 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %79, i32 0, i32 6
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @sglist_reset(%struct.TYPE_10__* %81)
  %83 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %83, i32 0, i32 6
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %90 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %93 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sglist_append_sglist(%struct.TYPE_10__* %85, i32 %88, i32 %91, i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %24, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %78
  %99 = load i32, i32* %24, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

100:                                              ; preds = %78
  %101 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %101, i32 0, i32 6
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* @DSGL_SGE_MAXLEN, align 4
  %105 = call i32 @ccr_count_sgl(%struct.TYPE_10__* %103, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @MAX_RX_PHYS_DSGL_SGE, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @EFBIG, align 4
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

111:                                              ; preds = %100
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @ccr_phys_dsgl_len(i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %115 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @roundup2(i64 %117, i32 16)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i32, i32* %21, align 4
  %121 = call i64 @CIPHER_TRANSHDR_SIZE(i64 %119, i32 %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %124 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %127 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %125, %129
  %131 = call i64 @ccr_use_imm_data(i64 %122, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %111
  %134 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %135 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %168

138:                                              ; preds = %111
  store i64 0, i64* %19, align 8
  %139 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %140 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %139, i32 0, i32 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = call i32 @sglist_reset(%struct.TYPE_10__* %141)
  %143 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %144 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %143, i32 0, i32 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %150 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %153 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @sglist_append_sglist(%struct.TYPE_10__* %145, i32 %148, i32 %151, i32 %154)
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %138
  %159 = load i32, i32* %24, align 4
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

160:                                              ; preds = %138
  %161 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %162 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %161, i32 0, i32 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @ccr_ulptx_sgl_len(i32 %166)
  store i32 %167, i32* %23, align 4
  br label %168

168:                                              ; preds = %160, %133
  %169 = load i64, i64* %17, align 8
  %170 = call i64 @roundup2(i64 %169, i32 16)
  %171 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %172 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %170, %175
  %177 = load i64, i64* %19, align 8
  %178 = call i64 @roundup2(i64 %177, i32 16)
  %179 = add nsw i64 %176, %178
  %180 = load i32, i32* %23, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  store i64 %182, i64* %18, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %168
  %187 = load i32, i32* @EFBIG, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

188:                                              ; preds = %168
  %189 = load i64, i64* %18, align 8
  %190 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %191 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call %struct.wrqe* @alloc_wrqe(i64 %189, i32 %192)
  store %struct.wrqe* %193, %struct.wrqe** %11, align 8
  %194 = load %struct.wrqe*, %struct.wrqe** %11, align 8
  %195 = icmp eq %struct.wrqe* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %198 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* @ENOMEM, align 4
  store i32 %201, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

202:                                              ; preds = %188
  %203 = load %struct.wrqe*, %struct.wrqe** %11, align 8
  %204 = call %struct.chcr_wr* @wrtod(%struct.wrqe* %203)
  store %struct.chcr_wr* %204, %struct.chcr_wr** %10, align 8
  %205 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %206 = load i64, i64* %18, align 8
  %207 = call i32 @memset(%struct.chcr_wr* %205, i32 0, i64 %206)
  %208 = load i64, i64* %16, align 8
  %209 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %259

211:                                              ; preds = %202
  %212 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %213 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %211
  %219 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %220 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %223 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = call i32 @memcpy(i8* %29, i8* %221, i64 %226)
  br label %235

228:                                              ; preds = %211
  %229 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %230 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = call i32 @arc4rand(i8* %29, i64 %233, i32 0)
  br label %235

235:                                              ; preds = %228, %218
  %236 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %237 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %235
  %243 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %244 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %247 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %250 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %253 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = call i32 @crypto_copyback(i32 %245, i32 %248, i32 %251, i64 %256, i8* %29)
  br label %258

258:                                              ; preds = %242, %235
  br label %292

259:                                              ; preds = %202
  %260 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %261 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %259
  %267 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %268 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %267, i32 0, i32 3
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %271 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = call i32 @memcpy(i8* %29, i8* %269, i64 %274)
  br label %291

276:                                              ; preds = %259
  %277 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %278 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %281 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %284 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %287 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @crypto_copydata(i32 %279, i32 %282, i32 %285, i32 %289, i8* %29)
  br label %291

291:                                              ; preds = %276, %266
  br label %292

292:                                              ; preds = %291, %258
  %293 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %294 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %295 = load i64, i64* %14, align 8
  %296 = load i64, i64* %18, align 8
  %297 = load i64, i64* %19, align 8
  %298 = load i32, i32* %23, align 4
  %299 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %300 = call i32 @ccr_populate_wreq(%struct.ccr_softc* %293, %struct.chcr_wr* %294, i64 %295, i64 %296, i64 %297, i32 %298, i32 0, %struct.cryptop* %299)
  %301 = load i32, i32* @CPL_TX_SEC_PDU, align 4
  %302 = call i32 @V_CPL_TX_SEC_PDU_OPCODE(i32 %301)
  %303 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %304 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @V_CPL_TX_SEC_PDU_RXCHID(i32 %305)
  %307 = or i32 %302, %306
  %308 = call i32 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32 0)
  %309 = or i32 %307, %308
  %310 = call i32 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32 1)
  %311 = or i32 %309, %310
  %312 = call i32 @V_CPL_TX_SEC_PDU_CPLLEN(i32 2)
  %313 = or i32 %311, %312
  %314 = call i32 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32 0)
  %315 = or i32 %313, %314
  %316 = call i32 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32 1)
  %317 = or i32 %315, %316
  %318 = call i8* @htobe32(i32 %317)
  %319 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %320 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 5
  store i8* %318, i8** %321, align 8
  %322 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %323 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %327 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %325, %328
  %330 = call i8* @htobe32(i32 %329)
  %331 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %332 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 4
  store i8* %330, i8** %333, align 8
  %334 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %335 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, 1
  %339 = call i32 @V_CPL_TX_SEC_PDU_CIPHERSTART(i32 %338)
  %340 = call i32 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i32 0)
  %341 = or i32 %339, %340
  %342 = call i8* @htobe32(i32 %341)
  %343 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %344 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 3
  store i8* %342, i8** %345, align 8
  %346 = call i32 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i32 0)
  %347 = call i8* @htobe32(i32 %346)
  %348 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %349 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 2
  store i8* %347, i8** %350, align 8
  %351 = call i32 @V_SCMD_SEQ_NO_CTRL(i32 0)
  %352 = load i32, i32* @SCMD_PROTO_VERSION_GENERIC, align 4
  %353 = call i32 @V_SCMD_PROTO_VERSION(i32 %352)
  %354 = or i32 %351, %353
  %355 = load i64, i64* %16, align 8
  %356 = call i32 @V_SCMD_ENC_DEC_CTRL(i64 %355)
  %357 = or i32 %354, %356
  %358 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %359 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @V_SCMD_CIPH_MODE(i32 %361)
  %363 = or i32 %357, %362
  %364 = load i32, i32* @SCMD_AUTH_MODE_NOP, align 4
  %365 = call i32 @V_SCMD_AUTH_MODE(i32 %364)
  %366 = or i32 %363, %365
  %367 = load i32, i32* @SCMD_HMAC_CTRL_NOP, align 4
  %368 = call i32 @V_SCMD_HMAC_CTRL(i32 %367)
  %369 = or i32 %366, %368
  %370 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %371 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = sdiv i32 %373, 2
  %375 = call i32 @V_SCMD_IV_SIZE(i32 %374)
  %376 = or i32 %369, %375
  %377 = call i32 @V_SCMD_NUM_IVS(i32 0)
  %378 = or i32 %376, %377
  %379 = call i8* @htobe32(i32 %378)
  %380 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %381 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  store i8* %379, i8** %382, align 8
  %383 = call i32 @V_SCMD_IV_GEN_CTRL(i32 0)
  %384 = call i32 @V_SCMD_MORE_FRAGS(i32 0)
  %385 = or i32 %383, %384
  %386 = call i32 @V_SCMD_LAST_FRAG(i32 0)
  %387 = or i32 %385, %386
  %388 = call i32 @V_SCMD_MAC_ONLY(i32 0)
  %389 = or i32 %387, %388
  %390 = call i32 @V_SCMD_AADIVDROP(i32 1)
  %391 = or i32 %389, %390
  %392 = load i32, i32* %21, align 4
  %393 = call i32 @V_SCMD_HDR_LEN(i32 %392)
  %394 = or i32 %391, %393
  %395 = call i8* @htobe32(i32 %394)
  %396 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %397 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  store i8* %395, i8** %398, align 8
  %399 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %400 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %404 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 1
  store i32 %402, i32* %405, align 8
  %406 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %407 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  switch i32 %408, label %510 [
    i32 130, label %409
    i32 129, label %445
    i32 128, label %459
  ]

409:                                              ; preds = %292
  %410 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %411 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %430

416:                                              ; preds = %409
  %417 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %418 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i8*, i8** %419, align 8
  %421 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %422 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  %425 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %426 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = call i32 @memcpy(i8* %420, i8* %424, i64 %428)
  br label %444

430:                                              ; preds = %409
  %431 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %432 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 0
  %434 = load i8*, i8** %433, align 8
  %435 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %436 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 3
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %440 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = call i32 @memcpy(i8* %434, i8* %438, i64 %442)
  br label %444

444:                                              ; preds = %430, %416
  br label %510

445:                                              ; preds = %292
  %446 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %447 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %451 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 2
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %455 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call i32 @memcpy(i8* %449, i8* %453, i64 %457)
  br label %510

459:                                              ; preds = %292
  %460 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %461 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = sdiv i64 %463, 2
  store i64 %464, i64* %15, align 8
  %465 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %466 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %470 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 2
  %472 = load i8*, i8** %471, align 8
  %473 = load i64, i64* %15, align 8
  %474 = getelementptr inbounds i8, i8* %472, i64 %473
  %475 = load i64, i64* %15, align 8
  %476 = call i32 @memcpy(i8* %468, i8* %474, i64 %475)
  %477 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %478 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %496

483:                                              ; preds = %459
  %484 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %485 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = load i64, i64* %15, align 8
  %489 = getelementptr inbounds i8, i8* %487, i64 %488
  %490 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %491 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 2
  %493 = load i8*, i8** %492, align 8
  %494 = load i64, i64* %15, align 8
  %495 = call i32 @memcpy(i8* %489, i8* %493, i64 %494)
  br label %509

496:                                              ; preds = %459
  %497 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %498 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 0
  %500 = load i8*, i8** %499, align 8
  %501 = load i64, i64* %15, align 8
  %502 = getelementptr inbounds i8, i8* %500, i64 %501
  %503 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %504 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 3
  %506 = load i8*, i8** %505, align 8
  %507 = load i64, i64* %15, align 8
  %508 = call i32 @memcpy(i8* %502, i8* %506, i64 %507)
  br label %509

509:                                              ; preds = %496, %483
  br label %510

510:                                              ; preds = %292, %509, %445, %444
  %511 = load %struct.chcr_wr*, %struct.chcr_wr** %10, align 8
  %512 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %511, i64 1
  %513 = bitcast %struct.chcr_wr* %512 to i8*
  %514 = load i64, i64* %14, align 8
  %515 = getelementptr inbounds i8, i8* %513, i64 %514
  store i8* %515, i8** %13, align 8
  %516 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %517 = load i8*, i8** %13, align 8
  %518 = load i32, i32* %20, align 4
  %519 = call i32 @ccr_write_phys_dsgl(%struct.ccr_softc* %516, i8* %517, i32 %518)
  %520 = load i32, i32* %21, align 4
  %521 = sext i32 %520 to i64
  %522 = add i64 4, %521
  %523 = load i8*, i8** %13, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 %522
  store i8* %524, i8** %13, align 8
  %525 = load i8*, i8** %13, align 8
  %526 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %527 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = call i32 @memcpy(i8* %525, i8* %29, i64 %530)
  %532 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %533 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = load i8*, i8** %13, align 8
  %537 = sext i32 %535 to i64
  %538 = getelementptr inbounds i8, i8* %536, i64 %537
  store i8* %538, i8** %13, align 8
  %539 = load i64, i64* %19, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %556

541:                                              ; preds = %510
  %542 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %543 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %546 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %549 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %548, i32 0, i32 4
  %550 = load i32, i32* %549, align 8
  %551 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %552 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = load i8*, i8** %13, align 8
  %555 = call i32 @crypto_copydata(i32 %544, i32 %547, i32 %550, i32 %553, i8* %554)
  br label %561

556:                                              ; preds = %510
  %557 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %558 = load i8*, i8** %13, align 8
  %559 = load i32, i32* %22, align 4
  %560 = call i32 @ccr_write_ulptx_sgl(%struct.ccr_softc* %557, i8* %558, i32 %559)
  br label %561

561:                                              ; preds = %556, %541
  %562 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %563 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.wrqe*, %struct.wrqe** %11, align 8
  %566 = call i32 @t4_wrq_tx(i32 %564, %struct.wrqe* %565)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %567

567:                                              ; preds = %561, %196, %186, %158, %109, %98, %65, %57, %43
  %568 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %568)
  %569 = load i32, i32* %4, align 4
  ret i32 %569
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sglist_reset(%struct.TYPE_10__*) #2

declare dso_local i32 @sglist_append_sglist(%struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @ccr_count_sgl(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @ccr_phys_dsgl_len(i32) #2

declare dso_local i64 @roundup2(i64, i32) #2

declare dso_local i64 @CIPHER_TRANSHDR_SIZE(i64, i32) #2

declare dso_local i64 @ccr_use_imm_data(i64, i32) #2

declare dso_local i32 @ccr_ulptx_sgl_len(i32) #2

declare dso_local %struct.wrqe* @alloc_wrqe(i64, i32) #2

declare dso_local %struct.chcr_wr* @wrtod(%struct.wrqe*) #2

declare dso_local i32 @memset(%struct.chcr_wr*, i32, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @arc4rand(i8*, i64, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i64, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @ccr_populate_wreq(%struct.ccr_softc*, %struct.chcr_wr*, i64, i64, i64, i32, i32, %struct.cryptop*) #2

declare dso_local i8* @htobe32(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_OPCODE(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_RXCHID(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_CPLLEN(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_CIPHERSTART(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i32) #2

declare dso_local i32 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i32) #2

declare dso_local i32 @V_SCMD_SEQ_NO_CTRL(i32) #2

declare dso_local i32 @V_SCMD_PROTO_VERSION(i32) #2

declare dso_local i32 @V_SCMD_ENC_DEC_CTRL(i64) #2

declare dso_local i32 @V_SCMD_CIPH_MODE(i32) #2

declare dso_local i32 @V_SCMD_AUTH_MODE(i32) #2

declare dso_local i32 @V_SCMD_HMAC_CTRL(i32) #2

declare dso_local i32 @V_SCMD_IV_SIZE(i32) #2

declare dso_local i32 @V_SCMD_NUM_IVS(i32) #2

declare dso_local i32 @V_SCMD_IV_GEN_CTRL(i32) #2

declare dso_local i32 @V_SCMD_MORE_FRAGS(i32) #2

declare dso_local i32 @V_SCMD_LAST_FRAG(i32) #2

declare dso_local i32 @V_SCMD_MAC_ONLY(i32) #2

declare dso_local i32 @V_SCMD_AADIVDROP(i32) #2

declare dso_local i32 @V_SCMD_HDR_LEN(i32) #2

declare dso_local i32 @ccr_write_phys_dsgl(%struct.ccr_softc*, i8*, i32) #2

declare dso_local i32 @ccr_write_ulptx_sgl(%struct.ccr_softc*, i8*, i32) #2

declare dso_local i32 @t4_wrq_tx(i32, %struct.wrqe*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
