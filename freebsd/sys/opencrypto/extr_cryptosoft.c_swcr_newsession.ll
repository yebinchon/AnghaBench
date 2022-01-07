; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_xform = type { i32 (i32*, i32*, i32)* }
%struct.auth_hash = type { i32, i32 (i32*)*, i32 (i32*, i32*, i32)* }
%struct.comp_algo = type { i32 }
%struct.cryptoini = type { i32, i32, %struct.cryptoini*, i32*, i32 }
%struct.swcr_session = type { i32, %struct.swcr_data*, i32 }
%struct.swcr_data = type { i32, %struct.comp_algo*, %struct.auth_hash*, i32*, i32, i32*, %struct.enc_xform*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"swcr session lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@enc_xform_des = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_3des = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_blf = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_cast5 = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_skipjack = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_rijndael128 = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_aes_xts = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_aes_icm = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_aes_nist_gcm = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_ccm = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_aes_nist_gmac = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_camellia = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_null = common dso_local global %struct.enc_xform zeroinitializer, align 8
@enc_xform_chacha20 = common dso_local global %struct.enc_xform zeroinitializer, align 8
@auth_hash_hmac_md5 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_sha1 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_sha2_224 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_sha2_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_sha2_384 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_sha2_512 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_null = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_hmac_ripemd_160 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@auth_hash_key_md5 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_key_sha1 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_sha1 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_sha2_224 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_sha2_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_sha2_384 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_sha2_512 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_ccm_cbc_mac_128 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_ccm_cbc_mac_192 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_ccm_cbc_mac_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_nist_gmac_aes_128 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_nist_gmac_aes_192 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_nist_gmac_aes_256 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_blake2b = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_blake2s = common dso_local global %struct.auth_hash zeroinitializer, align 8
@auth_hash_poly1305 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@comp_algo_deflate = common dso_local global %struct.comp_algo zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Bogus session request for three or more algorithms\00", align 1
@auth_hash_md5 = common dso_local global %struct.auth_hash zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.cryptoini*)* @swcr_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_newsession(i32 %0, i32* %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.swcr_session*, align 8
  %9 = alloca %struct.swcr_data*, align 8
  %10 = alloca %struct.auth_hash*, align 8
  %11 = alloca %struct.enc_xform*, align 8
  %12 = alloca %struct.comp_algo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %20 = icmp eq %struct.cryptoini* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %444

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.swcr_session* @crypto_get_driver_session(i32* %24)
  store %struct.swcr_session* %25, %struct.swcr_session** %8, align 8
  %26 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %27 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %26, i32 0, i32 2
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null, i32 %28)
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %434, %23
  %31 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %36 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %35, i32 0, i32 1
  %37 = load %struct.swcr_data*, %struct.swcr_data** %36, align 8
  %38 = call i64 @nitems(%struct.swcr_data* %37)
  %39 = icmp ult i64 %34, %38
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  br i1 %41, label %42, label %437

42:                                               ; preds = %40
  %43 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %44 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %43, i32 0, i32 1
  %45 = load %struct.swcr_data*, %struct.swcr_data** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %45, i64 %46
  store %struct.swcr_data* %47, %struct.swcr_data** %9, align 8
  %48 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %49 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %416 [
    i32 148, label %51
    i32 165, label %52
    i32 153, label %53
    i32 151, label %54
    i32 128, label %55
    i32 141, label %56
    i32 156, label %57
    i32 159, label %58
    i32 158, label %59
    i32 161, label %60
    i32 157, label %61
    i32 152, label %65
    i32 144, label %66
    i32 150, label %67
    i32 146, label %99
    i32 138, label %100
    i32 135, label %101
    i32 133, label %102
    i32 131, label %103
    i32 129, label %104
    i32 143, label %105
    i32 140, label %106
    i32 145, label %177
    i32 137, label %178
    i32 139, label %250
    i32 136, label %251
    i32 134, label %252
    i32 132, label %253
    i32 130, label %254
    i32 160, label %290
    i32 164, label %303
    i32 163, label %304
    i32 162, label %305
    i32 155, label %365
    i32 154, label %366
    i32 142, label %367
    i32 149, label %412
  ]

51:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_des, %struct.enc_xform** %11, align 8
  br label %68

52:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_3des, %struct.enc_xform** %11, align 8
  br label %68

53:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_blf, %struct.enc_xform** %11, align 8
  br label %68

54:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_cast5, %struct.enc_xform** %11, align 8
  br label %68

55:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_skipjack, %struct.enc_xform** %11, align 8
  br label %68

56:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_rijndael128, %struct.enc_xform** %11, align 8
  br label %68

57:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_aes_xts, %struct.enc_xform** %11, align 8
  br label %68

58:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_aes_icm, %struct.enc_xform** %11, align 8
  br label %68

59:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_aes_nist_gcm, %struct.enc_xform** %11, align 8
  br label %68

60:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_ccm, %struct.enc_xform** %11, align 8
  br label %68

61:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_aes_nist_gmac, %struct.enc_xform** %11, align 8
  %62 = load %struct.enc_xform*, %struct.enc_xform** %11, align 8
  %63 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %64 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %63, i32 0, i32 6
  store %struct.enc_xform* %62, %struct.enc_xform** %64, align 8
  br label %421

65:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_camellia, %struct.enc_xform** %11, align 8
  br label %68

66:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_null, %struct.enc_xform** %11, align 8
  br label %68

67:                                               ; preds = %42
  store %struct.enc_xform* @enc_xform_chacha20, %struct.enc_xform** %11, align 8
  br label %68

68:                                               ; preds = %67, %66, %65, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51
  %69 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %70 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %68
  %74 = load %struct.enc_xform*, %struct.enc_xform** %11, align 8
  %75 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %74, i32 0, i32 0
  %76 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %75, align 8
  %77 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %78 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %77, i32 0, i32 7
  %79 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %80 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %83 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 8
  %86 = call i32 %76(i32* %78, i32* %81, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @swcr_freesession(i32 %90, i32* %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %4, align 4
  br label %444

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %68
  %96 = load %struct.enc_xform*, %struct.enc_xform** %11, align 8
  %97 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %98 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %97, i32 0, i32 6
  store %struct.enc_xform* %96, %struct.enc_xform** %98, align 8
  br label %421

99:                                               ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_md5, %struct.auth_hash** %10, align 8
  br label %107

100:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha1, %struct.auth_hash** %10, align 8
  br label %107

101:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_224, %struct.auth_hash** %10, align 8
  br label %107

102:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_256, %struct.auth_hash** %10, align 8
  br label %107

103:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_384, %struct.auth_hash** %10, align 8
  br label %107

104:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_sha2_512, %struct.auth_hash** %10, align 8
  br label %107

105:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_null, %struct.auth_hash** %10, align 8
  br label %107

106:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_hmac_ripemd_160, %struct.auth_hash** %10, align 8
  br label %107

107:                                              ; preds = %106, %105, %104, %103, %102, %101, %100, %99
  %108 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %109 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @M_CRYPTO_DATA, align 4
  %112 = load i32, i32* @M_NOWAIT, align 4
  %113 = call i8* @malloc(i32 %110, i32 %111, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %116 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %118 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load i32, i32* %5, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @swcr_freesession(i32 %122, i32* %123)
  %125 = load i32, i32* @ENOBUFS, align 4
  store i32 %125, i32* %4, align 4
  br label %444

126:                                              ; preds = %107
  %127 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %128 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @M_CRYPTO_DATA, align 4
  %131 = load i32, i32* @M_NOWAIT, align 4
  %132 = call i8* @malloc(i32 %129, i32 %130, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %135 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %134, i32 0, i32 5
  store i32* %133, i32** %135, align 8
  %136 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %137 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %126
  %141 = load i32, i32* %5, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @swcr_freesession(i32 %141, i32* %142)
  %144 = load i32, i32* @ENOBUFS, align 4
  store i32 %144, i32* %4, align 4
  br label %444

145:                                              ; preds = %126
  %146 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %147 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %152 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %153 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %154 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %157 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @swcr_authprepare(%struct.auth_hash* %151, %struct.swcr_data* %152, i32* %155, i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %150
  %163 = load i32, i32* %5, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @swcr_freesession(i32 %163, i32* %164)
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %4, align 4
  br label %444

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %145
  %169 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %170 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %173 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %175 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %176 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %175, i32 0, i32 2
  store %struct.auth_hash* %174, %struct.auth_hash** %176, align 8
  br label %421

177:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_key_md5, %struct.auth_hash** %10, align 8
  br label %179

178:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_key_sha1, %struct.auth_hash** %10, align 8
  br label %179

179:                                              ; preds = %178, %177
  %180 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %181 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @M_CRYPTO_DATA, align 4
  %184 = load i32, i32* @M_NOWAIT, align 4
  %185 = call i8* @malloc(i32 %182, i32 %183, i32 %184)
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %188 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %187, i32 0, i32 3
  store i32* %186, i32** %188, align 8
  %189 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %190 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = load i32, i32* %5, align 4
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @swcr_freesession(i32 %194, i32* %195)
  %197 = load i32, i32* @ENOBUFS, align 4
  store i32 %197, i32* %4, align 4
  br label %444

198:                                              ; preds = %179
  %199 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %200 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %201, 8
  %203 = load i32, i32* @M_CRYPTO_DATA, align 4
  %204 = load i32, i32* @M_NOWAIT, align 4
  %205 = call i8* @malloc(i32 %202, i32 %203, i32 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %208 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %207, i32 0, i32 5
  store i32* %206, i32** %208, align 8
  %209 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %210 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %198
  %214 = load i32, i32* %5, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @swcr_freesession(i32 %214, i32* %215)
  %217 = load i32, i32* @ENOBUFS, align 4
  store i32 %217, i32* %4, align 4
  br label %444

218:                                              ; preds = %198
  %219 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %220 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %241

223:                                              ; preds = %218
  %224 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %225 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %226 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %227 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %230 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @swcr_authprepare(%struct.auth_hash* %224, %struct.swcr_data* %225, i32* %228, i32 %231)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %223
  %236 = load i32, i32* %5, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @swcr_freesession(i32 %236, i32* %237)
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %4, align 4
  br label %444

240:                                              ; preds = %223
  br label %241

241:                                              ; preds = %240, %218
  %242 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %243 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %246 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  %247 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %248 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %249 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %248, i32 0, i32 2
  store %struct.auth_hash* %247, %struct.auth_hash** %249, align 8
  br label %421

250:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_sha1, %struct.auth_hash** %10, align 8
  br label %255

251:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_sha2_224, %struct.auth_hash** %10, align 8
  br label %255

252:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_sha2_256, %struct.auth_hash** %10, align 8
  br label %255

253:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_sha2_384, %struct.auth_hash** %10, align 8
  br label %255

254:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_sha2_512, %struct.auth_hash** %10, align 8
  br label %255

255:                                              ; preds = %254, %253, %252, %251, %250
  %256 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %257 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @M_CRYPTO_DATA, align 4
  %260 = load i32, i32* @M_NOWAIT, align 4
  %261 = call i8* @malloc(i32 %258, i32 %259, i32 %260)
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %264 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %263, i32 0, i32 3
  store i32* %262, i32** %264, align 8
  %265 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %266 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %255
  %270 = load i32, i32* %5, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = call i32 @swcr_freesession(i32 %270, i32* %271)
  %273 = load i32, i32* @ENOBUFS, align 4
  store i32 %273, i32* %4, align 4
  br label %444

274:                                              ; preds = %255
  %275 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %276 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %275, i32 0, i32 1
  %277 = load i32 (i32*)*, i32 (i32*)** %276, align 8
  %278 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %279 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = call i32 %277(i32* %280)
  %282 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %283 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %286 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %288 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %289 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %288, i32 0, i32 2
  store %struct.auth_hash* %287, %struct.auth_hash** %289, align 8
  br label %421

290:                                              ; preds = %42
  %291 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %292 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  switch i32 %293, label %297 [
    i32 128, label %294
    i32 192, label %295
    i32 256, label %296
  ]

294:                                              ; preds = %290
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_128, %struct.auth_hash** %10, align 8
  br label %302

295:                                              ; preds = %290
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_192, %struct.auth_hash** %10, align 8
  br label %302

296:                                              ; preds = %290
  store %struct.auth_hash* @auth_hash_ccm_cbc_mac_256, %struct.auth_hash** %10, align 8
  br label %302

297:                                              ; preds = %290
  %298 = load i32, i32* %5, align 4
  %299 = load i32*, i32** %6, align 8
  %300 = call i32 @swcr_freesession(i32 %298, i32* %299)
  %301 = load i32, i32* @EINVAL, align 4
  store i32 %301, i32* %4, align 4
  br label %444

302:                                              ; preds = %296, %295, %294
  br label %306

303:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_128, %struct.auth_hash** %10, align 8
  br label %306

304:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_192, %struct.auth_hash** %10, align 8
  br label %306

305:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_nist_gmac_aes_256, %struct.auth_hash** %10, align 8
  br label %306

306:                                              ; preds = %305, %304, %303, %302
  %307 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %308 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sdiv i32 %309, 8
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp ne i32 %311, 16
  br i1 %312, label %313, label %324

313:                                              ; preds = %306
  %314 = load i32, i32* %14, align 4
  %315 = icmp ne i32 %314, 24
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load i32, i32* %14, align 4
  %318 = icmp ne i32 %317, 32
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* %5, align 4
  %321 = load i32*, i32** %6, align 8
  %322 = call i32 @swcr_freesession(i32 %320, i32* %321)
  %323 = load i32, i32* @EINVAL, align 4
  store i32 %323, i32* %4, align 4
  br label %444

324:                                              ; preds = %316, %313, %306
  %325 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %326 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @M_CRYPTO_DATA, align 4
  %329 = load i32, i32* @M_NOWAIT, align 4
  %330 = call i8* @malloc(i32 %327, i32 %328, i32 %329)
  %331 = bitcast i8* %330 to i32*
  %332 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %333 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %332, i32 0, i32 3
  store i32* %331, i32** %333, align 8
  %334 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %335 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %334, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = icmp eq i32* %336, null
  br i1 %337, label %338, label %343

338:                                              ; preds = %324
  %339 = load i32, i32* %5, align 4
  %340 = load i32*, i32** %6, align 8
  %341 = call i32 @swcr_freesession(i32 %339, i32* %340)
  %342 = load i32, i32* @ENOBUFS, align 4
  store i32 %342, i32* %4, align 4
  br label %444

343:                                              ; preds = %324
  %344 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %345 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %344, i32 0, i32 1
  %346 = load i32 (i32*)*, i32 (i32*)** %345, align 8
  %347 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %348 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %347, i32 0, i32 3
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 %346(i32* %349)
  %351 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %352 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %351, i32 0, i32 2
  %353 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %352, align 8
  %354 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %355 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %358 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %357, i32 0, i32 3
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %14, align 4
  %361 = call i32 %353(i32* %356, i32* %359, i32 %360)
  %362 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %363 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %364 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %363, i32 0, i32 2
  store %struct.auth_hash* %362, %struct.auth_hash** %364, align 8
  br label %421

365:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_blake2b, %struct.auth_hash** %10, align 8
  br label %368

366:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_blake2s, %struct.auth_hash** %10, align 8
  br label %368

367:                                              ; preds = %42
  store %struct.auth_hash* @auth_hash_poly1305, %struct.auth_hash** %10, align 8
  br label %368

368:                                              ; preds = %367, %366, %365
  %369 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %370 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @M_CRYPTO_DATA, align 4
  %373 = load i32, i32* @M_NOWAIT, align 4
  %374 = call i8* @malloc(i32 %371, i32 %372, i32 %373)
  %375 = bitcast i8* %374 to i32*
  %376 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %377 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %376, i32 0, i32 3
  store i32* %375, i32** %377, align 8
  %378 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %379 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %378, i32 0, i32 3
  %380 = load i32*, i32** %379, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %387

382:                                              ; preds = %368
  %383 = load i32, i32* %5, align 4
  %384 = load i32*, i32** %6, align 8
  %385 = call i32 @swcr_freesession(i32 %383, i32* %384)
  %386 = load i32, i32* @ENOBUFS, align 4
  store i32 %386, i32* %4, align 4
  br label %444

387:                                              ; preds = %368
  %388 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %389 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %388, i32 0, i32 2
  %390 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %389, align 8
  %391 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %392 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %391, i32 0, i32 3
  %393 = load i32*, i32** %392, align 8
  %394 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %395 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %394, i32 0, i32 3
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %398 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = sdiv i32 %399, 8
  %401 = call i32 %390(i32* %393, i32* %396, i32 %400)
  %402 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %403 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %402, i32 0, i32 1
  %404 = load i32 (i32*)*, i32 (i32*)** %403, align 8
  %405 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %406 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %405, i32 0, i32 3
  %407 = load i32*, i32** %406, align 8
  %408 = call i32 %404(i32* %407)
  %409 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %410 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %411 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %410, i32 0, i32 2
  store %struct.auth_hash* %409, %struct.auth_hash** %411, align 8
  br label %421

412:                                              ; preds = %42
  store %struct.comp_algo* @comp_algo_deflate, %struct.comp_algo** %12, align 8
  %413 = load %struct.comp_algo*, %struct.comp_algo** %12, align 8
  %414 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %415 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %414, i32 0, i32 1
  store %struct.comp_algo* %413, %struct.comp_algo** %415, align 8
  br label %421

416:                                              ; preds = %42
  %417 = load i32, i32* %5, align 4
  %418 = load i32*, i32** %6, align 8
  %419 = call i32 @swcr_freesession(i32 %417, i32* %418)
  %420 = load i32, i32* @EINVAL, align 4
  store i32 %420, i32* %4, align 4
  br label %444

421:                                              ; preds = %412, %387, %343, %274, %241, %168, %95, %61
  %422 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %423 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.swcr_data*, %struct.swcr_data** %9, align 8
  %426 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  %427 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %428 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %427, i32 0, i32 2
  %429 = load %struct.cryptoini*, %struct.cryptoini** %428, align 8
  store %struct.cryptoini* %429, %struct.cryptoini** %7, align 8
  %430 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %431 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %431, align 8
  br label %434

434:                                              ; preds = %421
  %435 = load i64, i64* %13, align 8
  %436 = add i64 %435, 1
  store i64 %436, i64* %13, align 8
  br label %30

437:                                              ; preds = %40
  %438 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %439 = icmp ne %struct.cryptoini* %438, null
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %442 = load i32, i32* @EINVAL, align 4
  store i32 %442, i32* %4, align 4
  br label %444

443:                                              ; preds = %437
  store i32 0, i32* %4, align 4
  br label %444

444:                                              ; preds = %443, %440, %416, %382, %338, %319, %297, %269, %235, %213, %193, %162, %140, %121, %89, %21
  %445 = load i32, i32* %4, align 4
  ret i32 %445
}

declare dso_local %struct.swcr_session* @crypto_get_driver_session(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @nitems(%struct.swcr_data*) #1

declare dso_local i32 @swcr_freesession(i32, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @swcr_authprepare(%struct.auth_hash*, %struct.swcr_data*, i32*, i32) #1

declare dso_local i32 @CRYPTDEB(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
