; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_rf_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_rf_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i64 }

@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3593_VCO_IC = common dso_local global i32 0, align 4
@RT3593_VCOCAL = common dso_local global i32 0, align 4
@RT3593_RESCAL = common dso_local global i32 0, align 4
@RT5390_RX_CTB = common dso_local global i32 0, align 4
@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt5390_rf_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5390_rf_wakeup(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %8 = load i32, i32* @RT3070_PLL_PD, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RT3070_RX0_PD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RT3070_TX0_PD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 21394
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @RT3070_RX1_PD, align 4
  %22 = load i32, i32* @RT3070_TX1_PD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %27, i32 1, i32 %28)
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %31 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %30, i32 6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @RT3593_VCO_IC, align 4
  %33 = load i32, i32* @RT3593_VCOCAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 21392
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load i32, i32* @RT3593_VCO_IC, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %26
  %47 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %47, i32 6, i32 %48)
  %50 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %51 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %52 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %51, i32 2)
  %53 = load i32, i32* @RT3593_RESCAL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %50, i32 2, i32 %54)
  %56 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %57 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %56, i32 22)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, -225
  %60 = or i32 %59, 32
  store i32 %60, i32* %4, align 4
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %61, i32 22, i32 %62)
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %65 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %66 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %65, i32 42)
  %67 = load i32, i32* @RT5390_RX_CTB, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %64, i32 42, i32 %68)
  %70 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %71 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %72 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %71, i32 20)
  %73 = and i32 %72, -120
  %74 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %70, i32 20, i32 %73)
  %75 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %76 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %77 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %76, i32 3)
  %78 = load i32, i32* @RT3593_VCOCAL, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %75, i32 3, i32 %79)
  %81 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %82 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %46
  %86 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %87 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 529
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %92 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %93 = call i32 @RAL_READ(%struct.rt2860_softc* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, -520093697
  %96 = or i32 %95, 218103808
  store i32 %96, i32* %3, align 4
  %97 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %98 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @RAL_WRITE(%struct.rt2860_softc* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %85, %46
  ret void
}

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
