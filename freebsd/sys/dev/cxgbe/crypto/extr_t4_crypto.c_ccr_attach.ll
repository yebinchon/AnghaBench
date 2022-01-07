; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i8*, i8*, i8*, i32, i64, %struct.TYPE_4__*, i64, i32*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.ccr_softc*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not get crypto driver id\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ccr\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@TX_SGL_SEGS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAX_RX_PHYS_DSGL_SGE = common dso_local global i32 0, align 4
@MAX_AAD_LEN = common dso_local global i32 0, align 4
@M_CCR = common dso_local global i32 0, align 4
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_224 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384 = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512 = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_224_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512_HMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_AES_ICM = common dso_local global i32 0, align 4
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i32 0, align 4
@CRYPTO_AES_128_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_192_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_256_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_XTS = common dso_local global i32 0, align 4
@CRYPTO_AES_CCM_16 = common dso_local global i32 0, align 4
@CRYPTO_AES_CCM_CBC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccr_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.ccr_softc*
  store %struct.ccr_softc* %8, %struct.ccr_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  %16 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %16, i32 0, i32 7
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %18, i32 0, i32 7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %25, i32 0, i32 10
  store i32* %24, i32** %26, align 8
  %27 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %27, i32 0, i32 7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %34, i32 0, i32 9
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %38 = call i64 @crypto_get_driverid(i32 %36, i32 4, i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %148

45:                                               ; preds = %1
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %47, i32 0, i32 8
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %50 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %50, i32 0, i32 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.ccr_softc* %49, %struct.ccr_softc** %53, align 8
  %54 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %56, i32 0, i32 5
  %58 = load i32, i32* @MTX_DEF, align 4
  %59 = call i32 @mtx_init(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %58)
  %60 = load i32, i32* @TX_SGL_SEGS, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call i8* @sglist_alloc(i32 %60, i32 %61)
  %63 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @TX_SGL_SEGS, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @sglist_alloc(i32 %65, i32 %66)
  %68 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @MAX_RX_PHYS_DSGL_SGE, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i8* @sglist_alloc(i32 %70, i32 %71)
  %73 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @MAX_AAD_LEN, align 4
  %76 = load i32, i32* @M_CCR, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i32 @malloc(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MAX_AAD_LEN, align 4
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = call i32 @sglist_build(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ccr_softc*, %struct.ccr_softc** %4, align 8
  %90 = call i32 @ccr_sysctls(%struct.ccr_softc* %89)
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @CRYPTO_SHA1, align 4
  %93 = call i32 @crypto_register(i64 %91, i32 %92, i32 0, i32 0)
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @CRYPTO_SHA2_224, align 4
  %96 = call i32 @crypto_register(i64 %94, i32 %95, i32 0, i32 0)
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* @CRYPTO_SHA2_256, align 4
  %99 = call i32 @crypto_register(i64 %97, i32 %98, i32 0, i32 0)
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* @CRYPTO_SHA2_384, align 4
  %102 = call i32 @crypto_register(i64 %100, i32 %101, i32 0, i32 0)
  %103 = load i64, i64* %5, align 8
  %104 = load i32, i32* @CRYPTO_SHA2_512, align 4
  %105 = call i32 @crypto_register(i64 %103, i32 %104, i32 0, i32 0)
  %106 = load i64, i64* %5, align 8
  %107 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %108 = call i32 @crypto_register(i64 %106, i32 %107, i32 0, i32 0)
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* @CRYPTO_SHA2_224_HMAC, align 4
  %111 = call i32 @crypto_register(i64 %109, i32 %110, i32 0, i32 0)
  %112 = load i64, i64* %5, align 8
  %113 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %114 = call i32 @crypto_register(i64 %112, i32 %113, i32 0, i32 0)
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* @CRYPTO_SHA2_384_HMAC, align 4
  %117 = call i32 @crypto_register(i64 %115, i32 %116, i32 0, i32 0)
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @CRYPTO_SHA2_512_HMAC, align 4
  %120 = call i32 @crypto_register(i64 %118, i32 %119, i32 0, i32 0)
  %121 = load i64, i64* %5, align 8
  %122 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %123 = call i32 @crypto_register(i64 %121, i32 %122, i32 0, i32 0)
  %124 = load i64, i64* %5, align 8
  %125 = load i32, i32* @CRYPTO_AES_ICM, align 4
  %126 = call i32 @crypto_register(i64 %124, i32 %125, i32 0, i32 0)
  %127 = load i64, i64* %5, align 8
  %128 = load i32, i32* @CRYPTO_AES_NIST_GCM_16, align 4
  %129 = call i32 @crypto_register(i64 %127, i32 %128, i32 0, i32 0)
  %130 = load i64, i64* %5, align 8
  %131 = load i32, i32* @CRYPTO_AES_128_NIST_GMAC, align 4
  %132 = call i32 @crypto_register(i64 %130, i32 %131, i32 0, i32 0)
  %133 = load i64, i64* %5, align 8
  %134 = load i32, i32* @CRYPTO_AES_192_NIST_GMAC, align 4
  %135 = call i32 @crypto_register(i64 %133, i32 %134, i32 0, i32 0)
  %136 = load i64, i64* %5, align 8
  %137 = load i32, i32* @CRYPTO_AES_256_NIST_GMAC, align 4
  %138 = call i32 @crypto_register(i64 %136, i32 %137, i32 0, i32 0)
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @CRYPTO_AES_XTS, align 4
  %141 = call i32 @crypto_register(i64 %139, i32 %140, i32 0, i32 0)
  %142 = load i64, i64* %5, align 8
  %143 = load i32, i32* @CRYPTO_AES_CCM_16, align 4
  %144 = call i32 @crypto_register(i64 %142, i32 %143, i32 0, i32 0)
  %145 = load i64, i64* %5, align 8
  %146 = load i32, i32* @CRYPTO_AES_CCM_CBC_MAC, align 4
  %147 = call i32 @crypto_register(i64 %145, i32 %146, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %45, %41
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @sglist_alloc(i32, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @sglist_build(i32, i32, i32) #1

declare dso_local i32 @ccr_sysctls(%struct.ccr_softc*) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
