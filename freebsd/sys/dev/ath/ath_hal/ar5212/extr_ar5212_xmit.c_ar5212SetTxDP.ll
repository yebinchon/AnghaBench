; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212SetTxDP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212SetTxDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@HAL_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@AR_Q_TXE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetTxDP(%struct.ath_hal* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %7, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @HALASSERT(i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = call %struct.TYPE_8__* @AH5212(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HAL_TX_QUEUE_INACTIVE, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @HALASSERT(i32 %26)
  %28 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %29 = load i32, i32* @AR_Q_TXE, align 4
  %30 = call i32 @OS_REG_READ(%struct.ath_hal* %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @HALASSERT(i32 %36)
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @AR_QTXDP(i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @OS_REG_WRITE(%struct.ath_hal* %38, i32 %40, i32 %41)
  %43 = load i32, i32* @AH_TRUE, align 4
  ret i32 %43
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_8__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_QTXDP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
