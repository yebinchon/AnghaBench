; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210UpdateMibCounters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210UpdateMibCounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@AR_ACK_FAIL = common dso_local global i32 0, align 4
@AR_RTS_FAIL = common dso_local global i32 0, align 4
@AR_FCS_FAIL = common dso_local global i32 0, align 4
@AR_RTS_OK = common dso_local global i32 0, align 4
@AR_BEACON_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5210UpdateMibCounters(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* @AR_ACK_FAIL, align 4
  %7 = call i64 @OS_REG_READ(%struct.ath_hal* %5, i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* @AR_RTS_FAIL, align 4
  %16 = call i64 @OS_REG_READ(%struct.ath_hal* %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_FCS_FAIL, align 4
  %25 = call i64 @OS_REG_READ(%struct.ath_hal* %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = load i32, i32* @AR_RTS_OK, align 4
  %34 = call i64 @OS_REG_READ(%struct.ath_hal* %32, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @AR_BEACON_CNT, align 4
  %43 = call i64 @OS_REG_READ(%struct.ath_hal* %41, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  ret void
}

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
