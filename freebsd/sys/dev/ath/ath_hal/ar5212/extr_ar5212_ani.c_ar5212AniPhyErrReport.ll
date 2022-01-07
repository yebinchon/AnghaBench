; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniPhyErrReport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniPhyErrReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rx_status = type { i64 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.TYPE_2__, %struct.ar5212AniState*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar5212AniState = type { i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64 }

@AH_NULL = common dso_local global %struct.ath_rx_status* null, align 8
@HAL_PHYERR_OFDM_TIMING = common dso_local global i64 0, align 8
@HAL_PHYERR_CCK_TIMING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212AniPhyErrReport(%struct.ath_hal* %0, %struct.ath_rx_status* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_rx_status*, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  %6 = alloca %struct.ar5212AniState*, align 8
  %7 = alloca %struct.ar5212AniParams*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %4, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %5, align 8
  %10 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %11 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %16 = load %struct.ath_rx_status*, %struct.ath_rx_status** @AH_NULL, align 8
  %17 = icmp ne %struct.ath_rx_status* %15, %16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @HALASSERT(i32 %20)
  %22 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %23 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %22, i32 0, i32 1
  %24 = load %struct.ar5212AniState*, %struct.ar5212AniState** %23, align 8
  store %struct.ar5212AniState* %24, %struct.ar5212AniState** %6, align 8
  %25 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %26 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %25, i32 0, i32 2
  %27 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %26, align 8
  store %struct.ar5212AniParams* %27, %struct.ar5212AniParams** %7, align 8
  %28 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %29 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HAL_PHYERR_OFDM_TIMING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %18
  %34 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %35 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %44 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %47 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = call i32 @ar5212AniOfdmErrTrigger(%struct.ath_hal* %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %55 = call i32 @ar5212AniRestart(%struct.ath_hal* %53, %struct.ar5212AniState* %54)
  br label %56

56:                                               ; preds = %50, %33
  br label %88

57:                                               ; preds = %18
  %58 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %59 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HAL_PHYERR_CCK_TIMING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %65 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %69 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %74 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %77 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %82 = call i32 @ar5212AniCckErrTrigger(%struct.ath_hal* %81)
  %83 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %84 = load %struct.ar5212AniState*, %struct.ar5212AniState** %6, align 8
  %85 = call i32 @ar5212AniRestart(%struct.ath_hal* %83, %struct.ar5212AniState* %84)
  br label %86

86:                                               ; preds = %80, %63
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %56
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ar5212AniOfdmErrTrigger(%struct.ath_hal*) #1

declare dso_local i32 @ar5212AniRestart(%struct.ath_hal*, %struct.ar5212AniState*) #1

declare dso_local i32 @ar5212AniCckErrTrigger(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
