; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_set_rx_antenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_set_rx_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_PCI_EECTRL = common dso_local global i32 0, align 4
@RT2860_C = common dso_local global i32 0, align 4
@RT2860_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32)* @rt3090_set_rx_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3090_set_rx_antenna(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %2
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 21392
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %15 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %16 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %15, i32 152)
  %17 = and i32 %16, -129
  %18 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %14, i32 152, i32 %17)
  br label %39

19:                                               ; preds = %8
  %20 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %21 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %22 = call i32 @RAL_READ(%struct.rt2860_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %24 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RT2860_C, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @RAL_WRITE(%struct.rt2860_softc* %23, i32 %24, i32 %28)
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %31 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %32 = call i32 @RAL_READ(%struct.rt2860_softc* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %34 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -2057
  %37 = or i32 %36, 8
  %38 = call i32 @RAL_WRITE(%struct.rt2860_softc* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %19, %13
  br label %70

40:                                               ; preds = %2
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 21392
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %47 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %48 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %47, i32 152)
  %49 = or i32 %48, 128
  %50 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %46, i32 152, i32 %49)
  br label %69

51:                                               ; preds = %40
  %52 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %53 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %54 = call i32 @RAL_READ(%struct.rt2860_softc* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %56 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RT2860_C, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @RAL_WRITE(%struct.rt2860_softc* %55, i32 %56, i32 %59)
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %62 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %63 = call i32 @RAL_READ(%struct.rt2860_softc* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %65 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, -2057
  %68 = call i32 @RAL_WRITE(%struct.rt2860_softc* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %51, %45
  br label %70

70:                                               ; preds = %69, %39
  ret void
}

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
