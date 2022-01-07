; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@JME_GHC = common dso_local global i32 0, align 4
@GHC_RESET = common dso_local global i32 0, align 4
@JME_FLAG_TXCLK = common dso_local global i32 0, align 4
@JME_FLAG_RXCLK = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_DIS = common dso_local global i32 0, align 4
@JME_GPREG1 = common dso_local global i32 0, align 4
@GPREG1_RX_MAC_CLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_reset(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %5 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %6 = call i32 @jme_stop_rx(%struct.jme_softc* %5)
  %7 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %8 = call i32 @jme_stop_tx(%struct.jme_softc* %7)
  %9 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %10 = load i32, i32* @JME_GHC, align 4
  %11 = load i32, i32* @GHC_RESET, align 4
  %12 = call i32 @CSR_WRITE_4(%struct.jme_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %14 = load i32, i32* @JME_GHC, align 4
  %15 = call i32 @CSR_READ_4(%struct.jme_softc* %13, i32 %14)
  %16 = call i32 @DELAY(i32 10)
  %17 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %18 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @JME_FLAG_TXCLK, align 4
  %21 = load i32, i32* @JME_FLAG_RXCLK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %1
  %26 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %27 = load i32, i32* @JME_GHC, align 4
  %28 = load i32, i32* @GHC_RESET, align 4
  %29 = load i32, i32* @GHC_TX_MAC_CLK_DIS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @CSR_WRITE_4(%struct.jme_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %33 = load i32, i32* @JME_GPREG1, align 4
  %34 = call i32 @CSR_READ_4(%struct.jme_softc* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %36 = load i32, i32* @JME_GPREG1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @GPREG1_RX_MAC_CLK_DIS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @CSR_WRITE_4(%struct.jme_softc* %35, i32 %36, i32 %39)
  %41 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %42 = load i32, i32* @JME_GPREG1, align 4
  %43 = call i32 @CSR_READ_4(%struct.jme_softc* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %45 = load i32, i32* @JME_GHC, align 4
  %46 = load i32, i32* @GHC_TX_MAC_CLK_DIS, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.jme_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %49 = load i32, i32* @JME_GHC, align 4
  %50 = call i32 @CSR_READ_4(%struct.jme_softc* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %52 = load i32, i32* @JME_GHC, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @GHC_TX_MAC_CLK_DIS, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @CSR_WRITE_4(%struct.jme_softc* %51, i32 %52, i32 %56)
  %58 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %59 = load i32, i32* @JME_GPREG1, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @GPREG1_RX_MAC_CLK_DIS, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @CSR_WRITE_4(%struct.jme_softc* %58, i32 %59, i32 %63)
  %65 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %66 = load i32, i32* @JME_GPREG1, align 4
  %67 = call i32 @CSR_READ_4(%struct.jme_softc* %65, i32 %66)
  %68 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %69 = load i32, i32* @JME_GHC, align 4
  %70 = load i32, i32* @GHC_TX_MAC_CLK_DIS, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.jme_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %73 = load i32, i32* @JME_GPREG1, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @GPREG1_RX_MAC_CLK_DIS, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @CSR_WRITE_4(%struct.jme_softc* %72, i32 %73, i32 %76)
  br label %82

78:                                               ; preds = %1
  %79 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %80 = load i32, i32* @JME_GHC, align 4
  %81 = call i32 @CSR_WRITE_4(%struct.jme_softc* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %78, %25
  %83 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %84 = load i32, i32* @JME_GHC, align 4
  %85 = call i32 @CSR_READ_4(%struct.jme_softc* %83, i32 %84)
  %86 = call i32 @DELAY(i32 10)
  ret void
}

declare dso_local i32 @jme_stop_rx(%struct.jme_softc*) #1

declare dso_local i32 @jme_stop_tx(%struct.jme_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
