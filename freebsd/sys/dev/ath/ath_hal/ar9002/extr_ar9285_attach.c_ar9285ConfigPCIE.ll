; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_attach.c_ar9285ConfigPCIE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_attach.c_ar9285ConfigPCIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_BIT6 = common dso_local global i32 0, align 4
@AR_WA_BIT7 = common dso_local global i32 0, align 4
@AR9285_WA_DEFAULT = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@AR_WA_BIT23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i64, i64)* @ar9285ConfigPCIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9285ConfigPCIE(%struct.ath_hal* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = call %struct.TYPE_6__* @AH5416(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @ath_hal_ini_write(%struct.ath_hal* %17, i32* %20, i32 1, i32 0)
  %22 = call i32 @OS_DELAY(i32 1000)
  br label %23

23:                                               ; preds = %16, %13, %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %29 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %30 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %27, i32 %28, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_WA, align 4
  %33 = call i32 @OS_REG_READ(%struct.ath_hal* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @AR_WA_BIT6, align 4
  %35 = load i32, i32* @AR_WA_BIT7, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  %41 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %50 = call i64 @AR_SREV_9285E_20(%struct.ath_hal* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @AR_WA_BIT23, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %58 = load i32, i32* @AR_WA, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %57, i32 %58, i32 %59)
  br label %88

61:                                               ; preds = %23
  %62 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @AR_WA_BIT6, align 4
  %68 = load i32, i32* @AR_WA_BIT7, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %73 = call i64 @AR_SREV_9285E_20(%struct.ath_hal* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @AR_WA_BIT23, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %61
  %80 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %81 = load i32, i32* @AR_WA, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @OS_REG_WRITE(%struct.ath_hal* %80, i32 %81, i32 %82)
  %84 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %85 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %86 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %87 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %56
  ret void
}

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_ini_write(%struct.ath_hal*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
