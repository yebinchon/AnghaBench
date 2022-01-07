; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.rt2860_softc = type { i32, i32, i32, i32, i32, i32 }

@RT3593_RESCAL = common dso_local global i32 0, align 4
@rt5392_def_rf = common dso_local global %struct.TYPE_4__* null, align 8
@rt5390_def_rf = common dso_local global %struct.TYPE_4__* null, align 8
@RT3070_OPT_14 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG1 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG2 = common dso_local global i32 0, align 4
@RT5390_RX_LO1 = common dso_local global i32 0, align 4
@RT5390_RX_LO2 = common dso_local global i32 0, align 4
@RT5390_MAC_IF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt5390_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5390_rf_init(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %6 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %7 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %6, i32 2)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RT3593_RESCAL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %8, i32 2, i32 %11)
  %13 = call i32 @DELAY(i32 1000)
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @RT3593_RESCAL, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %14, i32 2, i32 %18)
  %20 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 21394
  br i1 %23, label %24, label %49

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5392_def_rf, align 8
  %28 = call i32 @nitems(%struct.TYPE_4__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5392_def_rf, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5392_def_rf, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %31, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %25

48:                                               ; preds = %25
  br label %74

49:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5390_def_rf, align 8
  %53 = call i32 @nitems(%struct.TYPE_4__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5390_def_rf, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt5390_def_rf, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %56, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %76 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %75, i32 0, i32 1
  store i32 31, i32* %76, align 4
  %77 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %78 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %77, i32 0, i32 2
  store i32 47, i32* %78, align 4
  %79 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %80 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 529
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %85 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %84, i32 27, i32 3)
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %88 = load i32, i32* @RT3070_OPT_14, align 4
  %89 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %90 = load i32, i32* @RT3070_OPT_14, align 4
  %91 = call i32 @RAL_READ(%struct.rt2860_softc* %89, i32 %90)
  %92 = or i32 %91, 1
  %93 = call i32 @RAL_WRITE(%struct.rt2860_softc* %87, i32 %88, i32 %92)
  %94 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %95 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %96 = call i32 @RAL_WRITE(%struct.rt2860_softc* %94, i32 %95, i32 0)
  %97 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %98 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %99 = call i32 @RAL_WRITE(%struct.rt2860_softc* %97, i32 %98, i32 0)
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %101 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 21392
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %106 = call i32 @rt3090_set_rx_antenna(%struct.rt2860_softc* %105, i32 0)
  br label %107

107:                                              ; preds = %104, %86
  %108 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %109 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %108, i32 79, i32 19)
  %110 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %111 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %110, i32 80, i32 5)
  %112 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %113 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %112, i32 81, i32 51)
  %114 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %115 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 529
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %120 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %119, i32 103, i32 192)
  br label %121

121:                                              ; preds = %118, %107
  %122 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %123 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %122, i32 138)
  store i32 %123, i32* %4, align 4
  %124 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %125 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, 32
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %133 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %4, align 4
  %138 = and i32 %137, -3
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %140, i32 138, i32 %141)
  %143 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %144 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %145 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %144, i32 38)
  %146 = load i32, i32* @RT5390_RX_LO1, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %143, i32 38, i32 %148)
  %150 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %151 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %152 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %151, i32 39)
  %153 = load i32, i32* @RT5390_RX_LO2, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %150, i32 39, i32 %155)
  %157 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %158 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %159 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %158, i32 4)
  %160 = load i32, i32* @RT5390_MAC_IF_CTRL, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %157, i32 4, i32 %161)
  %163 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %164 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %163, i32 30)
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = and i32 %165, -25
  %167 = or i32 %166, 16
  store i32 %167, i32* %3, align 4
  %168 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %168, i32 30, i32 %169)
  ret void
}

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_set_rx_antenna(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
