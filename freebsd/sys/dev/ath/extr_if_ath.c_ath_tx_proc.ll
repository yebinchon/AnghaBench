; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64, i64, i32, i32, i32*, i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@ATH_KTR_TXCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ath_tx_proc: txqs=0x%08x\00", align 1
@HAL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ath_tx_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_proc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ath_softc*
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %11)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %29 = call i32 @ATH_LOCK(%struct.ath_softc* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %31 = load i32, i32* @HAL_PM_AWAKE, align 4
  %32 = call i32 @ath_power_set_power_state(%struct.ath_softc* %30, i32 %31)
  %33 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %34 = call i32 @ATH_UNLOCK(%struct.ath_softc* %33)
  %35 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %36 = load i32, i32* @ATH_KTR_TXCOMP, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ATH_KTR(%struct.ath_softc* %35, i32 %36, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %67, %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @HAL_NUM_TX_QUEUES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @ATH_TXQ_SETUP(%struct.ath_softc* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @TXQACTIVE(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %55 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i64 @ath_tx_processq(%struct.ath_softc* %54, i32* %60, i32 1)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %53, %48, %43
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ath_hal_gettsf64(i32 %76)
  %78 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %89 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ath_led_event(%struct.ath_softc* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %95 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %94)
  %96 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %101 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %100)
  %102 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %103 = call i32 @ATH_LOCK(%struct.ath_softc* %102)
  %104 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %105 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %104)
  %106 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %107 = call i32 @ATH_UNLOCK(%struct.ath_softc* %106)
  %108 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %109 = call i32 @ath_tx_kick(%struct.ath_softc* %108)
  ret void
}

declare dso_local i32 @ATH_PCU_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_PCU_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_KTR(%struct.ath_softc*, i32, i32, i8*, i32) #1

declare dso_local i64 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i64 @TXQACTIVE(i32, i32) #1

declare dso_local i64 @ath_tx_processq(%struct.ath_softc*, i32*, i32) #1

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
