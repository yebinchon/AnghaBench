; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i64 }
%struct.cryptoini = type { i32, i64, i32, i32*, %struct.cryptoini* }
%struct.ccr_softc = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.ccr_session = type { i32, %struct.TYPE_8__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32, %struct.auth_hash* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCMD_AUTH_MODE_NOP = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_NOP = common dso_local global i32 0, align 4
@auth_hash_hmac_sha1 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SCMD_AUTH_MODE_SHA1 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_160 = common dso_local global i32 0, align 4
@SHA1_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_224 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SCMD_AUTH_MODE_SHA224 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_256 = common dso_local global i32 0, align 4
@SHA2_256_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SCMD_AUTH_MODE_SHA256 = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_384 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SCMD_AUTH_MODE_SHA512_384 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_512 = common dso_local global i32 0, align 4
@SHA2_512_HASH_LEN = common dso_local global i32 0, align 4
@auth_hash_hmac_sha2_512 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@SCMD_AUTH_MODE_SHA512_512 = common dso_local global i32 0, align 4
@SCMD_AUTH_MODE_GHASH = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i32 0, align 4
@SCMD_AUTH_MODE_CBCMAC = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_CTR = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_GCM = common dso_local global i32 0, align 4
@AES_GCM_IV_LEN = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_XTS = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_AES_CCM = common dso_local global i32 0, align 4
@AES_CCM_IV_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GCM = common dso_local global i32 0, align 4
@CCM = common dso_local global i32 0, align 4
@AUTHENC = common dso_local global i32 0, align 4
@HMAC = common dso_local global i32 0, align 4
@HASH = common dso_local global i32 0, align 4
@BLKCIPHER = common dso_local global i32 0, align 4
@AES_GMAC_HASH_LEN = common dso_local global i64 0, align 8
@AES_CBC_MAC_HASH_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @ccr_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.ccr_softc*, align 8
  %9 = alloca %struct.ccr_session*, align 8
  %10 = alloca %struct.auth_hash*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.cryptoini*, align 8
  %13 = alloca %struct.cryptoini*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %22 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %23 = icmp eq %struct.cryptoini* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %426

26:                                               ; preds = %3
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store %struct.cryptoini* null, %struct.cryptoini** %13, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %12, align 8
  store %struct.auth_hash* null, %struct.auth_hash** %10, align 8
  %27 = load i32, i32* @SCMD_AUTH_MODE_NOP, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @SCMD_CIPH_MODE_NOP, align 4
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %29 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %29, %struct.cryptoini** %11, align 8
  br label %30

30:                                               ; preds = %125, %26
  %31 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %33, label %129

33:                                               ; preds = %30
  %34 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %122 [
    i32 137, label %37
    i32 135, label %37
    i32 133, label %37
    i32 131, label %37
    i32 129, label %37
    i32 136, label %37
    i32 134, label %37
    i32 132, label %37
    i32 130, label %37
    i32 128, label %37
    i32 146, label %37
    i32 145, label %37
    i32 144, label %37
    i32 141, label %37
    i32 143, label %78
    i32 140, label %78
    i32 139, label %78
    i32 138, label %78
    i32 142, label %78
  ]

37:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %38 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %39 = icmp ne %struct.cryptoini* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %426

42:                                               ; preds = %37
  %43 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* %43, %struct.cryptoini** %12, align 8
  %44 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %45 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %72 [
    i32 137, label %47
    i32 136, label %47
    i32 135, label %51
    i32 134, label %51
    i32 133, label %55
    i32 132, label %55
    i32 131, label %59
    i32 130, label %59
    i32 129, label %63
    i32 128, label %63
    i32 146, label %67
    i32 145, label %67
    i32 144, label %67
    i32 141, label %70
  ]

47:                                               ; preds = %42, %42
  store %struct.auth_hash* @auth_hash_hmac_sha1, %struct.auth_hash** %10, align 8
  %48 = load i32, i32* @SCMD_AUTH_MODE_SHA1, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_160, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @SHA1_HASH_LEN, align 4
  store i32 %50, i32* %18, align 4
  br label %72

51:                                               ; preds = %42, %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_224, %struct.auth_hash** %10, align 8
  %52 = load i32, i32* @SCMD_AUTH_MODE_SHA224, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @SHA2_256_HASH_LEN, align 4
  store i32 %54, i32* %18, align 4
  br label %72

55:                                               ; preds = %42, %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_256, %struct.auth_hash** %10, align 8
  %56 = load i32, i32* @SCMD_AUTH_MODE_SHA256, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 4
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* @SHA2_256_HASH_LEN, align 4
  store i32 %58, i32* %18, align 4
  br label %72

59:                                               ; preds = %42, %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_384, %struct.auth_hash** %10, align 8
  %60 = load i32, i32* @SCMD_AUTH_MODE_SHA512_384, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_512, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  store i32 %62, i32* %18, align 4
  br label %72

63:                                               ; preds = %42, %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_512, %struct.auth_hash** %10, align 8
  %64 = load i32, i32* @SCMD_AUTH_MODE_SHA512_512, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_512, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* @SHA2_512_HASH_LEN, align 4
  store i32 %66, i32* %18, align 4
  br label %72

67:                                               ; preds = %42, %42, %42
  store i32 1, i32* %20, align 4
  %68 = load i32, i32* @SCMD_AUTH_MODE_GHASH, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  store i32 %69, i32* %17, align 4
  br label %72

70:                                               ; preds = %42
  %71 = load i32, i32* @SCMD_AUTH_MODE_CBCMAC, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %42, %70, %67, %63, %59, %55, %51, %47
  %73 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %74 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %77 [
    i32 136, label %76
    i32 134, label %76
    i32 132, label %76
    i32 130, label %76
    i32 128, label %76
  ]

76:                                               ; preds = %72, %72, %72, %72, %72
  store i32 1, i32* %21, align 4
  br label %77

77:                                               ; preds = %72, %76
  br label %124

78:                                               ; preds = %33, %33, %33, %33, %33
  %79 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %80 = icmp ne %struct.cryptoini* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  br label %426

83:                                               ; preds = %78
  %84 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* %84, %struct.cryptoini** %13, align 8
  %85 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %86 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %103 [
    i32 143, label %88
    i32 140, label %91
    i32 139, label %94
    i32 138, label %97
    i32 142, label %100
  ]

88:                                               ; preds = %83
  %89 = load i32, i32* @SCMD_CIPH_MODE_AES_CBC, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %90, i32* %16, align 4
  br label %103

91:                                               ; preds = %83
  %92 = load i32, i32* @SCMD_CIPH_MODE_AES_CTR, align 4
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %93, i32* %16, align 4
  br label %103

94:                                               ; preds = %83
  %95 = load i32, i32* @SCMD_CIPH_MODE_AES_GCM, align 4
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @AES_GCM_IV_LEN, align 4
  store i32 %96, i32* %16, align 4
  br label %103

97:                                               ; preds = %83
  %98 = load i32, i32* @SCMD_CIPH_MODE_AES_XTS, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %99, i32* %16, align 4
  br label %103

100:                                              ; preds = %83
  %101 = load i32, i32* @SCMD_CIPH_MODE_AES_CCM, align 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* @AES_CCM_IV_LEN, align 4
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %83, %100, %97, %94, %91, %88
  %104 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %105 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %110 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %113 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ccr_aes_check_keylen(i32 %111, i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %4, align 4
  br label %426

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %103
  br label %124

122:                                              ; preds = %33
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %4, align 4
  br label %426

124:                                              ; preds = %121, %77
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %127 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %126, i32 0, i32 4
  %128 = load %struct.cryptoini*, %struct.cryptoini** %127, align 8
  store %struct.cryptoini* %128, %struct.cryptoini** %11, align 8
  br label %30

129:                                              ; preds = %30
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @SCMD_CIPH_MODE_AES_GCM, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = icmp ne i32 %130, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %4, align 4
  br label %426

138:                                              ; preds = %129
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @SCMD_AUTH_MODE_CBCMAC, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @SCMD_CIPH_MODE_AES_CCM, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = icmp ne i32 %142, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %4, align 4
  br label %426

150:                                              ; preds = %138
  %151 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %152 = icmp eq %struct.cryptoini* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %155 = icmp eq %struct.cryptoini* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* %4, align 4
  br label %426

158:                                              ; preds = %153, %150
  %159 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %160 = icmp ne %struct.cryptoini* %159, null
  br i1 %160, label %161, label %188

161:                                              ; preds = %158
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %20, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @SCMD_AUTH_MODE_CBCMAC, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167, %164, %161
  %172 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %173 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @EINVAL, align 4
  store i32 %177, i32* %4, align 4
  br label %426

178:                                              ; preds = %171
  br label %187

179:                                              ; preds = %167
  %180 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %181 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %4, align 4
  br label %426

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187, %158
  %189 = load i32, i32* %5, align 4
  %190 = call %struct.ccr_softc* @device_get_softc(i32 %189)
  store %struct.ccr_softc* %190, %struct.ccr_softc** %8, align 8
  %191 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %192 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %191, i32 0, i32 3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %205, label %198

198:                                              ; preds = %188
  %199 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %200 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %199, i32 0, i32 2
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %198, %188
  %206 = load i32, i32* @ENXIO, align 4
  store i32 %206, i32* %4, align 4
  br label %426

207:                                              ; preds = %198
  %208 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %209 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %208, i32 0, i32 0
  %210 = call i32 @mtx_lock(i32* %209)
  %211 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %212 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %217 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %216, i32 0, i32 0
  %218 = call i32 @mtx_unlock(i32* %217)
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %4, align 4
  br label %426

220:                                              ; preds = %207
  %221 = load i32, i32* %6, align 4
  %222 = call %struct.ccr_session* @crypto_get_driver_session(i32 %221)
  store %struct.ccr_session* %222, %struct.ccr_session** %9, align 8
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @GCM, align 4
  %227 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %228 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  br label %273

229:                                              ; preds = %220
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @SCMD_CIPH_MODE_AES_CCM, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32, i32* @CCM, align 4
  %235 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %236 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  br label %272

237:                                              ; preds = %229
  %238 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %239 = icmp ne %struct.cryptoini* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %242 = icmp ne %struct.cryptoini* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* @AUTHENC, align 4
  %245 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %246 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  br label %271

247:                                              ; preds = %240, %237
  %248 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %249 = icmp ne %struct.cryptoini* %248, null
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = load i32, i32* %21, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* @HMAC, align 4
  %255 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %256 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 8
  br label %261

257:                                              ; preds = %250
  %258 = load i32, i32* @HASH, align 4
  %259 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %260 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %257, %253
  br label %270

262:                                              ; preds = %247
  %263 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %264 = icmp ne %struct.cryptoini* %263, null
  %265 = zext i1 %264 to i32
  %266 = call i32 @MPASS(i32 %265)
  %267 = load i32, i32* @BLKCIPHER, align 4
  %268 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %269 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %262, %261
  br label %271

271:                                              ; preds = %270, %243
  br label %272

272:                                              ; preds = %271, %233
  br label %273

273:                                              ; preds = %272, %225
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %305

276:                                              ; preds = %273
  %277 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %278 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i64, i64* @AES_GMAC_HASH_LEN, align 8
  %283 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %284 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  store i64 %282, i64* %285, align 8
  br label %293

286:                                              ; preds = %276
  %287 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %288 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %291 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  store i64 %289, i64* %292, align 8
  br label %293

293:                                              ; preds = %286, %281
  %294 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %295 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %298 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %301 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @t4_init_gmac_hash(i32* %296, i32 %299, i32 %303)
  br label %391

305:                                              ; preds = %273
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* @SCMD_AUTH_MODE_CBCMAC, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %327

309:                                              ; preds = %305
  %310 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %311 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load i64, i64* @AES_CBC_MAC_HASH_LEN, align 8
  %316 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %317 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  store i64 %315, i64* %318, align 8
  br label %326

319:                                              ; preds = %309
  %320 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %321 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %324 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 0
  store i64 %322, i64* %325, align 8
  br label %326

326:                                              ; preds = %319, %314
  br label %390

327:                                              ; preds = %305
  %328 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %329 = icmp ne %struct.cryptoini* %328, null
  br i1 %329, label %330, label %389

330:                                              ; preds = %327
  %331 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %332 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %333 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 5
  store %struct.auth_hash* %331, %struct.auth_hash** %334, align 8
  %335 = load i32, i32* %14, align 4
  %336 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %337 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 0
  store i32 %335, i32* %338, align 8
  %339 = load i32, i32* %17, align 4
  %340 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %341 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 1
  store i32 %339, i32* %342, align 4
  %343 = load i32, i32* %18, align 4
  %344 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %345 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 2
  store i32 %343, i32* %346, align 8
  %347 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %348 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %330
  %352 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %353 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %356 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 3
  store i64 %354, i64* %357, align 8
  br label %365

358:                                              ; preds = %330
  %359 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %360 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %363 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 3
  store i64 %361, i64* %364, align 8
  br label %365

365:                                              ; preds = %358, %351
  %366 = load i32, i32* %21, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %365
  %369 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %370 = load i32, i32* %18, align 4
  %371 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %372 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %371, i32 0, i32 3
  %373 = load i32*, i32** %372, align 8
  %374 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %375 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %378 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @t4_init_hmac_digest(%struct.auth_hash* %369, i32 %370, i32* %373, i32 %376, i32 %380)
  br label %388

382:                                              ; preds = %365
  %383 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %384 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  %385 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @ccr_init_hash_digest(%struct.ccr_session* %383, i32 %386)
  br label %388

388:                                              ; preds = %382, %368
  br label %389

389:                                              ; preds = %388, %327
  br label %390

390:                                              ; preds = %389, %326
  br label %391

391:                                              ; preds = %390, %293
  %392 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %393 = icmp ne %struct.cryptoini* %392, null
  br i1 %393, label %394, label %420

394:                                              ; preds = %391
  %395 = load i32, i32* %15, align 4
  %396 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %397 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 0
  store i32 %395, i32* %398, align 4
  %399 = load i32, i32* %16, align 4
  %400 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %401 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 1
  store i32 %399, i32* %402, align 4
  %403 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %404 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %403, i32 0, i32 3
  %405 = load i32*, i32** %404, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %419

407:                                              ; preds = %394
  %408 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %409 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %410 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %413 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %412, i32 0, i32 3
  %414 = load i32*, i32** %413, align 8
  %415 = load %struct.cryptoini*, %struct.cryptoini** %13, align 8
  %416 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @ccr_aes_setkey(%struct.ccr_session* %408, i32 %411, i32* %414, i32 %417)
  br label %419

419:                                              ; preds = %407, %394
  br label %420

420:                                              ; preds = %419, %391
  %421 = load %struct.ccr_session*, %struct.ccr_session** %9, align 8
  %422 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %421, i32 0, i32 0
  store i32 1, i32* %422, align 8
  %423 = load %struct.ccr_softc*, %struct.ccr_softc** %8, align 8
  %424 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %423, i32 0, i32 0
  %425 = call i32 @mtx_unlock(i32* %424)
  store i32 0, i32* %4, align 4
  br label %426

426:                                              ; preds = %420, %215, %205, %184, %176, %156, %148, %136, %122, %118, %81, %40, %24
  %427 = load i32, i32* %4, align 4
  ret i32 %427
}

declare dso_local i32 @ccr_aes_check_keylen(i32, i32) #1

declare dso_local %struct.ccr_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.ccr_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @t4_init_gmac_hash(i32*, i32, i32) #1

declare dso_local i32 @t4_init_hmac_digest(%struct.auth_hash*, i32, i32*, i32, i32) #1

declare dso_local i32 @ccr_init_hash_digest(%struct.ccr_session*, i32) #1

declare dso_local i32 @ccr_aes_setkey(%struct.ccr_session*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
