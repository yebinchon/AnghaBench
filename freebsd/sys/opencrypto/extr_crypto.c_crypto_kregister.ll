; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32*, i32 }

@CRK_ALGORITM_MIN = common dso_local global i32 0, align 4
@CRK_ALGORITHM_MAX = common dso_local global i32 0, align 4
@CRYPTO_ALG_FLAG_SUPPORTED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"crypto: %s registers key alg %u flags %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_kregister(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptocap*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.cryptocap* @crypto_checkdriver(i32 %10)
  store %struct.cryptocap* %11, %struct.cryptocap** %7, align 8
  %12 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %13 = icmp ne %struct.cryptocap* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i32, i32* @CRK_ALGORITM_MIN, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CRK_ALGORITHM_MAX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CRYPTO_ALG_FLAG_SUPPORTED, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %27 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %36 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @device_get_nameunit(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %22
  store i32 0, i32* %8, align 4
  br label %45

43:                                               ; preds = %18, %14, %3
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local %struct.cryptocap* @crypto_checkdriver(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
