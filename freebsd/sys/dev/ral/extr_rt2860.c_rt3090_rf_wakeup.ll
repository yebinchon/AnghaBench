; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i64 }

@RT3593_VCO = common dso_local global i32 0, align 4
@RT3593_VCOCAL = common dso_local global i32 0, align 4
@RT3593_VCO_IC = common dso_local global i32 0, align 4
@RT3593_RESCAL = common dso_local global i32 0, align 4
@RT3593_CP_IC_MASK = common dso_local global i32 0, align 4
@RT3593_CP_IC_SHIFT = common dso_local global i32 0, align 4
@RT3593_RX_CTB = common dso_local global i32 0, align 4
@RT3593_LDO_RF_VC_MASK = common dso_local global i32 0, align 4
@RT3593_LDO_PLL_VC_MASK = common dso_local global i32 0, align 4
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_RX_CTB = common dso_local global i32 0, align 4
@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt3090_rf_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3090_rf_wakeup(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 13715
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %11 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RT3593_VCO, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %12, i32 1, i32 %15)
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %18 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %17, i32 3)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RT3593_VCOCAL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %19, i32 3, i32 %22)
  %24 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %25 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %24, i32 6)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @RT3593_VCO_IC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %26, i32 6, i32 %29)
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %32 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %31, i32 2)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RT3593_RESCAL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %33, i32 2, i32 %36)
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %39 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %38, i32 22)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @RT3593_CP_IC_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @RT3593_CP_IC_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %48, i32 22, i32 %49)
  %51 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %52 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %51, i32 46)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RT3593_RX_CTB, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %53, i32 46, i32 %56)
  %58 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %59 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %58, i32 20)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @RT3593_LDO_RF_VC_MASK, align 4
  %61 = load i32, i32* @RT3593_LDO_PLL_VC_MASK, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %66, i32 20, i32 %67)
  br label %111

69:                                               ; preds = %1
  %70 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %71 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %70, i32 1)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %72, i32 1, i32 %75)
  %77 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %78 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %77, i32 7)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, 48
  %82 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %79, i32 7, i32 %81)
  %83 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %84 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %83, i32 9)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, 14
  %88 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %85, i32 9, i32 %87)
  %89 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %90 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %89, i32 21)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @RT3070_RX_CTB, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %91, i32 21, i32 %94)
  %96 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %97 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %96, i32 27)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, -120
  store i32 %99, i32* %4, align 4
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %101 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 529
  br i1 %103, label %104, label %107

104:                                              ; preds = %69
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, 3
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %69
  %108 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %108, i32 27, i32 %109)
  br label %111

111:                                              ; preds = %107, %9
  %112 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %113 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %118 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 529
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %123 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %124 = call i32 @RAL_READ(%struct.rt2860_softc* %122, i32 %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, -520093697
  %127 = or i32 %126, 218103808
  store i32 %127, i32* %3, align 4
  %128 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %129 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @RAL_WRITE(%struct.rt2860_softc* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %121, %116, %111
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
