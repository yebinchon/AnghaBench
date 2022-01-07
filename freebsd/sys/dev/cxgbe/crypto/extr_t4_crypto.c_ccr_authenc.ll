; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_authenc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_authenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ccr_session = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i8*, i8*, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i8*, i32, %struct.auth_hash* }
%struct.auth_hash = type { i64 }
%struct.cryptop = type { i32, i32 }
%struct.cryptodesc = type { i64, i32, i64, i32, i64, i8* }
%struct.chcr_wr = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wrqe = type { i32 }

@CHCR_MAX_CRYPTO_IV_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@MAX_AAD_LEN = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i64 0, align 8
@CHCR_DECRYPT_OP = common dso_local global i64 0, align 8
@MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@DSGL_SGE_MAXLEN = common dso_local global i32 0, align 4
@MAX_RX_PHYS_DSGL_SGE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CPL_TX_SEC_PDU = common dso_local global i32 0, align 4
@SCMD_PROTO_VERSION_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*)* @ccr_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_authenc(%struct.ccr_softc* %0, %struct.ccr_session* %1, %struct.cryptop* %2, %struct.cryptodesc* %3, %struct.cryptodesc* %4) #0 {
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
  %16 = alloca %struct.auth_hash*, align 8
  %17 = alloca i8*, align 8
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
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.ccr_softc* %0, %struct.ccr_softc** %7, align 8
  store %struct.ccr_session* %1, %struct.ccr_session** %8, align 8
  store %struct.cryptop* %2, %struct.cryptop** %9, align 8
  store %struct.cryptodesc* %3, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %4, %struct.cryptodesc** %11, align 8
  %42 = load i32, i32* @CHCR_MAX_CRYPTO_IV_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %47 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %5
  %52 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %53 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %5
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

58:                                               ; preds = %51
  %59 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %60 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 130
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @AES_BLOCK_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = srem i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

73:                                               ; preds = %63, %58
  %74 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %75 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %78 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %82 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %85 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = icmp sgt i64 %80, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

91:                                               ; preds = %73
  %92 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %93 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %96 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %91
  %100 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %101 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %104 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %108 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %113 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %116 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  store i64 %118, i64* %27, align 8
  br label %123

119:                                              ; preds = %99
  %120 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %121 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %27, align 8
  br label %123

123:                                              ; preds = %119, %111
  br label %125

124:                                              ; preds = %91
  store i64 0, i64* %27, align 8
  br label %125

125:                                              ; preds = %124, %123
  %126 = load i64, i64* %27, align 8
  %127 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %128 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %126, %130
  %132 = load i64, i64* @MAX_AAD_LEN, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

136:                                              ; preds = %125
  %137 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %138 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = load %struct.auth_hash*, %struct.auth_hash** %139, align 8
  store %struct.auth_hash* %140, %struct.auth_hash** %16, align 8
  %141 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %142 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %23, align 8
  %145 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %146 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %136
  %152 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  store i64 %152, i64* %20, align 8
  br label %155

153:                                              ; preds = %136
  %154 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  store i64 %154, i64* %20, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %155
  %160 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %161 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %27, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %167 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load i64, i64* %23, align 8
  %171 = add nsw i64 %169, %170
  %172 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %159
  %175 = load i32, i32* @EFBIG, align 4
  store i32 %175, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

176:                                              ; preds = %159
  br label %193

177:                                              ; preds = %155
  %178 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %179 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %27, align 8
  %183 = add nsw i64 %181, %182
  %184 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %185 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %177
  %191 = load i32, i32* @EFBIG, align 4
  store i32 %191, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %192, %176
  %194 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %195 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %194, i32 0, i32 6
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = call i32 @sglist_reset(%struct.TYPE_12__* %196)
  %198 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %199 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %198, i32 0, i32 6
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %202 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %205 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %27, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %200, i32 %203, i64 0, i64 %209)
  store i32 %210, i32* %40, align 4
  %211 = load i32, i32* %40, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %193
  %214 = load i32, i32* %40, align 4
  store i32 %214, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

215:                                              ; preds = %193
  %216 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %217 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %216, i32 0, i32 6
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %220 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %223 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %226 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %218, i32 %221, i64 %224, i64 %227)
  store i32 %228, i32* %40, align 4
  %229 = load i32, i32* %40, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %215
  %232 = load i32, i32* %40, align 4
  store i32 %232, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

233:                                              ; preds = %215
  %234 = load i64, i64* %20, align 8
  %235 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %233
  %238 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %239 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %238, i32 0, i32 6
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %242 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %245 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %23, align 8
  %248 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %240, i32 %243, i64 %246, i64 %247)
  store i32 %248, i32* %40, align 4
  %249 = load i32, i32* %40, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %237
  %252 = load i32, i32* %40, align 4
  store i32 %252, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

253:                                              ; preds = %237
  br label %254

254:                                              ; preds = %253, %233
  %255 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %256 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %255, i32 0, i32 6
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = load i32, i32* @DSGL_SGE_MAXLEN, align 4
  %259 = call i32 @ccr_count_sgl(%struct.TYPE_12__* %257, i32 %258)
  store i32 %259, i32* %36, align 4
  %260 = load i32, i32* %36, align 4
  %261 = load i32, i32* @MAX_RX_PHYS_DSGL_SGE, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %254
  %264 = load i32, i32* @EFBIG, align 4
  store i32 %264, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

265:                                              ; preds = %254
  %266 = load i32, i32* %36, align 4
  %267 = call i32 @ccr_phys_dsgl_len(i32 %266)
  store i32 %267, i32* %37, align 4
  %268 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %269 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @roundup2(i64 %271, i32 16)
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %25, align 8
  %274 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %275 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @roundup2(i64 %277, i32 16)
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %25, align 8
  %281 = mul nsw i64 %280, 2
  %282 = add nsw i64 %279, %281
  store i64 %282, i64* %18, align 8
  %283 = load i64, i64* %18, align 8
  %284 = load i32, i32* %37, align 4
  %285 = call i64 @CIPHER_TRANSHDR_SIZE(i64 %283, i32 %284)
  store i64 %285, i64* %21, align 8
  %286 = load i64, i64* %27, align 8
  %287 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %288 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %286, %289
  store i64 %290, i64* %35, align 8
  %291 = load i64, i64* %35, align 8
  %292 = load %struct.auth_hash*, %struct.auth_hash** %16, align 8
  %293 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @roundup2(i64 %294, i32 16)
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %291, %296
  %298 = add nsw i64 %297, 496
  %299 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %300 = icmp sgt i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %265
  %302 = load i32, i32* @EFBIG, align 4
  store i32 %302, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

303:                                              ; preds = %265
  %304 = load i64, i64* %20, align 8
  %305 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load i64, i64* %23, align 8
  %309 = load i64, i64* %35, align 8
  %310 = add nsw i64 %309, %308
  store i64 %310, i64* %35, align 8
  br label %311

311:                                              ; preds = %307, %303
  %312 = load i64, i64* %21, align 8
  %313 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %314 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* %35, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i64 @ccr_use_imm_data(i64 %312, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %311
  %322 = load i64, i64* %35, align 8
  store i64 %322, i64* %24, align 8
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  br label %394

323:                                              ; preds = %311
  store i64 0, i64* %24, align 8
  %324 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %325 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %324, i32 0, i32 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = call i32 @sglist_reset(%struct.TYPE_12__* %326)
  %328 = load i64, i64* %27, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %347

330:                                              ; preds = %323
  %331 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %332 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %331, i32 0, i32 4
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %332, align 8
  %334 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %335 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %338 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* %27, align 8
  %341 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %333, i32 %336, i64 %339, i64 %340)
  store i32 %341, i32* %40, align 4
  %342 = load i32, i32* %40, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %330
  %345 = load i32, i32* %40, align 4
  store i32 %345, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

346:                                              ; preds = %330
  br label %347

347:                                              ; preds = %346, %323
  %348 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %349 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %348, i32 0, i32 4
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %349, align 8
  %351 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %352 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %355 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %358 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %350, i32 %353, i64 %356, i64 %359)
  store i32 %360, i32* %40, align 4
  %361 = load i32, i32* %40, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %347
  %364 = load i32, i32* %40, align 4
  store i32 %364, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

365:                                              ; preds = %347
  %366 = load i64, i64* %20, align 8
  %367 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %386

369:                                              ; preds = %365
  %370 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %371 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %370, i32 0, i32 4
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %374 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %377 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* %23, align 8
  %380 = call i32 @sglist_append_sglist(%struct.TYPE_12__* %372, i32 %375, i64 %378, i64 %379)
  store i32 %380, i32* %40, align 4
  %381 = load i32, i32* %40, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %369
  %384 = load i32, i32* %40, align 4
  store i32 %384, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

385:                                              ; preds = %369
  br label %386

386:                                              ; preds = %385, %365
  %387 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %388 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %387, i32 0, i32 4
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %38, align 4
  %392 = load i32, i32* %38, align 4
  %393 = call i32 @ccr_ulptx_sgl_len(i32 %392)
  store i32 %393, i32* %39, align 4
  br label %394

394:                                              ; preds = %386, %321
  %395 = load i64, i64* %27, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %407

397:                                              ; preds = %394
  %398 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %399 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %401, 1
  store i64 %402, i64* %26, align 8
  %403 = load i64, i64* %26, align 8
  %404 = load i64, i64* %27, align 8
  %405 = add nsw i64 %403, %404
  %406 = sub nsw i64 %405, 1
  store i64 %406, i64* %28, align 8
  br label %408

407:                                              ; preds = %394
  store i64 0, i64* %26, align 8
  store i64 0, i64* %28, align 8
  br label %408

408:                                              ; preds = %407, %397
  %409 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %410 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* %27, align 8
  %414 = add nsw i64 %412, %413
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %32, align 8
  %416 = load i64, i64* %20, align 8
  %417 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %408
  %420 = load i64, i64* %23, align 8
  store i64 %420, i64* %33, align 8
  br label %422

421:                                              ; preds = %408
  store i64 0, i64* %33, align 8
  br label %422

422:                                              ; preds = %421, %419
  %423 = load i64, i64* %27, align 8
  %424 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %425 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = icmp eq i64 %423, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %422
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  br label %466

429:                                              ; preds = %422
  %430 = load i64, i64* %27, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = load i64, i64* %32, align 8
  store i64 %433, i64* %29, align 8
  br label %448

434:                                              ; preds = %429
  %435 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %436 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %440 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %439, i32 0, i32 2
  %441 = load i64, i64* %440, align 8
  %442 = add nsw i64 %438, %441
  %443 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %444 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %443, i32 0, i32 2
  %445 = load i64, i64* %444, align 8
  %446 = sub nsw i64 %442, %445
  %447 = add nsw i64 %446, 1
  store i64 %447, i64* %29, align 8
  br label %448

448:                                              ; preds = %434, %432
  %449 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %450 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %449, i32 0, i32 2
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %453 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %451, %454
  %456 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %457 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %460 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = add nsw i64 %458, %461
  %463 = sub nsw i64 %455, %462
  %464 = load i64, i64* %33, align 8
  %465 = add nsw i64 %463, %464
  store i64 %465, i64* %30, align 8
  br label %466

466:                                              ; preds = %448, %428
  %467 = load i64, i64* %20, align 8
  %468 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %466
  %471 = load i64, i64* %23, align 8
  store i64 %471, i64* %31, align 8
  br label %473

472:                                              ; preds = %466
  store i64 0, i64* %31, align 8
  br label %473

473:                                              ; preds = %472, %470
  %474 = load i64, i64* %21, align 8
  %475 = call i32 @roundup2(i64 %474, i32 16)
  %476 = sext i32 %475 to i64
  %477 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %478 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = add nsw i64 %476, %480
  %482 = load i64, i64* %24, align 8
  %483 = call i32 @roundup2(i64 %482, i32 16)
  %484 = sext i32 %483 to i64
  %485 = add nsw i64 %481, %484
  %486 = load i32, i32* %39, align 4
  %487 = sext i32 %486 to i64
  %488 = add nsw i64 %485, %487
  store i64 %488, i64* %22, align 8
  %489 = load i64, i64* %22, align 8
  %490 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %491 = icmp sgt i64 %489, %490
  br i1 %491, label %492, label %494

492:                                              ; preds = %473
  %493 = load i32, i32* @EFBIG, align 4
  store i32 %493, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

494:                                              ; preds = %473
  %495 = load i64, i64* %22, align 8
  %496 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %497 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = call %struct.wrqe* @alloc_wrqe(i64 %495, i32 %498)
  store %struct.wrqe* %499, %struct.wrqe** %15, align 8
  %500 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %501 = icmp eq %struct.wrqe* %500, null
  br i1 %501, label %502, label %508

502:                                              ; preds = %494
  %503 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %504 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %504, align 8
  %507 = load i32, i32* @ENOMEM, align 4
  store i32 %507, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

508:                                              ; preds = %494
  %509 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %510 = call %struct.chcr_wr* @wrtod(%struct.wrqe* %509)
  store %struct.chcr_wr* %510, %struct.chcr_wr** %14, align 8
  %511 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %512 = load i64, i64* %22, align 8
  %513 = call i32 @memset(%struct.chcr_wr* %511, i32 0, i64 %512)
  %514 = load i64, i64* %20, align 8
  %515 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %517, label %562

517:                                              ; preds = %508
  %518 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %519 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %533

524:                                              ; preds = %517
  %525 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %526 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %525, i32 0, i32 5
  %527 = load i8*, i8** %526, align 8
  %528 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %529 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = call i32 @memcpy(i8* %45, i8* %527, i64 %531)
  br label %539

533:                                              ; preds = %517
  %534 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %535 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = call i32 @arc4rand(i8* %45, i64 %537, i32 0)
  br label %539

539:                                              ; preds = %533, %524
  %540 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %541 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 8
  %543 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %544 = and i32 %542, %543
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %561

546:                                              ; preds = %539
  %547 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %548 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %551 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %554 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %553, i32 0, i32 4
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %557 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %557, i32 0, i32 1
  %559 = load i64, i64* %558, align 8
  %560 = call i32 @crypto_copyback(i32 %549, i32 %552, i64 %555, i64 %559, i8* %45)
  br label %561

561:                                              ; preds = %546, %539
  br label %594

562:                                              ; preds = %508
  %563 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %564 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %563, i32 0, i32 3
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %578

569:                                              ; preds = %562
  %570 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %571 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %570, i32 0, i32 5
  %572 = load i8*, i8** %571, align 8
  %573 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %574 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = call i32 @memcpy(i8* %45, i8* %572, i64 %576)
  br label %593

578:                                              ; preds = %562
  %579 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %580 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %583 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %586 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %585, i32 0, i32 4
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %589 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %589, i32 0, i32 1
  %591 = load i64, i64* %590, align 8
  %592 = call i32 @crypto_copydata(i32 %581, i32 %584, i64 %587, i64 %591, i8* %45)
  br label %593

593:                                              ; preds = %578, %569
  br label %594

594:                                              ; preds = %593, %561
  %595 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %596 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %597 = load i64, i64* %18, align 8
  %598 = load i64, i64* %22, align 8
  %599 = load i64, i64* %24, align 8
  %600 = load i32, i32* %39, align 4
  %601 = load i64, i64* %20, align 8
  %602 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %603 = icmp eq i64 %601, %602
  br i1 %603, label %604, label %606

604:                                              ; preds = %594
  %605 = load i64, i64* %23, align 8
  br label %607

606:                                              ; preds = %594
  br label %607

607:                                              ; preds = %606, %604
  %608 = phi i64 [ %605, %604 ], [ 0, %606 ]
  %609 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %610 = call i32 @ccr_populate_wreq(%struct.ccr_softc* %595, %struct.chcr_wr* %596, i64 %597, i64 %598, i64 %599, i32 %600, i64 %608, %struct.cryptop* %609)
  %611 = load i32, i32* @CPL_TX_SEC_PDU, align 4
  %612 = call i64 @V_CPL_TX_SEC_PDU_OPCODE(i32 %611)
  %613 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %614 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = call i64 @V_CPL_TX_SEC_PDU_RXCHID(i32 %615)
  %617 = or i64 %612, %616
  %618 = call i64 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32 0)
  %619 = or i64 %617, %618
  %620 = call i64 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32 1)
  %621 = or i64 %619, %620
  %622 = call i64 @V_CPL_TX_SEC_PDU_CPLLEN(i32 2)
  %623 = or i64 %621, %622
  %624 = call i64 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32 0)
  %625 = or i64 %623, %624
  %626 = call i64 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32 1)
  %627 = or i64 %625, %626
  %628 = call i8* @htobe32(i64 %627)
  %629 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %630 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %630, i32 0, i32 5
  store i8* %628, i8** %631, align 8
  %632 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %633 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %633, i32 0, i32 1
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* %35, align 8
  %637 = add nsw i64 %635, %636
  %638 = call i8* @htobe32(i64 %637)
  %639 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %640 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %640, i32 0, i32 4
  store i8* %638, i8** %641, align 8
  %642 = load i64, i64* %26, align 8
  %643 = call i64 @V_CPL_TX_SEC_PDU_AADSTART(i64 %642)
  %644 = load i64, i64* %28, align 8
  %645 = call i64 @V_CPL_TX_SEC_PDU_AADSTOP(i64 %644)
  %646 = or i64 %643, %645
  %647 = load i64, i64* %32, align 8
  %648 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTART(i64 %647)
  %649 = or i64 %646, %648
  %650 = load i64, i64* %33, align 8
  %651 = ashr i64 %650, 4
  %652 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i64 %651)
  %653 = or i64 %649, %652
  %654 = call i8* @htobe32(i64 %653)
  %655 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %656 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %656, i32 0, i32 3
  store i8* %654, i8** %657, align 8
  %658 = load i64, i64* %33, align 8
  %659 = and i64 %658, 15
  %660 = call i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i64 %659)
  %661 = load i64, i64* %29, align 8
  %662 = call i64 @V_CPL_TX_SEC_PDU_AUTHSTART(i64 %661)
  %663 = or i64 %660, %662
  %664 = load i64, i64* %30, align 8
  %665 = call i64 @V_CPL_TX_SEC_PDU_AUTHSTOP(i64 %664)
  %666 = or i64 %663, %665
  %667 = load i64, i64* %31, align 8
  %668 = call i64 @V_CPL_TX_SEC_PDU_AUTHINSERT(i64 %667)
  %669 = or i64 %666, %668
  %670 = call i8* @htobe32(i64 %669)
  %671 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %672 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %672, i32 0, i32 2
  store i8* %670, i8** %673, align 8
  %674 = load %struct.auth_hash*, %struct.auth_hash** %16, align 8
  %675 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %674, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = load i64, i64* %23, align 8
  %678 = call i64 @ccr_hmac_ctrl(i64 %676, i64 %677)
  store i64 %678, i64* %34, align 8
  %679 = call i64 @V_SCMD_SEQ_NO_CTRL(i32 0)
  %680 = load i32, i32* @SCMD_PROTO_VERSION_GENERIC, align 4
  %681 = call i64 @V_SCMD_PROTO_VERSION(i32 %680)
  %682 = or i64 %679, %681
  %683 = load i64, i64* %20, align 8
  %684 = call i64 @V_SCMD_ENC_DEC_CTRL(i64 %683)
  %685 = or i64 %682, %684
  %686 = load i64, i64* %20, align 8
  %687 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %688 = icmp eq i64 %686, %687
  %689 = zext i1 %688 to i64
  %690 = select i1 %688, i32 1, i32 0
  %691 = call i64 @V_SCMD_CIPH_AUTH_SEQ_CTRL(i32 %690)
  %692 = or i64 %685, %691
  %693 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %694 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %694, i32 0, i32 5
  %696 = load i32, i32* %695, align 4
  %697 = call i64 @V_SCMD_CIPH_MODE(i32 %696)
  %698 = or i64 %692, %697
  %699 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %700 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %700, i32 0, i32 3
  %702 = load i32, i32* %701, align 8
  %703 = call i64 @V_SCMD_AUTH_MODE(i32 %702)
  %704 = or i64 %698, %703
  %705 = load i64, i64* %34, align 8
  %706 = call i64 @V_SCMD_HMAC_CTRL(i64 %705)
  %707 = or i64 %704, %706
  %708 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %709 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %708, i32 0, i32 0
  %710 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %709, i32 0, i32 1
  %711 = load i64, i64* %710, align 8
  %712 = sdiv i64 %711, 2
  %713 = trunc i64 %712 to i32
  %714 = call i64 @V_SCMD_IV_SIZE(i32 %713)
  %715 = or i64 %707, %714
  %716 = call i64 @V_SCMD_NUM_IVS(i32 0)
  %717 = or i64 %715, %716
  %718 = call i8* @htobe32(i64 %717)
  %719 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %720 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %719, i32 0, i32 1
  %721 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %720, i32 0, i32 1
  store i8* %718, i8** %721, align 8
  %722 = call i64 @V_SCMD_IV_GEN_CTRL(i32 0)
  %723 = call i64 @V_SCMD_MORE_FRAGS(i32 0)
  %724 = or i64 %722, %723
  %725 = call i64 @V_SCMD_LAST_FRAG(i32 0)
  %726 = or i64 %724, %725
  %727 = call i64 @V_SCMD_MAC_ONLY(i32 0)
  %728 = or i64 %726, %727
  %729 = call i64 @V_SCMD_AADIVDROP(i32 0)
  %730 = or i64 %728, %729
  %731 = load i32, i32* %37, align 4
  %732 = call i64 @V_SCMD_HDR_LEN(i32 %731)
  %733 = or i64 %730, %732
  %734 = call i8* @htobe32(i64 %733)
  %735 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %736 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %735, i32 0, i32 1
  %737 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %736, i32 0, i32 0
  store i8* %734, i8** %737, align 8
  %738 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %739 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %738, i32 0, i32 0
  %740 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %739, i32 0, i32 4
  %741 = load i32, i32* %740, align 8
  %742 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %743 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %742, i32 0, i32 0
  %744 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %743, i32 0, i32 1
  store i32 %741, i32* %744, align 8
  %745 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %746 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 8
  switch i32 %747, label %849 [
    i32 130, label %748
    i32 129, label %784
    i32 128, label %798
  ]

748:                                              ; preds = %607
  %749 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %750 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %749, i32 0, i32 3
  %751 = load i32, i32* %750, align 8
  %752 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %753 = and i32 %751, %752
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %769

755:                                              ; preds = %748
  %756 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %757 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %756, i32 0, i32 0
  %758 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %757, i32 0, i32 0
  %759 = load i8*, i8** %758, align 8
  %760 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %761 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %761, i32 0, i32 2
  %763 = load i8*, i8** %762, align 8
  %764 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %765 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %764, i32 0, i32 0
  %766 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %765, i32 0, i32 0
  %767 = load i64, i64* %766, align 8
  %768 = call i32 @memcpy(i8* %759, i8* %763, i64 %767)
  br label %783

769:                                              ; preds = %748
  %770 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %771 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %770, i32 0, i32 0
  %772 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %771, i32 0, i32 0
  %773 = load i8*, i8** %772, align 8
  %774 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %775 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %774, i32 0, i32 0
  %776 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %775, i32 0, i32 3
  %777 = load i8*, i8** %776, align 8
  %778 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %779 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %778, i32 0, i32 0
  %780 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = call i32 @memcpy(i8* %773, i8* %777, i64 %781)
  br label %783

783:                                              ; preds = %769, %755
  br label %849

784:                                              ; preds = %607
  %785 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %786 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %785, i32 0, i32 0
  %787 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %786, i32 0, i32 0
  %788 = load i8*, i8** %787, align 8
  %789 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %790 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %790, i32 0, i32 2
  %792 = load i8*, i8** %791, align 8
  %793 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %794 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %793, i32 0, i32 0
  %795 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %794, i32 0, i32 0
  %796 = load i64, i64* %795, align 8
  %797 = call i32 @memcpy(i8* %788, i8* %792, i64 %796)
  br label %849

798:                                              ; preds = %607
  %799 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %800 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %800, i32 0, i32 0
  %802 = load i64, i64* %801, align 8
  %803 = sdiv i64 %802, 2
  store i64 %803, i64* %19, align 8
  %804 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %805 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %804, i32 0, i32 0
  %806 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %805, i32 0, i32 0
  %807 = load i8*, i8** %806, align 8
  %808 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %809 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %808, i32 0, i32 0
  %810 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %809, i32 0, i32 2
  %811 = load i8*, i8** %810, align 8
  %812 = load i64, i64* %19, align 8
  %813 = getelementptr inbounds i8, i8* %811, i64 %812
  %814 = load i64, i64* %19, align 8
  %815 = call i32 @memcpy(i8* %807, i8* %813, i64 %814)
  %816 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %817 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %816, i32 0, i32 3
  %818 = load i32, i32* %817, align 8
  %819 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %820 = and i32 %818, %819
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %835

822:                                              ; preds = %798
  %823 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %824 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %823, i32 0, i32 0
  %825 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %824, i32 0, i32 0
  %826 = load i8*, i8** %825, align 8
  %827 = load i64, i64* %19, align 8
  %828 = getelementptr inbounds i8, i8* %826, i64 %827
  %829 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %830 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %829, i32 0, i32 0
  %831 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %830, i32 0, i32 2
  %832 = load i8*, i8** %831, align 8
  %833 = load i64, i64* %19, align 8
  %834 = call i32 @memcpy(i8* %828, i8* %832, i64 %833)
  br label %848

835:                                              ; preds = %798
  %836 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %837 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %836, i32 0, i32 0
  %838 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %837, i32 0, i32 0
  %839 = load i8*, i8** %838, align 8
  %840 = load i64, i64* %19, align 8
  %841 = getelementptr inbounds i8, i8* %839, i64 %840
  %842 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %843 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %842, i32 0, i32 0
  %844 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %843, i32 0, i32 3
  %845 = load i8*, i8** %844, align 8
  %846 = load i64, i64* %19, align 8
  %847 = call i32 @memcpy(i8* %841, i8* %845, i64 %846)
  br label %848

848:                                              ; preds = %835, %822
  br label %849

849:                                              ; preds = %607, %848, %784, %783
  %850 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %851 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %850, i32 0, i32 0
  %852 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %851, i32 0, i32 0
  %853 = load i8*, i8** %852, align 8
  %854 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %855 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %854, i32 0, i32 0
  %856 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %855, i32 0, i32 0
  %857 = load i64, i64* %856, align 8
  %858 = call i32 @roundup2(i64 %857, i32 16)
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds i8, i8* %853, i64 %859
  store i8* %860, i8** %17, align 8
  %861 = load i8*, i8** %17, align 8
  %862 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %863 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %863, i32 0, i32 2
  %865 = load i8*, i8** %864, align 8
  %866 = load i64, i64* %25, align 8
  %867 = mul nsw i64 %866, 2
  %868 = call i32 @memcpy(i8* %861, i8* %865, i64 %867)
  %869 = load %struct.chcr_wr*, %struct.chcr_wr** %14, align 8
  %870 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %869, i64 1
  %871 = bitcast %struct.chcr_wr* %870 to i8*
  %872 = load i64, i64* %18, align 8
  %873 = getelementptr inbounds i8, i8* %871, i64 %872
  store i8* %873, i8** %17, align 8
  %874 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %875 = load i8*, i8** %17, align 8
  %876 = load i32, i32* %36, align 4
  %877 = call i32 @ccr_write_phys_dsgl(%struct.ccr_softc* %874, i8* %875, i32 %876)
  %878 = load i32, i32* %37, align 4
  %879 = sext i32 %878 to i64
  %880 = add i64 4, %879
  %881 = load i8*, i8** %17, align 8
  %882 = getelementptr inbounds i8, i8* %881, i64 %880
  store i8* %882, i8** %17, align 8
  %883 = load i8*, i8** %17, align 8
  %884 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %885 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %884, i32 0, i32 0
  %886 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %885, i32 0, i32 1
  %887 = load i64, i64* %886, align 8
  %888 = call i32 @memcpy(i8* %883, i8* %45, i64 %887)
  %889 = load %struct.ccr_session*, %struct.ccr_session** %8, align 8
  %890 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %889, i32 0, i32 0
  %891 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %890, i32 0, i32 1
  %892 = load i64, i64* %891, align 8
  %893 = load i8*, i8** %17, align 8
  %894 = getelementptr inbounds i8, i8* %893, i64 %892
  store i8* %894, i8** %17, align 8
  %895 = load i64, i64* %24, align 8
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %953

897:                                              ; preds = %849
  %898 = load i64, i64* %27, align 8
  %899 = icmp ne i64 %898, 0
  br i1 %899, label %900, label %916

900:                                              ; preds = %897
  %901 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %902 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %901, i32 0, i32 1
  %903 = load i32, i32* %902, align 4
  %904 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %905 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %908 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %907, i32 0, i32 2
  %909 = load i64, i64* %908, align 8
  %910 = load i64, i64* %27, align 8
  %911 = load i8*, i8** %17, align 8
  %912 = call i32 @crypto_copydata(i32 %903, i32 %906, i64 %909, i64 %910, i8* %911)
  %913 = load i64, i64* %27, align 8
  %914 = load i8*, i8** %17, align 8
  %915 = getelementptr inbounds i8, i8* %914, i64 %913
  store i8* %915, i8** %17, align 8
  br label %916

916:                                              ; preds = %900, %897
  %917 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %918 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 4
  %920 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %921 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %920, i32 0, i32 0
  %922 = load i32, i32* %921, align 4
  %923 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %924 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %923, i32 0, i32 2
  %925 = load i64, i64* %924, align 8
  %926 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %927 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %926, i32 0, i32 0
  %928 = load i64, i64* %927, align 8
  %929 = load i8*, i8** %17, align 8
  %930 = call i32 @crypto_copydata(i32 %919, i32 %922, i64 %925, i64 %928, i8* %929)
  %931 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %932 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %931, i32 0, i32 0
  %933 = load i64, i64* %932, align 8
  %934 = load i8*, i8** %17, align 8
  %935 = getelementptr inbounds i8, i8* %934, i64 %933
  store i8* %935, i8** %17, align 8
  %936 = load i64, i64* %20, align 8
  %937 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %938 = icmp eq i64 %936, %937
  br i1 %938, label %939, label %952

939:                                              ; preds = %916
  %940 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %941 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %940, i32 0, i32 1
  %942 = load i32, i32* %941, align 4
  %943 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %944 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 4
  %946 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %947 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %946, i32 0, i32 4
  %948 = load i64, i64* %947, align 8
  %949 = load i64, i64* %23, align 8
  %950 = load i8*, i8** %17, align 8
  %951 = call i32 @crypto_copydata(i32 %942, i32 %945, i64 %948, i64 %949, i8* %950)
  br label %952

952:                                              ; preds = %939, %916
  br label %958

953:                                              ; preds = %849
  %954 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %955 = load i8*, i8** %17, align 8
  %956 = load i32, i32* %38, align 4
  %957 = call i32 @ccr_write_ulptx_sgl(%struct.ccr_softc* %954, i8* %955, i32 %956)
  br label %958

958:                                              ; preds = %953, %952
  %959 = load %struct.ccr_softc*, %struct.ccr_softc** %7, align 8
  %960 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %959, i32 0, i32 0
  %961 = load i32, i32* %960, align 8
  %962 = load %struct.wrqe*, %struct.wrqe** %15, align 8
  %963 = call i32 @t4_wrq_tx(i32 %961, %struct.wrqe* %962)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %41, align 4
  br label %964

964:                                              ; preds = %958, %502, %492, %383, %363, %344, %301, %263, %251, %231, %213, %190, %174, %134, %89, %71, %56
  %965 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %965)
  %966 = load i32, i32* %6, align 4
  ret i32 %966
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

declare dso_local i32 @ccr_populate_wreq(%struct.ccr_softc*, %struct.chcr_wr*, i64, i64, i64, i32, i64, %struct.cryptop*) #2

declare dso_local i8* @htobe32(i64) #2

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

declare dso_local i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHSTART(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHSTOP(i64) #2

declare dso_local i64 @V_CPL_TX_SEC_PDU_AUTHINSERT(i64) #2

declare dso_local i64 @ccr_hmac_ctrl(i64, i64) #2

declare dso_local i64 @V_SCMD_SEQ_NO_CTRL(i32) #2

declare dso_local i64 @V_SCMD_PROTO_VERSION(i32) #2

declare dso_local i64 @V_SCMD_ENC_DEC_CTRL(i64) #2

declare dso_local i64 @V_SCMD_CIPH_AUTH_SEQ_CTRL(i32) #2

declare dso_local i64 @V_SCMD_CIPH_MODE(i32) #2

declare dso_local i64 @V_SCMD_AUTH_MODE(i32) #2

declare dso_local i64 @V_SCMD_HMAC_CTRL(i64) #2

declare dso_local i64 @V_SCMD_IV_SIZE(i32) #2

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
