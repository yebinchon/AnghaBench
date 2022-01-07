; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_rf_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_rf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i64 }

@RT2860_TX_SW_CFG1 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG2 = common dso_local global i32 0, align 4
@RT3593_TX_LO2 = common dso_local global i32 0, align 4
@RT3593_TX_LO1 = common dso_local global i32 0, align 4
@RT5390_RX_LO1 = common dso_local global i32 0, align 4
@RT5390_RX_LO2 = common dso_local global i32 0, align 4
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT5390_MLD = common dso_local global i32 0, align 4
@RT5390_MAC_IF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt3593_rf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3593_rf_setup(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %5 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %6 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sge i32 %7, 529
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %11 = call i32 @run_bbp_write(%struct.run_softc* %10, i32 103, i32 192)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %14 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %15 = call i32 @run_write(%struct.run_softc* %13, i32 %14, i32 0)
  %16 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %17 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 529
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %23 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 44, i32 15
  %29 = call i32 @run_write(%struct.run_softc* %21, i32 %22, i32 %28)
  br label %34

30:                                               ; preds = %12
  %31 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %32 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %33 = call i32 @run_write(%struct.run_softc* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %36 = call i32 @run_rt3070_rf_read(%struct.run_softc* %35, i32 50, i32* %4)
  %37 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RT3593_TX_LO2, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @run_rt3070_rf_write(%struct.run_softc* %37, i32 50, i32 %41)
  %43 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %44 = call i32 @run_rt3070_rf_read(%struct.run_softc* %43, i32 51, i32* %4)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RT3593_TX_LO1, align 4
  %47 = or i32 %46, 12
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %51 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = shl i32 %53, 2
  %55 = or i32 %49, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @run_rt3070_rf_write(%struct.run_softc* %56, i32 51, i32 %57)
  %59 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %60 = call i32 @run_rt3070_rf_read(%struct.run_softc* %59, i32 38, i32* %4)
  %61 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @RT5390_RX_LO1, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @run_rt3070_rf_write(%struct.run_softc* %61, i32 38, i32 %65)
  %67 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %68 = call i32 @run_rt3070_rf_read(%struct.run_softc* %67, i32 39, i32* %4)
  %69 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RT5390_RX_LO2, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @run_rt3070_rf_write(%struct.run_softc* %69, i32 39, i32 %73)
  %75 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %76 = call i32 @run_rt3070_rf_read(%struct.run_softc* %75, i32 1, i32* %4)
  %77 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %80 = load i32, i32* @RT3070_PLL_PD, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = call i32 @run_rt3070_rf_write(%struct.run_softc* %77, i32 1, i32 %83)
  %85 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %86 = call i32 @run_rt3070_rf_read(%struct.run_softc* %85, i32 30, i32* %4)
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, -25
  %89 = or i32 %88, 16
  store i32 %89, i32* %4, align 4
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @run_rt3070_rf_write(%struct.run_softc* %90, i32 30, i32 %91)
  %93 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %94 = call i32 @run_bbp_read(%struct.run_softc* %93, i32 105, i32* %3)
  %95 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %96 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %34
  %100 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @RT5390_MLD, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @run_bbp_write(%struct.run_softc* %100, i32 105, i32 %103)
  br label %105

105:                                              ; preds = %99, %34
  %106 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %107 = call i32 @run_bbp_read(%struct.run_softc* %106, i32 4, i32* %3)
  %108 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @RT5390_MAC_IF_CTRL, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @run_bbp_write(%struct.run_softc* %108, i32 4, i32 %111)
  %113 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %114 = call i32 @run_bbp_write(%struct.run_softc* %113, i32 92, i32 2)
  %115 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %116 = call i32 @run_bbp_write(%struct.run_softc* %115, i32 82, i32 130)
  %117 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %118 = call i32 @run_bbp_write(%struct.run_softc* %117, i32 106, i32 5)
  %119 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %120 = call i32 @run_bbp_write(%struct.run_softc* %119, i32 104, i32 146)
  %121 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %122 = call i32 @run_bbp_write(%struct.run_softc* %121, i32 88, i32 144)
  %123 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %124 = call i32 @run_bbp_write(%struct.run_softc* %123, i32 148, i32 200)
  %125 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %126 = call i32 @run_bbp_write(%struct.run_softc* %125, i32 47, i32 72)
  %127 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %128 = call i32 @run_bbp_write(%struct.run_softc* %127, i32 120, i32 80)
  %129 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %130 = call i32 @run_bbp_write(%struct.run_softc* %129, i32 163, i32 157)
  %131 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %132 = call i32 @run_bbp_write(%struct.run_softc* %131, i32 142, i32 6)
  %133 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %134 = call i32 @run_bbp_write(%struct.run_softc* %133, i32 143, i32 160)
  %135 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %136 = call i32 @run_bbp_write(%struct.run_softc* %135, i32 142, i32 7)
  %137 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %138 = call i32 @run_bbp_write(%struct.run_softc* %137, i32 143, i32 161)
  %139 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %140 = call i32 @run_bbp_write(%struct.run_softc* %139, i32 142, i32 8)
  %141 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %142 = call i32 @run_bbp_write(%struct.run_softc* %141, i32 143, i32 162)
  %143 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %144 = call i32 @run_bbp_write(%struct.run_softc* %143, i32 31, i32 8)
  %145 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %146 = call i32 @run_bbp_write(%struct.run_softc* %145, i32 68, i32 11)
  %147 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %148 = call i32 @run_bbp_write(%struct.run_softc* %147, i32 105, i32 4)
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
