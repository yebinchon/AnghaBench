; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_getfeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_getfeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32, i32* }

@crypto_drivers_num = common dso_local global i32 0, align 4
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@crypto_devallowsoft = common dso_local global i32 0, align 4
@CRK_ALGORITHM_MAX = common dso_local global i32 0, align 4
@CRYPTO_ALG_FLAG_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_getfeat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptocap*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @crypto_drivers_num, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %13, i64 %15
  store %struct.cryptocap* %16, %struct.cryptocap** %6, align 8
  %17 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %18 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* @crypto_devallowsoft, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %53

27:                                               ; preds = %23, %12
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CRK_ALGORITHM_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %34 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CRYPTO_ALG_FLAG_SUPPORTED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %28

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %8

56:                                               ; preds = %8
  %57 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %2, align 8
  store i32 %58, i32* %59, align 4
  ret i32 0
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
