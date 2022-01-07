; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212ConfigPCIE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212ConfigPCIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PCIE_SERDES = common dso_local global i32 0, align 4
@AR_PCIE_SERDES2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, i32)* @ar5212ConfigPCIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212ConfigPCIE(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %8 = load i32, i32* @AR_PCIE_SERDES, align 4
  %9 = call i32 @OS_REG_WRITE(%struct.ath_hal* %7, i32 %8, i32 -1840710656)
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = load i32, i32* @AR_PCIE_SERDES, align 4
  %12 = call i32 @OS_REG_WRITE(%struct.ath_hal* %10, i32 %11, i32 613566756)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = load i32, i32* @AR_PCIE_SERDES, align 4
  %15 = call i32 @OS_REG_WRITE(%struct.ath_hal* %13, i32 %14, i32 671088697)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_PCIE_SERDES, align 4
  %18 = call i32 @OS_REG_WRITE(%struct.ath_hal* %16, i32 %17, i32 1393952804)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %20 = load i32, i32* @AR_PCIE_SERDES, align 4
  %21 = call i32 @OS_REG_WRITE(%struct.ath_hal* %19, i32 %20, i32 -443021959)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_PCIE_SERDES, align 4
  %24 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %23, i32 1961983)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %26 = load i32, i32* @AR_PCIE_SERDES, align 4
  %27 = call i32 @OS_REG_WRITE(%struct.ath_hal* %25, i32 %26, i32 447397440)
  %28 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %29 = load i32, i32* @AR_PCIE_SERDES, align 4
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %28, i32 %29, i32 -1106225836)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_PCIE_SERDES, align 4
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 929799)
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i32, i32* @AR_PCIE_SERDES2, align 4
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %34, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
