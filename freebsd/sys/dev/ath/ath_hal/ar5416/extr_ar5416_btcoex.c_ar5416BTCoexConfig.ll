; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hal_5416 = type { i32, i32, i64 }

@AR_BT_QCU_THRESH = common dso_local global i32 0, align 4
@AR_BT_TIME_EXTEND = common dso_local global i32 0, align 4
@AR_BT_TXSTATE_EXTEND = common dso_local global i32 0, align 4
@AR_BT_TX_FRAME_EXTEND = common dso_local global i32 0, align 4
@AR_BT_MODE = common dso_local global i32 0, align 4
@AR_BT_QUIET = common dso_local global i32 0, align 4
@AR_BT_RX_CLEAR_POLARITY = common dso_local global i32 0, align 4
@AR_BT_PRIORITY_TIME = common dso_local global i32 0, align 4
@AR_BT_FIRST_SLOT_TIME = common dso_local global i32 0, align 4
@AR_BT_HOLD_RX_CLEAR = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@AR_BT_DISABLE_BT_ANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416BTCoexConfig(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ath_hal_5416*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %7)
  store %struct.ath_hal_5416* %8, %struct.ath_hal_5416** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call i64 @AR_SREV_KIWI(%struct.ath_hal* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %24 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AR_BT_QCU_THRESH, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AR_BT_TIME_EXTEND, align 4
  %32 = call i32 @SM(i32 %30, i32 %31)
  %33 = or i32 %27, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR_BT_TXSTATE_EXTEND, align 4
  %38 = call i32 @SM(i32 %36, i32 %37)
  %39 = or i32 %33, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR_BT_TX_FRAME_EXTEND, align 4
  %44 = call i32 @SM(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_BT_MODE, align 4
  %50 = call i32 @SM(i32 %48, i32 %49)
  %51 = or i32 %45, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AR_BT_QUIET, align 4
  %56 = call i32 @SM(i32 %54, i32 %55)
  %57 = or i32 %51, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @AR_BT_RX_CLEAR_POLARITY, align 4
  %60 = call i32 @SM(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AR_BT_PRIORITY_TIME, align 4
  %66 = call i32 @SM(i32 %64, i32 %65)
  %67 = or i32 %61, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_BT_FIRST_SLOT_TIME, align 4
  %72 = call i32 @SM(i32 %70, i32 %71)
  %73 = or i32 %67, %72
  %74 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %75 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_BT_HOLD_RX_CLEAR, align 4
  %80 = call i32 @SM(i32 %78, i32 %79)
  %81 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %82 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %86 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AH_FALSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %22
  %91 = load i32, i32* @AR_BT_DISABLE_BT_ANT, align 4
  %92 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %93 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %22
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_KIWI(%struct.ath_hal*) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
