; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9002_hw_pa_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9002_hw_pa_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9002_hw_pa_cal(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = call i64 @AR_SREV_KITE_11_OR_LATER(%struct.ath_hal* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11, %8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @ar9285_hw_pa_cal(%struct.ath_hal* %19, i64 %20)
  br label %29

22:                                               ; preds = %11
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = call %struct.TYPE_4__* @AH9285(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %18
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

declare dso_local i64 @AR_SREV_KITE_11_OR_LATER(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH9285(%struct.ath_hal*) #1

declare dso_local i32 @ar9285_hw_pa_cal(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
