; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_driver_suitable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_driver_suitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i64* }
%struct.cryptoini = type { i64, %struct.cryptoini* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptocap*, %struct.cryptoini*)* @driver_suitable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_suitable(%struct.cryptocap* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cryptocap*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  %6 = alloca %struct.cryptoini*, align 8
  store %struct.cryptocap* %0, %struct.cryptocap** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %7 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  store %struct.cryptoini* %7, %struct.cryptoini** %6, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %10 = icmp ne %struct.cryptoini* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.cryptocap*, %struct.cryptocap** %4, align 8
  %13 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %16 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %28

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %25 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %24, i32 0, i32 1
  %26 = load %struct.cryptoini*, %struct.cryptoini** %25, align 8
  store %struct.cryptoini* %26, %struct.cryptoini** %6, align 8
  br label %8

27:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
