; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_driver_finis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_driver_finis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i64, i64, i32 }

@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptocap*)* @driver_finis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @driver_finis(%struct.cryptocap* %0) #0 {
  %2 = alloca %struct.cryptocap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.cryptocap* %0, %struct.cryptocap** %2, align 8
  %5 = call i32 (...) @CRYPTO_DRIVER_ASSERT()
  %6 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %7 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %10 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %13 = call i32 @bzero(%struct.cryptocap* %12, i32 24)
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %21 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %22 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %27 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.cryptocap*, %struct.cryptocap** %2, align 8
  %30 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @CRYPTO_DRIVER_ASSERT(...) #1

declare dso_local i32 @bzero(%struct.cryptocap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
