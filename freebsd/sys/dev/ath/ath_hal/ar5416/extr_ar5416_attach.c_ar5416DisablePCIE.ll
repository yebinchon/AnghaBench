; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416DisablePCIE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416DisablePCIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i64 }

@AR_PCIE_SERDES = common dso_local global i32 0, align 4
@AR_PCIE_SERDES2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416DisablePCIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416DisablePCIE(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %4 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call i64 @AR_SREV_OWL(%struct.ath_hal* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = call i64 @AR_SREV_OWL_20_OR_LATER(%struct.ath_hal* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9
  br label %55

18:                                               ; preds = %13
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call i32 @OS_REG_WRITE_BUFFER_ENABLE(%struct.ath_hal* %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load i32, i32* @AR_PCIE_SERDES, align 4
  %23 = call i32 @OS_REG_WRITE(%struct.ath_hal* %21, i32 %22, i32 -1840710656)
  %24 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %25 = load i32, i32* @AR_PCIE_SERDES, align 4
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %24, i32 %25, i32 613566756)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = load i32, i32* @AR_PCIE_SERDES, align 4
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %27, i32 %28, i32 671088681)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = load i32, i32* @AR_PCIE_SERDES, align 4
  %32 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 1461061668)
  %33 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %34 = load i32, i32* @AR_PCIE_SERDES, align 4
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %33, i32 %34, i32 630719865)
  %36 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %37 = load i32, i32* @AR_PCIE_SERDES, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %36, i32 %37, i32 0)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = load i32, i32* @AR_PCIE_SERDES, align 4
  %41 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 447397440)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = load i32, i32* @AR_PCIE_SERDES, align 4
  %44 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 -1106225836)
  %45 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %46 = load i32, i32* @AR_PCIE_SERDES, align 4
  %47 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 921607)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @AR_PCIE_SERDES2, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 0)
  %51 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %52 = call i32 @OS_REG_WRITE_BUFFER_FLUSH(%struct.ath_hal* %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %54 = call i32 @OS_REG_WRITE_BUFFER_DISABLE(%struct.ath_hal* %53)
  br label %55

55:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_OWL(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_OWL_20_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_ENABLE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_FLUSH(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_DISABLE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
