; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32*, i32*, i64, i32 }

@CRYPTO_ALGORITHM_MIN = common dso_local global i32 0, align 4
@CRYPTO_ALGORITHM_MAX = common dso_local global i32 0, align 4
@CRYPTO_ALG_FLAG_SUPPORTED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"crypto: %s registers alg %u flags %u maxoplen %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cryptocap*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.cryptocap* @crypto_checkdriver(i32 %12)
  store %struct.cryptocap* %13, %struct.cryptocap** %9, align 8
  %14 = load %struct.cryptocap*, %struct.cryptocap** %9, align 8
  %15 = icmp ne %struct.cryptocap* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %4
  %17 = load i32, i32* @CRYPTO_ALGORITHM_MIN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CRYPTO_ALGORITHM_MAX, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CRYPTO_ALG_FLAG_SUPPORTED, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.cryptocap*, %struct.cryptocap** %9, align 8
  %29 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.cryptocap*, %struct.cryptocap** %9, align 8
  %36 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %24
  %44 = load %struct.cryptocap*, %struct.cryptocap** %9, align 8
  %45 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @device_get_nameunit(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %24
  %53 = load %struct.cryptocap*, %struct.cryptocap** %9, align 8
  %54 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  store i32 0, i32* %10, align 4
  br label %57

55:                                               ; preds = %20, %16, %4
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local %struct.cryptocap* @crypto_checkdriver(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
