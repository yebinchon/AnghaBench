; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_recv.c_ar5416SetupRxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_recv.c_ar5416SetupRxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32, i32 }

@AR_BufLen = common dso_local global i32 0, align 4
@HAL_RXDESC_INTREQ = common dso_local global i32 0, align 4
@AR_RxIntrReq = common dso_local global i32 0, align 4
@AR_RxDone = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetupRxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AR_BufLen, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @HALASSERT(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AR_BufLen, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %23 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HAL_RXDESC_INTREQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @AR_RxIntrReq, align 4
  %30 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %31 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @AR_RxDone, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %42 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %41, i32 0, i32 1
  %43 = call i32 @OS_MEMZERO(i32* %42, i32 4)
  %44 = load i32, i32* @AH_TRUE, align 4
  ret i32 %44
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_MEMZERO(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
