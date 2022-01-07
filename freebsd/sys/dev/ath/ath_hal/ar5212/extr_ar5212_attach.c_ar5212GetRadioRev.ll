; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212GetRadioRev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212GetRadioRev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212GetRadioRev(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call i32 @AR_PHY(i32 52)
  %7 = call i32 @OS_REG_WRITE(%struct.ath_hal* %5, i32 %6, i32 7190)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %13 = call i32 @AR_PHY(i32 32)
  %14 = call i32 @OS_REG_WRITE(%struct.ath_hal* %12, i32 %13, i32 65536)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call i32 @AR_PHY(i32 256)
  %21 = call i32 @OS_REG_READ(%struct.ath_hal* %19, i32 %20)
  %22 = ashr i32 %21, 24
  %23 = and i32 %22, 255
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 240
  %26 = ashr i32 %25, 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 15
  %29 = shl i32 %28, 4
  %30 = or i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ath_hal_reverseBits(i32 %31, i32 8)
  ret i32 %32
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_reverseBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
