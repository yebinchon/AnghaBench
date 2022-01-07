; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hmac_ipad_buffer = common dso_local global i32 0, align 4
@HMAC_IPAD_VAL = common dso_local global i32 0, align 4
@HMAC_MAX_BLOCK_LEN = common dso_local global i32 0, align 4
@hmac_opad_buffer = common dso_local global i32 0, align 4
@HMAC_OPAD_VAL = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@swcr_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"cannot initialize!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_BLF_CBC = common dso_local global i32 0, align 4
@CRYPTO_CAST_CBC = common dso_local global i32 0, align 4
@CRYPTO_SKIPJACK_CBC = common dso_local global i32 0, align 4
@CRYPTO_NULL_CBC = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_224_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512_HMAC = common dso_local global i32 0, align 4
@CRYPTO_RIPEMD160_HMAC = common dso_local global i32 0, align 4
@CRYPTO_NULL_HMAC = common dso_local global i32 0, align 4
@CRYPTO_MD5_KPDK = common dso_local global i32 0, align 4
@CRYPTO_SHA1_KPDK = common dso_local global i32 0, align 4
@CRYPTO_MD5 = common dso_local global i32 0, align 4
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_224 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512 = common dso_local global i32 0, align 4
@CRYPTO_RIJNDAEL128_CBC = common dso_local global i32 0, align 4
@CRYPTO_AES_XTS = common dso_local global i32 0, align 4
@CRYPTO_AES_ICM = common dso_local global i32 0, align 4
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i32 0, align 4
@CRYPTO_AES_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_128_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_192_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_256_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_CAMELLIA_CBC = common dso_local global i32 0, align 4
@CRYPTO_DEFLATE_COMP = common dso_local global i32 0, align 4
@CRYPTO_BLAKE2B = common dso_local global i32 0, align 4
@CRYPTO_BLAKE2S = common dso_local global i32 0, align 4
@CRYPTO_CHACHA20 = common dso_local global i32 0, align 4
@CRYPTO_AES_CCM_16 = common dso_local global i32 0, align 4
@CRYPTO_AES_CCM_CBC_MAC = common dso_local global i32 0, align 4
@CRYPTO_POLY1305 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @swcr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @hmac_ipad_buffer, align 4
  %5 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %6 = load i32, i32* @HMAC_MAX_BLOCK_LEN, align 4
  %7 = call i32 @memset(i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* @hmac_opad_buffer, align 4
  %9 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %10 = load i32, i32* @HMAC_MAX_BLOCK_LEN, align 4
  %11 = call i32 @memset(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %14 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @crypto_get_driverid(i32 %12, i32 4, i32 %15)
  store i64 %16, i64* @swcr_id, align 8
  %17 = load i64, i64* @swcr_id, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %138

23:                                               ; preds = %1
  %24 = load i64, i64* @swcr_id, align 8
  %25 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %26 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %24, i32 %25, i32 0, i32 0)
  %27 = load i64, i64* @swcr_id, align 8
  %28 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %29 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %27, i32 %28, i32 0, i32 0)
  %30 = load i64, i64* @swcr_id, align 8
  %31 = load i32, i32* @CRYPTO_BLF_CBC, align 4
  %32 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %30, i32 %31, i32 0, i32 0)
  %33 = load i64, i64* @swcr_id, align 8
  %34 = load i32, i32* @CRYPTO_CAST_CBC, align 4
  %35 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %33, i32 %34, i32 0, i32 0)
  %36 = load i64, i64* @swcr_id, align 8
  %37 = load i32, i32* @CRYPTO_SKIPJACK_CBC, align 4
  %38 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %36, i32 %37, i32 0, i32 0)
  %39 = load i64, i64* @swcr_id, align 8
  %40 = load i32, i32* @CRYPTO_NULL_CBC, align 4
  %41 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %39, i32 %40, i32 0, i32 0)
  %42 = load i64, i64* @swcr_id, align 8
  %43 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %44 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %42, i32 %43, i32 0, i32 0)
  %45 = load i64, i64* @swcr_id, align 8
  %46 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %47 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %45, i32 %46, i32 0, i32 0)
  %48 = load i64, i64* @swcr_id, align 8
  %49 = load i32, i32* @CRYPTO_SHA2_224_HMAC, align 4
  %50 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %48, i32 %49, i32 0, i32 0)
  %51 = load i64, i64* @swcr_id, align 8
  %52 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %53 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %51, i32 %52, i32 0, i32 0)
  %54 = load i64, i64* @swcr_id, align 8
  %55 = load i32, i32* @CRYPTO_SHA2_384_HMAC, align 4
  %56 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %54, i32 %55, i32 0, i32 0)
  %57 = load i64, i64* @swcr_id, align 8
  %58 = load i32, i32* @CRYPTO_SHA2_512_HMAC, align 4
  %59 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %57, i32 %58, i32 0, i32 0)
  %60 = load i64, i64* @swcr_id, align 8
  %61 = load i32, i32* @CRYPTO_RIPEMD160_HMAC, align 4
  %62 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %60, i32 %61, i32 0, i32 0)
  %63 = load i64, i64* @swcr_id, align 8
  %64 = load i32, i32* @CRYPTO_NULL_HMAC, align 4
  %65 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %63, i32 %64, i32 0, i32 0)
  %66 = load i64, i64* @swcr_id, align 8
  %67 = load i32, i32* @CRYPTO_MD5_KPDK, align 4
  %68 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %66, i32 %67, i32 0, i32 0)
  %69 = load i64, i64* @swcr_id, align 8
  %70 = load i32, i32* @CRYPTO_SHA1_KPDK, align 4
  %71 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %69, i32 %70, i32 0, i32 0)
  %72 = load i64, i64* @swcr_id, align 8
  %73 = load i32, i32* @CRYPTO_MD5, align 4
  %74 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %72, i32 %73, i32 0, i32 0)
  %75 = load i64, i64* @swcr_id, align 8
  %76 = load i32, i32* @CRYPTO_SHA1, align 4
  %77 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %75, i32 %76, i32 0, i32 0)
  %78 = load i64, i64* @swcr_id, align 8
  %79 = load i32, i32* @CRYPTO_SHA2_224, align 4
  %80 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %78, i32 %79, i32 0, i32 0)
  %81 = load i64, i64* @swcr_id, align 8
  %82 = load i32, i32* @CRYPTO_SHA2_256, align 4
  %83 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %81, i32 %82, i32 0, i32 0)
  %84 = load i64, i64* @swcr_id, align 8
  %85 = load i32, i32* @CRYPTO_SHA2_384, align 4
  %86 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %84, i32 %85, i32 0, i32 0)
  %87 = load i64, i64* @swcr_id, align 8
  %88 = load i32, i32* @CRYPTO_SHA2_512, align 4
  %89 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %87, i32 %88, i32 0, i32 0)
  %90 = load i64, i64* @swcr_id, align 8
  %91 = load i32, i32* @CRYPTO_RIJNDAEL128_CBC, align 4
  %92 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %90, i32 %91, i32 0, i32 0)
  %93 = load i64, i64* @swcr_id, align 8
  %94 = load i32, i32* @CRYPTO_AES_XTS, align 4
  %95 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %93, i32 %94, i32 0, i32 0)
  %96 = load i64, i64* @swcr_id, align 8
  %97 = load i32, i32* @CRYPTO_AES_ICM, align 4
  %98 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %96, i32 %97, i32 0, i32 0)
  %99 = load i64, i64* @swcr_id, align 8
  %100 = load i32, i32* @CRYPTO_AES_NIST_GCM_16, align 4
  %101 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %99, i32 %100, i32 0, i32 0)
  %102 = load i64, i64* @swcr_id, align 8
  %103 = load i32, i32* @CRYPTO_AES_NIST_GMAC, align 4
  %104 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %102, i32 %103, i32 0, i32 0)
  %105 = load i64, i64* @swcr_id, align 8
  %106 = load i32, i32* @CRYPTO_AES_128_NIST_GMAC, align 4
  %107 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %105, i32 %106, i32 0, i32 0)
  %108 = load i64, i64* @swcr_id, align 8
  %109 = load i32, i32* @CRYPTO_AES_192_NIST_GMAC, align 4
  %110 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %108, i32 %109, i32 0, i32 0)
  %111 = load i64, i64* @swcr_id, align 8
  %112 = load i32, i32* @CRYPTO_AES_256_NIST_GMAC, align 4
  %113 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %111, i32 %112, i32 0, i32 0)
  %114 = load i64, i64* @swcr_id, align 8
  %115 = load i32, i32* @CRYPTO_CAMELLIA_CBC, align 4
  %116 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %114, i32 %115, i32 0, i32 0)
  %117 = load i64, i64* @swcr_id, align 8
  %118 = load i32, i32* @CRYPTO_DEFLATE_COMP, align 4
  %119 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %117, i32 %118, i32 0, i32 0)
  %120 = load i64, i64* @swcr_id, align 8
  %121 = load i32, i32* @CRYPTO_BLAKE2B, align 4
  %122 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %120, i32 %121, i32 0, i32 0)
  %123 = load i64, i64* @swcr_id, align 8
  %124 = load i32, i32* @CRYPTO_BLAKE2S, align 4
  %125 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %123, i32 %124, i32 0, i32 0)
  %126 = load i64, i64* @swcr_id, align 8
  %127 = load i32, i32* @CRYPTO_CHACHA20, align 4
  %128 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %126, i32 %127, i32 0, i32 0)
  %129 = load i64, i64* @swcr_id, align 8
  %130 = load i32, i32* @CRYPTO_AES_CCM_16, align 4
  %131 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %129, i32 %130, i32 0, i32 0)
  %132 = load i64, i64* @swcr_id, align 8
  %133 = load i32, i32* @CRYPTO_AES_CCM_CBC_MAC, align 4
  %134 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %132, i32 %133, i32 0, i32 0)
  %135 = load i64, i64* @swcr_id, align 8
  %136 = load i32, i32* @CRYPTO_POLY1305, align 4
  %137 = call i32 (i64, i32, i32, i32, ...) bitcast (i32 (...)* @crypto_register to i32 (i64, i32, i32, i32, ...)*)(i64 %135, i32 %136, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %23, %19
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @crypto_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
