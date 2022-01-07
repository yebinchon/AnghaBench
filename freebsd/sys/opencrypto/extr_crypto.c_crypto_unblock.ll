; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_unblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i64, i64 }

@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@CRYPTO_ASYMQ = common dso_local global i32 0, align 4
@crp_sleep = common dso_local global i64 0, align 8
@crp_q = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_unblock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptocap*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @CRYPTO_Q_LOCK()
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cryptocap* @crypto_checkdriver(i32 %8)
  store %struct.cryptocap* %9, %struct.cryptocap** %5, align 8
  %10 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %11 = icmp ne %struct.cryptocap* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CRYPTO_SYMQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %19 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CRYPTO_ASYMQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %27 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i64, i64* @crp_sleep, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @wakeup_one(i32* @crp_q)
  br label %33

33:                                               ; preds = %31, %28
  store i32 0, i32* %6, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = call i32 (...) @CRYPTO_Q_UNLOCK()
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @CRYPTO_Q_LOCK(...) #1

declare dso_local %struct.cryptocap* @crypto_checkdriver(i32) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @CRYPTO_Q_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
