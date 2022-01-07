; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i64*, i64* }

@CRYPTO_ALGORITHM_MIN = common dso_local global i32 0, align 4
@CRYPTO_ALGORITHM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_unregister(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptocap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cryptocap* @crypto_checkdriver(i32 %9)
  store %struct.cryptocap* %10, %struct.cryptocap** %5, align 8
  %11 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %12 = icmp ne %struct.cryptocap* %11, null
  br i1 %12, label %13, label %70

13:                                               ; preds = %2
  %14 = load i32, i32* @CRYPTO_ALGORITHM_MIN, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CRYPTO_ALGORITHM_MAX, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %23 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %21
  %31 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %32 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %38 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %30
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CRYPTO_ALGORITHM_MAX, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %49 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CRYPTO_ALGORITHM_MAX, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %68 = call i32 @driver_finis(%struct.cryptocap* %67)
  br label %69

69:                                               ; preds = %66, %61
  store i32 0, i32* %7, align 4
  br label %72

70:                                               ; preds = %21, %17, %13, %2
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local %struct.cryptocap* @crypto_checkdriver(i32) #1

declare dso_local i32 @driver_finis(%struct.cryptocap*) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
