; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_attach.c_ar9287ConfigPCIE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_attach.c_ar9287ConfigPCIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR9285_WA_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, i32)* @ar9287ConfigPCIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9287ConfigPCIE(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %8 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = call %struct.TYPE_4__* @AH5416(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @ath_hal_ini_write(%struct.ath_hal* %16, i32* %19, i32 1, i32 0)
  %21 = call i32 @OS_DELAY(i32 1000)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %24 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %25 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i32, i32* @AR_WA, align 4
  %28 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %12, %3
  ret void
}

declare dso_local %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_ini_write(%struct.ath_hal*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
