; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/cryptocteon/extr_cryptocteon.c_cryptocteon_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/cryptocteon/extr_cryptocteon.c_cryptocteon_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocteon_softc = type { i64 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"crypto_get_driverid ret %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cryptocteon_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptocteon_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cryptocteon_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cryptocteon_softc* @device_get_softc(i32 %5)
  store %struct.cryptocteon_softc* %6, %struct.cryptocteon_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %9 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @crypto_get_driverid(i32 %7, i32 4, i32 %10)
  %12 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %21 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %30 = call i32 @crypto_register(i64 %28, i32 %29, i32 0, i32 0)
  %31 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %32 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %35 = call i32 @crypto_register(i64 %33, i32 %34, i32 0, i32 0)
  %36 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %40 = call i32 @crypto_register(i64 %38, i32 %39, i32 0, i32 0)
  %41 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %42 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %45 = call i32 @crypto_register(i64 %43, i32 %44, i32 0, i32 0)
  %46 = load %struct.cryptocteon_softc*, %struct.cryptocteon_softc** %4, align 8
  %47 = getelementptr inbounds %struct.cryptocteon_softc, %struct.cryptocteon_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %50 = call i32 @crypto_register(i64 %48, i32 %49, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %25, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.cryptocteon_softc* @device_get_softc(i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
