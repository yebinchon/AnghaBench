; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_gcm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ccr_session = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_11__ = type { i64, i32, i8*, i32 }
%struct.cryptop = type { i32, i32 }
%struct.cryptodesc = type { i64, i64, i32, i64, i8* }
%struct.chcr_wr = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wrqe = type { i32 }

@CHCR_MAX_CRYPTO_IV_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i64 0, align 8
@MAX_AAD_LEN = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i64 0, align 8
@CHCR_DECRYPT_OP = common dso_local global i64 0, align 8
@MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@DSGL_SGE_MAXLEN = common dso_local global i32 0, align 4
@MAX_RX_PHYS_DSGL_SGE = common dso_local global i32 0, align 4
@GMAC_BLOCK_LEN = common dso_local global i64 0, align 8
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CPL_TX_SEC_PDU = common dso_local global i32 0, align 4
@AES_GMAC_HASH_LEN = common dso_local global i32 0, align 4
@SCMD_PROTO_VERSION_GENERIC = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_GCM = common dso_local global i32 0, align 4
@SCMD_AUTH_MODE_GHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*)* @ccr_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_gcm(%struct.ccr_softc* %0, %struct.ccr_session* %1, %struct.cryptop* %2, %struct.cryptodesc* %3, %struct.cryptodesc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccr_softc*, align 8
  %8 = alloca %struct.ccr_session*, align 8
  %9 = alloca %struct.cryptop*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.chcr_wr*, align 8
  %15 = alloca %struct.wrqe*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.ccr_softc* %0, %struct.ccr_softc** %7, align 8
  store %struct.ccr_session* %1, %struct.ccr_session** %8, align 8
  store %struct.cryptop* %2, %struct.cryptop** %9, align 8
  store %struct.cryptodesc* %3, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %4, %struct.cryptodesc** %11, align 8
  %37 = load i32, i32* @CHCR_MAX_CRYPTO_IV_LEN, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %12, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %13, align 8
  %41 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %42 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

48:                                               ; preds = %5
  %49 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %50 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @EMSGSIZE, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

55:                                               ; preds = %48
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %57 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %60 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %64 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %67 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp sgt i64 %62, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @EMSGSIZE, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

73:                                               ; preds = %55
  %74 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %75 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AES_BLOCK_LEN, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* @MAX_AAD_LEN, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EMSGSIZE, align 4
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

83:                                               ; preds = %73
  %84 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %85 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %22, align 8
  %88 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %89 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  store i64 %95, i64* %19, align 8
  br label %98

96:                                               ; preds = %83
  %97 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %100 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* @AES_BLOCK_LEN, align 8
  store i64 %105, i64* %17, align 8
  br label %112

106:                                              ; preds = %98
  %107 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %108 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %17, align 8
  br label %112

112:                                              ; preds = %106, %104
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %119 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %123 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load i64, i64* %22, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* @EFBIG, align 4
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

132:                                              ; preds = %116
  br label %148

133:                                              ; preds = %112
  %134 = load i64, i64* %17, align 8
  %135 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %136 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %140 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @EFBIG, align 4
  store i32 %146, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147, %132
  %149 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %150 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %149, i32 0, i32 6
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = call i32 @sglist_reset(%struct.TYPE_12__* %151)
  %153 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %154 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %153, i32 0, i32 6
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %157 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %161 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %155, i32 %158, i64 0, i64 %163)
  store i32 %164, i32* %35, align 4
  %165 = load i32, i32* %35, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %148
  %168 = load i32, i32* %35, align 4
  store i32 %168, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

169:                                              ; preds = %148
  %170 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %171 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %170, i32 0, i32 6
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %174 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %177 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %180 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %172, i32 %175, i64 %178, i64 %181)
  store i32 %182, i32* %35, align 4
  %183 = load i32, i32* %35, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %169
  %186 = load i32, i32* %35, align 4
  store i32 %186, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

187:                                              ; preds = %169
  %188 = load i64, i64* %19, align 8
  %189 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %187
  %192 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %193 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %192, i32 0, i32 6
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %196 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %199 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %22, align 8
  %202 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %194, i32 %197, i64 %200, i64 %201)
  store i32 %202, i32* %35, align 4
  %203 = load i32, i32* %35, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %191
  %206 = load i32, i32* %35, align 4
  store i32 %206, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

207:                                              ; preds = %191
  br label %208

208:                                              ; preds = %207, %187
  %209 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %210 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %209, i32 0, i32 6
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* @DSGL_SGE_MAXLEN, align 4
  %213 = call i32 @ccr_count_sgl(%struct.TYPE_12__* %211, i32 %212)
  store i32 %213, i32* %31, align 4
  %214 = load i32, i32* %31, align 4
  %215 = load i32, i32* @MAX_RX_PHYS_DSGL_SGE, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %208
  %218 = load i32, i32* @EFBIG, align 4
  store i32 %218, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

219:                                              ; preds = %208
  %220 = load i32, i32* %31, align 4
  %221 = call i32 @ccr_phys_dsgl_len(i32 %220)
  store i32 %221, i32* %32, align 4
  %222 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %223 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @roundup2(i64 %225, i32 16)
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @GMAC_BLOCK_LEN, align 8
  %229 = add nsw i64 %227, %228
  store i64 %229, i64* %18, align 8
  %230 = load i64, i64* %18, align 8
  %231 = load i32, i32* %32, align 4
  %232 = call i64 @CIPHER_TRANSHDR_SIZE(i64 %230, i32 %231)
  store i64 %232, i64* %20, align 8
  %233 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %234 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %237 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %235, %238
  store i64 %239, i64* %30, align 8
  %240 = load i64, i64* %19, align 8
  %241 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %219
  %244 = load i64, i64* %22, align 8
  %245 = load i64, i64* %30, align 8
  %246 = add nsw i64 %245, %244
  store i64 %246, i64* %30, align 8
  br label %247

247:                                              ; preds = %243, %219
  %248 = load i64, i64* %30, align 8
  %249 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32, i32* @EFBIG, align 4
  store i32 %252, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

253:                                              ; preds = %247
  %254 = load i64, i64* %20, align 8
  %255 = load i64, i64* %17, align 8
  %256 = load i64, i64* %30, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i64 @ccr_use_imm_data(i64 %254, i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = load i64, i64* %30, align 8
  store i64 %261, i64* %23, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %337

262:                                              ; preds = %253
  store i64 0, i64* %23, align 8
  %263 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %264 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %263, i32 0, i32 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  %266 = call i32 @sglist_reset(%struct.TYPE_12__* %265)
  %267 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %268 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %262
  %272 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %273 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %272, i32 0, i32 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %276 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %279 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %282 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %274, i32 %277, i64 %280, i64 %283)
  store i32 %284, i32* %35, align 4
  %285 = load i32, i32* %35, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %271
  %288 = load i32, i32* %35, align 4
  store i32 %288, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

289:                                              ; preds = %271
  br label %290

290:                                              ; preds = %289, %262
  %291 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %292 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %291, i32 0, i32 4
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %295 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %298 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %301 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %293, i32 %296, i64 %299, i64 %302)
  store i32 %303, i32* %35, align 4
  %304 = load i32, i32* %35, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %290
  %307 = load i32, i32* %35, align 4
  store i32 %307, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

308:                                              ; preds = %290
  %309 = load i64, i64* %19, align 8
  %310 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %329

312:                                              ; preds = %308
  %313 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %314 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %313, i32 0, i32 4
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  %316 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %317 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %320 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* %22, align 8
  %323 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %315, i32 %318, i64 %321, i64 %322)
  store i32 %323, i32* %35, align 4
  %324 = load i32, i32* %35, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %312
  %327 = load i32, i32* %35, align 4
  store i32 %327, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

328:                                              ; preds = %312
  br label %329

329:                                              ; preds = %328, %308
  %330 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %331 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %330, i32 0, i32 4
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %33, align 4
  %335 = load i32, i32* %33, align 4
  %336 = call i32 @ccr_ulptx_sgl_len(i32 %335)
  store i32 %336, i32* %34, align 4
  br label %337

337:                                              ; preds = %329, %260
  %338 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %339 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %337
  %343 = load i64, i64* %17, align 8
  %344 = add nsw i64 %343, 1
  store i64 %344, i64* %24, align 8
  %345 = load i64, i64* %24, align 8
  %346 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %347 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %345, %348
  %350 = sub nsw i64 %349, 1
  store i64 %350, i64* %25, align 8
  br label %352

351:                                              ; preds = %337
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  br label %352

352:                                              ; preds = %351, %342
  %353 = load i64, i64* %17, align 8
  %354 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %355 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %353, %356
  %358 = add nsw i64 %357, 1
  store i64 %358, i64* %26, align 8
  %359 = load i64, i64* %19, align 8
  %360 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %352
  %363 = load i64, i64* %22, align 8
  store i64 %363, i64* %27, align 8
  br label %365

364:                                              ; preds = %352
  store i64 0, i64* %27, align 8
  br label %365

365:                                              ; preds = %364, %362
  %366 = load i64, i64* %19, align 8
  %367 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = load i64, i64* %22, align 8
  store i64 %370, i64* %28, align 8
  br label %372

371:                                              ; preds = %365
  store i64 0, i64* %28, align 8
  br label %372

372:                                              ; preds = %371, %369
  %373 = load i64, i64* %20, align 8
  %374 = call i32 @roundup2(i64 %373, i32 16)
  %375 = sext i32 %374 to i64
  %376 = load i64, i64* %17, align 8
  %377 = add nsw i64 %375, %376
  %378 = load i64, i64* %23, align 8
  %379 = call i32 @roundup2(i64 %378, i32 16)
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %377, %380
  %382 = load i32, i32* %34, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %381, %383
  store i64 %384, i64* %21, align 8
  %385 = load i64, i64* %21, align 8
  %386 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %387 = icmp sgt i64 %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %372
  %389 = load i32, i32* @EFBIG, align 4
  store i32 %389, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

390:                                              ; preds = %372
  %391 = load i64, i64* %21, align 8
  %392 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %393 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = call %struct.wrqe* @alloc_wrqe(i64 %391, i32 %394)
  store %struct.wrqe* %395, %struct.wrqe** %15, align 8
  %396 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %397 = icmp eq %struct.wrqe* %396, null
  br i1 %397, label %398, label %404

398:                                              ; preds = %390
  %399 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %400 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 8
  %403 = load i32, i32* @ENOMEM, align 4
  store i32 %403, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

404:                                              ; preds = %390
  %405 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %406 = call %struct.chcr_wr* @wrtod(%struct.wrqe* %405)
  store %struct.chcr_wr* %406, %struct.chcr_wr** %14, align 8
  %407 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %408 = load i64, i64* %21, align 8
  %409 = call i32 @memset(%struct.chcr_wr* %407, i32 0, i64 %408)
  %410 = load i64, i64* %19, align 8
  %411 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %461

413:                                              ; preds = %404
  %414 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %415 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %430

420:                                              ; preds = %413
  %421 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %422 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %421, i32 0, i32 4
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %425 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = sext i32 %427 to i64
  %429 = call i32 @memcpy(i8* %40, i8* %423, i64 %428)
  br label %437

430:                                              ; preds = %413
  %431 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %432 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = call i32 @arc4rand(i8* %40, i64 %435, i32 0)
  br label %437

437:                                              ; preds = %430, %420
  %438 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %439 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %442 = and i32 %440, %441
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %437
  %445 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %446 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %449 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %452 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %451, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %455 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = call i32 @crypto_copyback(i32 %447, i32 %450, i64 %453, i64 %458, i8* %40)
  br label %460

460:                                              ; preds = %444, %437
  br label %495

461:                                              ; preds = %404
  %462 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %463 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %478

468:                                              ; preds = %461
  %469 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %470 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %469, i32 0, i32 4
  %471 = load i8*, i8** %470, align 8
  %472 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %473 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = sext i32 %475 to i64
  %477 = call i32 @memcpy(i8* %40, i8* %471, i64 %476)
  br label %494

478:                                              ; preds = %461
  %479 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %480 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %483 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %486 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %489 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = call i32 @crypto_copydata(i32 %481, i32 %484, i64 %487, i64 %492, i8* %40)
  br label %494

494:                                              ; preds = %478, %468
  br label %495

495:                                              ; preds = %494, %460
  %496 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %497 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = icmp eq i32 %499, 12
  br i1 %500, label %501, label %505

501:                                              ; preds = %495
  %502 = call i8* @htobe32(i64 1)
  %503 = getelementptr inbounds i8, i8* %40, i64 12
  %504 = bitcast i8* %503 to i8**
  store i8* %502, i8** %504, align 4
  br label %505

505:                                              ; preds = %501, %495
  %506 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %507 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %508 = load i64, i64* %18, align 8
  %509 = load i64, i64* %21, align 8
  %510 = load i64, i64* %23, align 8
  %511 = load i32, i32* %34, align 4
  %512 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %513 = call i32 @ccr_populate_wreq(%struct.ccr_softc* %506, %struct.chcr_wr* %507, i64 %508, i64 %509, i64 %510, i32 %511, i32 0, %struct.cryptop* %512)
  %514 = load i32, i32* @CPL_TX_SEC_PDU, align 4
  %515 = call i64 @V_CPL_TX_SEC_PDU_OPCODE(i32 %514)
  %516 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %517 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = call i64 @V_CPL_TX_SEC_PDU_RXCHID(i32 %518)
  %520 = or i64 %515, %519
  %521 = call i64 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32 0)
  %522 = or i64 %520, %521
  %523 = call i64 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32 1)
  %524 = or i64 %522, %523
  %525 = call i64 @V_CPL_TX_SEC_PDU_CPLLEN(i32 2)
  %526 = or i64 %524, %525
  %527 = call i64 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32 0)
  %528 = or i64 %526, %527
  %529 = call i64 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32 1)
  %530 = or i64 %528, %529
  %531 = call i8* @htobe32(i64 %530)
  %532 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %533 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 5
  store i8* %531, i8** %534, align 8
  %535 = load i64, i64* %17, align 8
  %536 = load i64, i64* %30, align 8
  %537 = add nsw i64 %535, %536
  %538 = call i8* @htobe32(i64 %537)
  %539 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %540 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 4
  store i8* %538, i8** %541, align 8
  %542 = load i64, i64* %24, align 8
  %543 = call i64 @V_CPL_TX_SEC_PDU_AADSTART(i64 %542)
  %544 = load i64, i64* %25, align 8
  %545 = call i64 @V_CPL_TX_SEC_PDU_AADSTOP(i64 %544)
  %546 = or i64 %543, %545
  %547 = load i64, i64* %26, align 8
  %548 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTART(i64 %547)
  %549 = or i64 %546, %548
  %550 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i32 0)
  %551 = or i64 %549, %550
  %552 = call i8* @htobe32(i64 %551)
  %553 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %554 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 3
  store i8* %552, i8** %555, align 8
  %556 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i32 0)
  %557 = load i64, i64* %26, align 8
  %558 = call i64 @V_CPL_TX_SEC_PDU_AUTHSTART(i64 %557)
  %559 = or i64 %556, %558
  %560 = load i64, i64* %27, align 8
  %561 = call i64 @V_CPL_TX_SEC_PDU_AUTHSTOP(i64 %560)
  %562 = or i64 %559, %561
  %563 = load i64, i64* %28, align 8
  %564 = call i64 @V_CPL_TX_SEC_PDU_AUTHINSERT(i64 %563)
  %565 = or i64 %562, %564
  %566 = call i8* @htobe32(i64 %565)
  %567 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %568 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 2
  store i8* %566, i8** %569, align 8
  %570 = load i32, i32* @AES_GMAC_HASH_LEN, align 4
  %571 = load i64, i64* %22, align 8
  %572 = call i64 @ccr_hmac_ctrl(i32 %570, i64 %571)
  store i64 %572, i64* %29, align 8
  %573 = call i64 @V_SCMD_SEQ_NO_CTRL(i32 0)
  %574 = load i32, i32* @SCMD_PROTO_VERSION_GENERIC, align 4
  %575 = call i64 @V_SCMD_PROTO_VERSION(i32 %574)
  %576 = or i64 %573, %575
  %577 = load i64, i64* %19, align 8
  %578 = call i64 @V_SCMD_ENC_DEC_CTRL(i64 %577)
  %579 = or i64 %576, %578
  %580 = load i64, i64* %19, align 8
  %581 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %582 = icmp eq i64 %580, %581
  %583 = zext i1 %582 to i64
  %584 = select i1 %582, i32 1, i32 0
  %585 = call i64 @V_SCMD_CIPH_AUTH_SEQ_CTRL(i32 %584)
  %586 = or i64 %579, %585
  %587 = load i32, i32* @SCMD_CIPH_MODE_AES_GCM, align 4
  %588 = call i64 @V_SCMD_CIPH_MODE(i32 %587)
  %589 = or i64 %586, %588
  %590 = load i32, i32* @SCMD_AUTH_MODE_GHASH, align 4
  %591 = call i64 @V_SCMD_AUTH_MODE(i32 %590)
  %592 = or i64 %589, %591
  %593 = load i64, i64* %29, align 8
  %594 = call i64 @V_SCMD_HMAC_CTRL(i64 %593)
  %595 = or i64 %592, %594
  %596 = load i64, i64* %17, align 8
  %597 = sdiv i64 %596, 2
  %598 = call i64 @V_SCMD_IV_SIZE(i64 %597)
  %599 = or i64 %595, %598
  %600 = call i64 @V_SCMD_NUM_IVS(i32 0)
  %601 = or i64 %599, %600
  %602 = call i8* @htobe32(i64 %601)
  %603 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %604 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 1
  store i8* %602, i8** %605, align 8
  %606 = call i64 @V_SCMD_IV_GEN_CTRL(i32 0)
  %607 = call i64 @V_SCMD_MORE_FRAGS(i32 0)
  %608 = or i64 %606, %607
  %609 = call i64 @V_SCMD_LAST_FRAG(i32 0)
  %610 = or i64 %608, %609
  %611 = call i64 @V_SCMD_MAC_ONLY(i32 0)
  %612 = or i64 %610, %611
  %613 = call i64 @V_SCMD_AADIVDROP(i32 0)
  %614 = or i64 %612, %613
  %615 = load i32, i32* %32, align 4
  %616 = call i64 @V_SCMD_HDR_LEN(i32 %615)
  %617 = or i64 %614, %616
  %618 = call i8* @htobe32(i64 %617)
  %619 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %620 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %620, i32 0, i32 0
  store i8* %618, i8** %621, align 8
  %622 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %623 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %623, i32 0, i32 3
  %625 = load i32, i32* %624, align 8
  %626 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %627 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %627, i32 0, i32 1
  store i32 %625, i32* %628, align 8
  %629 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %630 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  %632 = load i8*, i8** %631, align 8
  %633 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %634 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %634, i32 0, i32 2
  %636 = load i8*, i8** %635, align 8
  %637 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %638 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = call i32 @memcpy(i8* %632, i8* %636, i64 %640)
  %642 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %643 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %643, i32 0, i32 0
  %645 = load i8*, i8** %644, align 8
  %646 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %647 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = call i32 @roundup2(i64 %649, i32 16)
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8, i8* %645, i64 %651
  store i8* %652, i8** %16, align 8
  %653 = load i8*, i8** %16, align 8
  %654 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %655 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %655, i32 0, i32 1
  %657 = load i8*, i8** %656, align 8
  %658 = load i64, i64* @GMAC_BLOCK_LEN, align 8
  %659 = call i32 @memcpy(i8* %653, i8* %657, i64 %658)
  %660 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %661 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %660, i64 1
  %662 = bitcast %struct.chcr_wr* %661 to i8*
  %663 = load i64, i64* %18, align 8
  %664 = getelementptr inbounds i8, i8* %662, i64 %663
  store i8* %664, i8** %16, align 8
  %665 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %666 = load i8*, i8** %16, align 8
  %667 = load i32, i32* %31, align 4
  %668 = call i32 @ccr_write_phys_dsgl(%struct.ccr_softc* %665, i8* %666, i32 %667)
  %669 = load i32, i32* %32, align 4
  %670 = sext i32 %669 to i64
  %671 = add i64 4, %670
  %672 = load i8*, i8** %16, align 8
  %673 = getelementptr inbounds i8, i8* %672, i64 %671
  store i8* %673, i8** %16, align 8
  %674 = load i8*, i8** %16, align 8
  %675 = load i64, i64* %17, align 8
  %676 = call i32 @memcpy(i8* %674, i8* %40, i64 %675)
  %677 = load i64, i64* %17, align 8
  %678 = load i8*, i8** %16, align 8
  %679 = getelementptr inbounds i8, i8* %678, i64 %677
  store i8* %679, i8** %16, align 8
  %680 = load i64, i64* %23, align 8
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %744

682:                                              ; preds = %505
  %683 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %684 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %683, i32 0, i32 0
  %685 = load i64, i64* %684, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %707

687:                                              ; preds = %682
  %688 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %689 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %688, i32 0, i32 1
  %690 = load i32, i32* %689, align 4
  %691 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %692 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 4
  %694 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %695 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %694, i32 0, i32 1
  %696 = load i64, i64* %695, align 8
  %697 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %698 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %697, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = load i8*, i8** %16, align 8
  %701 = call i32 @crypto_copydata(i32 %690, i32 %693, i64 %696, i64 %699, i8* %700)
  %702 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %703 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %702, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  %705 = load i8*, i8** %16, align 8
  %706 = getelementptr inbounds i8, i8* %705, i64 %704
  store i8* %706, i8** %16, align 8
  br label %707

707:                                              ; preds = %687, %682
  %708 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %709 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %712 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %715 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %714, i32 0, i32 1
  %716 = load i64, i64* %715, align 8
  %717 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %718 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %717, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = load i8*, i8** %16, align 8
  %721 = call i32 @crypto_copydata(i32 %710, i32 %713, i64 %716, i64 %719, i8* %720)
  %722 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %723 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %722, i32 0, i32 0
  %724 = load i64, i64* %723, align 8
  %725 = load i8*, i8** %16, align 8
  %726 = getelementptr inbounds i8, i8* %725, i64 %724
  store i8* %726, i8** %16, align 8
  %727 = load i64, i64* %19, align 8
  %728 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %729 = icmp eq i64 %727, %728
  br i1 %729, label %730, label %743

730:                                              ; preds = %707
  %731 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %732 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %735 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 4
  %737 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %738 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %737, i32 0, i32 3
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* %22, align 8
  %741 = load i8*, i8** %16, align 8
  %742 = call i32 @crypto_copydata(i32 %733, i32 %736, i64 %739, i64 %740, i8* %741)
  br label %743

743:                                              ; preds = %730, %707
  br label %749

744:                                              ; preds = %505
  %745 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %746 = load i8*, i8** %16, align 8
  %747 = load i32, i32* %33, align 4
  %748 = call i32 @ccr_write_ulptx_sgl(%struct.ccr_softc* %745, i8* %746, i32 %747)
  br label %749

749:                                              ; preds = %744, %743
  %750 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %751 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %754 = call i32 @t4_wrq_tx(i32 %752, %struct.wrqe* %753)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %755

755:                                              ; preds = %749, %398, %388, %326, %306, %287, %251, %217, %205, %185, %167, %145, %130, %81, %71, %53, %46
  %756 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %756)
  %757 = load i32, i32* %6, align 4
  ret i32 %757
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sglist_reset(%struct.TYPE_12__*) #2

declare dso_local i32 @sglist_append_sglist(%struct.TYPE_12__*, i32, i64, i64) #2

declare dso_local i32 @ccr_count_sgl(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @ccr_phys_dsgl_len(i32) #2

declare dso_local i32 @roundup2(i64, i32) #2

declare dso_local i64 @CIPHER_TRANSHDR_SIZE(i64, i32) #2

declare dso_local i64 @ccr_use_imm_data(i64, i64) #2

declare dso_local i32 @ccr_ulptx_sgl_len(i32) #2

declare dso_local %struct.wrqe* @alloc_wrqe(i64, i32) #2

declare dso_local %struct.chcr_wr* @wrtod(%struct.wrqe*) #2

declare dso_local i32 @memset(%struct.chcr_wr*, i32, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @arc4rand(i8*, i64, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i64, i64, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i64, i64, i8*) #2

declare dso_local i8* @htobe32(i64) #2

declare dso_local i32 @ccr_populate_wreq(%struct.ccr_softc*, %struct.chcr_wr*, i64, i64, i64, i32, i32, %struct.cryptop*) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_OPCODE(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_RXCHID(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_CPLLEN(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AADSTART(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AADSTOP(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_CIPHERSTART(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i32) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHSTART(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHSTOP(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHINSERT(i64) #2

declare dso_local i64 @ccr_hmac_ctrl(i32, i64) #2

declare dso_local i64 @V_SCMD_SEQ_NO_CTRL(i32) #2

declare dso_local i64 @V_SCMD_PROTO_VERSION(i32) #2

declare dso_local i64 @V_SCMD_ENC_DEC_CTRL(i64) #2

declare dso_local i64 @V_SCMD_CIPH_AUTH_SEQ_CTRL(i32) #2

declare dso_local i64 @V_SCMD_CIPH_MODE(i32) #2

declare dso_local i64 @V_SCMD_AUTH_MODE(i32) #2

declare dso_local i64 @V_SCMD_HMAC_CTRL(i64) #2

declare dso_local i64 @V_SCMD_IV_SIZE(i64) #2

declare dso_local i64 @V_SCMD_NUM_IVS(i32) #2

declare dso_local i64 @V_SCMD_IV_GEN_CTRL(i32) #2

declare dso_local i64 @V_SCMD_MORE_FRAGS(i32) #2

declare dso_local i64 @V_SCMD_LAST_FRAG(i32) #2

declare dso_local i64 @V_SCMD_MAC_ONLY(i32) #2

declare dso_local i64 @V_SCMD_AADIVDROP(i32) #2

declare dso_local i64 @V_SCMD_HDR_LEN(i32) #2

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
