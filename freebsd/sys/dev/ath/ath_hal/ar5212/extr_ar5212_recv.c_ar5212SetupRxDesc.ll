; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212SetupRxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212SetupRxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5212_desc = type { i32, i64, i64, i64 }

@AR_BufLen = common dso_local global i32 0, align 4
@HAL_RXDESC_INTREQ = common dso_local global i32 0, align 4
@AR_RxInterReq = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetupRxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5212_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %11 = call %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc* %10)
  store %struct.ar5212_desc* %11, %struct.ar5212_desc** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AR_BufLen, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @HALASSERT(i32 %17)
  %19 = load %struct.ar5212_desc*, %struct.ar5212_desc** %9, align 8
  %20 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AR_BufLen, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.ar5212_desc*, %struct.ar5212_desc** %9, align 8
  %25 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @HAL_RXDESC_INTREQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @AR_RxInterReq, align 4
  %32 = load %struct.ar5212_desc*, %struct.ar5212_desc** %9, align 8
  %33 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %4
  %37 = load %struct.ar5212_desc*, %struct.ar5212_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ar5212_desc*, %struct.ar5212_desc** %9, align 8
  %40 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @AH_TRUE, align 4
  ret i32 %41
}

declare dso_local %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
