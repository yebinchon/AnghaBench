; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_attach.c_ar5211GetRadioRev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_attach.c_ar5211GetRadioRev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*)* @ar5211GetRadioRev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5211GetRadioRev(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = load i64, i64* @AR_PHY_BASE, align 8
  %7 = add nsw i64 %6, 208
  %8 = call i32 @OS_REG_WRITE(%struct.ath_hal* %5, i64 %7, i32 7190)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = load i64, i64* @AR_PHY_BASE, align 8
  %15 = add nsw i64 %14, 128
  %16 = call i32 @OS_REG_WRITE(%struct.ath_hal* %13, i64 %15, i32 65536)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load i64, i64* @AR_PHY_BASE, align 8
  %23 = add nsw i64 %22, 1024
  %24 = call i32 @OS_REG_READ(%struct.ath_hal* %21, i64 %23)
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 240
  %29 = ashr i32 %28, 4
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ath_hal_reverseBits(i32 %34, i32 8)
  ret i32 %35
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i64, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @ath_hal_reverseBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
