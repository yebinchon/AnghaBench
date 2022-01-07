; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc_q0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc_q0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@ATH_KTR_TXCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ath_tx_proc_q0: txqs=0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ath_tx_proc_q0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_proc_q0(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ath_softc*
  store %struct.ath_softc* %8, %struct.ath_softc** %5, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %10 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %9)
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %25 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = call i32 @ATH_LOCK(%struct.ath_softc* %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %29 = load i32, i32* @HAL_PM_AWAKE, align 4
  %30 = call i32 @ath_power_set_power_state(%struct.ath_softc* %28, i32 %29)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %32 = call i32 @ATH_UNLOCK(%struct.ath_softc* %31)
  %33 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %34 = load i32, i32* @ATH_KTR_TXCOMP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ATH_KTR(%struct.ath_softc* %33, i32 %34, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @TXQACTIVE(i32 %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %2
  %41 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %42 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 7
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = call i64 @ath_tx_processq(%struct.ath_softc* %41, %struct.TYPE_2__* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ath_hal_gettsf64(i32 %51)
  %53 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %40, %2
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @TXQACTIVE(i32 %56, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %66 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = call i64 @ath_tx_processq(%struct.ath_softc* %65, %struct.TYPE_2__* %68, i32 1)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %79 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %80 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ath_led_event(%struct.ath_softc* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %85 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %84)
  %86 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %91 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %90)
  %92 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %93 = call i32 @ATH_LOCK(%struct.ath_softc* %92)
  %94 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %95 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %94)
  %96 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %97 = call i32 @ATH_UNLOCK(%struct.ath_softc* %96)
  %98 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %99 = call i32 @ath_tx_kick(%struct.ath_softc* %98)
  ret void
}

declare dso_local i32 @ATH_PCU_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_PCU_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_KTR(%struct.ath_softc*, i32, i32, i8*, i32) #1

declare dso_local i64 @TXQACTIVE(i32, i32) #1

declare dso_local i64 @ath_tx_processq(%struct.ath_softc*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ath_hal_gettsf64(i32) #1

declare dso_local i32 @ath_led_event(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_kick(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
