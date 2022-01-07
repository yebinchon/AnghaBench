; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_try.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ktls_session = type { i32, i32, %struct.ocf_session*, %struct.TYPE_2__ }
%struct.ocf_session = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32 }
%struct.cryptoini = type { i32, i32, %struct.cryptoini*, i32 }

@TLS_AEAD_GCM_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_AES_128_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_256_NIST_GMAC = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@TLS_MAJOR_VER_ONE = common dso_local global i64 0, align 8
@TLS_MINOR_VER_ONE = common dso_local global i64 0, align 8
@TLS_MINOR_VER_TWO = common dso_local global i64 0, align 8
@M_KTLS_OCF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_FLAG_HARDWARE = common dso_local global i32 0, align 4
@CRYPTO_FLAG_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ktls_ocf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ktls_ocf_encrypt = common dso_local global i32 0, align 4
@ktls_ocf_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.ktls_session*)* @ktls_ocf_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktls_ocf_try(%struct.socket* %0, %struct.ktls_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.ktls_session*, align 8
  %6 = alloca %struct.cryptoini, align 8
  %7 = alloca %struct.cryptoini, align 8
  %8 = alloca %struct.ocf_session*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.ktls_session* %1, %struct.ktls_session** %5, align 8
  %10 = call i32 @memset(%struct.cryptoini* %6, i32 0, i32 24)
  %11 = call i32 @memset(%struct.cryptoini* %7, i32 0, i32 24)
  %12 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %13 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %50 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %18 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TLS_AEAD_GCM_LEN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %134

25:                                               ; preds = %16
  %26 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %27 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 16, label %30
    i32 32, label %33
  ]

30:                                               ; preds = %25
  %31 = load i32, i32* @CRYPTO_AES_128_NIST_GMAC, align 4
  %32 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @CRYPTO_AES_256_NIST_GMAC, align 4
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %33, %30
  %39 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %40 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %45 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 8
  %49 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %51, i32* %3, align 4
  br label %134

52:                                               ; preds = %38
  %53 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %54 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TLS_MAJOR_VER_ONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %73, label %59

59:                                               ; preds = %52
  %60 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %61 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TLS_MINOR_VER_ONE, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %68 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TLS_MINOR_VER_TWO, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66, %59, %52
  %74 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %74, i32* %3, align 4
  br label %134

75:                                               ; preds = %66
  %76 = load i32, i32* @M_KTLS_OCF, align 4
  %77 = load i32, i32* @M_NOWAIT, align 4
  %78 = load i32, i32* @M_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call %struct.ocf_session* @malloc(i32 12, i32 %76, i32 %79)
  store %struct.ocf_session* %80, %struct.ocf_session** %8, align 8
  %81 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %82 = icmp eq %struct.ocf_session* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %3, align 4
  br label %134

85:                                               ; preds = %75
  %86 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %87 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %92 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 3
  store i32 %94, i32* %95, align 8
  %96 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %97 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 8
  %101 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 2
  store %struct.cryptoini* %6, %struct.cryptoini** %102, align 8
  %103 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %104 = getelementptr inbounds %struct.ocf_session, %struct.ocf_session* %103, i32 0, i32 2
  %105 = load i32, i32* @CRYPTO_FLAG_HARDWARE, align 4
  %106 = load i32, i32* @CRYPTO_FLAG_SOFTWARE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @crypto_newsession(i32* %104, %struct.cryptoini* %7, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %85
  %112 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %113 = load i32, i32* @M_KTLS_OCF, align 4
  %114 = call i32 @free(%struct.ocf_session* %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %134

116:                                              ; preds = %85
  %117 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %120 = getelementptr inbounds %struct.ocf_session, %struct.ocf_session* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %122 = getelementptr inbounds %struct.ocf_session, %struct.ocf_session* %121, i32 0, i32 1
  %123 = load i32, i32* @MTX_DEF, align 4
  %124 = call i32 @mtx_init(i32* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %123)
  %125 = load %struct.ocf_session*, %struct.ocf_session** %8, align 8
  %126 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %127 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %126, i32 0, i32 2
  store %struct.ocf_session* %125, %struct.ocf_session** %127, align 8
  %128 = load i32, i32* @ktls_ocf_encrypt, align 4
  %129 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %130 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @ktls_ocf_free, align 4
  %132 = load %struct.ktls_session*, %struct.ktls_session** %5, align 8
  %133 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %116, %111, %83, %73, %50, %36, %23
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%struct.cryptoini*, i32, i32) #1

declare dso_local %struct.ocf_session* @malloc(i32, i32, i32) #1

declare dso_local i32 @crypto_newsession(i32*, %struct.cryptoini*, i32) #1

declare dso_local i32 @free(%struct.ocf_session*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
