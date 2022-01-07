; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc_q0123.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_proc_q0123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@ATH_KTR_TXCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ath_tx_proc_q0123: txqs=0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ath_tx_proc_q0123 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_proc_q0123(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ath_softc*
  store %struct.ath_softc* %9, %struct.ath_softc** %5, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %11 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %26 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %28 = call i32 @ATH_LOCK(%struct.ath_softc* %27)
  %29 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %30 = load i32, i32* @HAL_PM_AWAKE, align 4
  %31 = call i32 @ath_power_set_power_state(%struct.ath_softc* %29, i32 %30)
  %32 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %33 = call i32 @ATH_UNLOCK(%struct.ath_softc* %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %35 = load i32, i32* @ATH_KTR_TXCOMP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ATH_KTR(%struct.ath_softc* %34, i32 %35, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @TXQACTIVE(i32 %38, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %43 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 7
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = call i64 @ath_tx_processq(%struct.ath_softc* %42, %struct.TYPE_2__* %46, i32 1)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %41, %2
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @TXQACTIVE(i32 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %58 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 7
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 1
  %62 = call i64 @ath_tx_processq(%struct.ath_softc* %57, %struct.TYPE_2__* %61, i32 1)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %56, %52
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @TXQACTIVE(i32 %68, i32 2)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %73 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 7
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 2
  %77 = call i64 @ath_tx_processq(%struct.ath_softc* %72, %struct.TYPE_2__* %76, i32 1)
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %71, %67
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @TXQACTIVE(i32 %83, i32 3)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %88 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 7
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 3
  %92 = call i64 @ath_tx_processq(%struct.ath_softc* %87, %struct.TYPE_2__* %91, i32 1)
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %86, %82
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 6
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @TXQACTIVE(i32 %98, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %108 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 6
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = call i64 @ath_tx_processq(%struct.ath_softc* %107, %struct.TYPE_2__* %110, i32 1)
  br label %112

112:                                              ; preds = %106, %97
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ath_hal_gettsf64(i32 %118)
  %120 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %121 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %126 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %131 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %132 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ath_led_event(%struct.ath_softc* %130, i32 %133)
  br label %135

135:                                              ; preds = %129, %122
  %136 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %137 = call i32 @ATH_PCU_LOCK(%struct.ath_softc* %136)
  %138 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %139 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %143 = call i32 @ATH_PCU_UNLOCK(%struct.ath_softc* %142)
  %144 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %145 = call i32 @ATH_LOCK(%struct.ath_softc* %144)
  %146 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %147 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %146)
  %148 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %149 = call i32 @ATH_UNLOCK(%struct.ath_softc* %148)
  %150 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %151 = call i32 @ath_tx_kick(%struct.ath_softc* %150)
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
