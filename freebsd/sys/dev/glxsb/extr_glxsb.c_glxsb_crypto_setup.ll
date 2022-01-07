; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i64, i32, i32 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot get crypto driver id\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glxsb_crypto_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_NULL_HMAC = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_RIPEMD160_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512_HMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot register crypto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxsb_softc*)* @glxsb_crypto_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_crypto_setup(%struct.glxsb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.glxsb_softc*, align 8
  store %struct.glxsb_softc* %0, %struct.glxsb_softc** %3, align 8
  %4 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %5 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %8 = call i64 @crypto_get_driverid(i32 %6, i32 4, i32 %7)
  %9 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @MTX_DEF, align 4
  %25 = call i32 @mtx_init(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %24)
  %26 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %30 = call i64 @crypto_register(i64 %28, i32 %29, i32 0, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %90

33:                                               ; preds = %21
  %34 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @CRYPTO_NULL_HMAC, align 4
  %38 = call i64 @crypto_register(i64 %36, i32 %37, i32 0, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %90

41:                                               ; preds = %33
  %42 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %46 = call i64 @crypto_register(i64 %44, i32 %45, i32 0, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %90

49:                                               ; preds = %41
  %50 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %51 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %54 = call i64 @crypto_register(i64 %52, i32 %53, i32 0, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %90

57:                                               ; preds = %49
  %58 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @CRYPTO_RIPEMD160_HMAC, align 4
  %62 = call i64 @crypto_register(i64 %60, i32 %61, i32 0, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %90

65:                                               ; preds = %57
  %66 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %67 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %70 = call i64 @crypto_register(i64 %68, i32 %69, i32 0, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %90

73:                                               ; preds = %65
  %74 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @CRYPTO_SHA2_384_HMAC, align 4
  %78 = call i64 @crypto_register(i64 %76, i32 %77, i32 0, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %90

81:                                               ; preds = %73
  %82 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %83 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @CRYPTO_SHA2_512_HMAC, align 4
  %86 = call i64 @crypto_register(i64 %84, i32 %85, i32 0, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %103

90:                                               ; preds = %88, %80, %72, %64, %56, %48, %40, %32
  %91 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %92 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %96 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @crypto_unregister_all(i64 %97)
  %99 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %100 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %99, i32 0, i32 1
  %101 = call i32 @mtx_destroy(i32* %100)
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %90, %89, %15
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @crypto_unregister_all(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
