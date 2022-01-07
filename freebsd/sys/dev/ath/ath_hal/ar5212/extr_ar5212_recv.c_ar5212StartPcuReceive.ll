; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212StartPcuReceive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212StartPcuReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_private = type { i32, i32 }

@AH_MARK_RX_CTL = common dso_local global i32 0, align 4
@AH_MARK_RX_CTL_PCU_START = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212StartPcuReceive(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_private*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %6)
  store %struct.ath_hal_private* %7, %struct.ath_hal_private** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AH_MARK_RX_CTL, align 4
  %10 = load i32, i32* @AH_MARK_RX_CTL_PCU_START, align 4
  %11 = call i32 @OS_MARK(%struct.ath_hal* %8, i32 %9, i32 %10)
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = load i32, i32* @AR_DIAG_SW, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* @AR_DIAG_SW, align 4
  %16 = call i32 @OS_REG_READ(%struct.ath_hal* %14, i32 %15)
  %17 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %12, i32 %13, i32 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call i32 @ar5212EnableMibCounters(%struct.ath_hal* %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load %struct.ath_hal_private*, %struct.ath_hal_private** %5, align 8
  %25 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_hal_private*, %struct.ath_hal_private** %5, align 8
  %28 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ar5212AniReset(%struct.ath_hal* %23, i32 %26, i32 %29, i32 %33)
  ret void
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5212EnableMibCounters(%struct.ath_hal*) #1

declare dso_local i32 @ar5212AniReset(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
