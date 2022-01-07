; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_rf_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_rf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32, i64 }

@RT5390_RX_LO1 = common dso_local global i32 0, align 4
@RT5390_RX_LO2 = common dso_local global i32 0, align 4
@RT5390_MAC_IF_CTRL = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG1 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt5390_rf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt5390_rf_setup(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %5 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %6 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sge i32 %7, 529
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %11 = call i32 @run_bbp_write(%struct.run_softc* %10, i32 103, i32 192)
  %12 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %13 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 21906
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = call i32 @run_bbp_read(%struct.run_softc* %17, i32 31, i32* %3)
  %19 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -4
  %22 = call i32 @run_bbp_write(%struct.run_softc* %19, i32 31, i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %26 = call i32 @run_bbp_read(%struct.run_softc* %25, i32 138, i32* %3)
  %27 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %28 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %36 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, -3
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @run_bbp_write(%struct.run_softc* %43, i32 138, i32 %44)
  %46 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %47 = call i32 @run_rt3070_rf_read(%struct.run_softc* %46, i32 38, i32* %4)
  %48 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RT5390_RX_LO1, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @run_rt3070_rf_write(%struct.run_softc* %48, i32 38, i32 %52)
  %54 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %55 = call i32 @run_rt3070_rf_read(%struct.run_softc* %54, i32 39, i32* %4)
  %56 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RT5390_RX_LO2, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @run_rt3070_rf_write(%struct.run_softc* %56, i32 39, i32 %60)
  %62 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %63 = call i32 @run_bbp_read(%struct.run_softc* %62, i32 4, i32* %3)
  %64 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @RT5390_MAC_IF_CTRL, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @run_bbp_write(%struct.run_softc* %64, i32 4, i32 %67)
  %69 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %70 = call i32 @run_rt3070_rf_read(%struct.run_softc* %69, i32 30, i32* %4)
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, -25
  %73 = or i32 %72, 16
  store i32 %73, i32* %4, align 4
  %74 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @run_rt3070_rf_write(%struct.run_softc* %74, i32 30, i32 %75)
  %77 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %78 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 21906
  br i1 %80, label %81, label %104

81:                                               ; preds = %42
  %82 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %83 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %84 = call i32 @run_write(%struct.run_softc* %82, i32 %83, i32 0)
  %85 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %86 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 529
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %92 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %93 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 44, i32 15
  %98 = call i32 @run_write(%struct.run_softc* %90, i32 %91, i32 %97)
  br label %103

99:                                               ; preds = %81
  %100 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %101 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %102 = call i32 @run_write(%struct.run_softc* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %99, %89
  br label %104

104:                                              ; preds = %103, %42
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
