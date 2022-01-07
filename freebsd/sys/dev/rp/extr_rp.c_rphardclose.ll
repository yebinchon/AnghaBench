; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rphardclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rphardclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, i32 }
%struct.rp_port = type { i32 }

@TXINT_EN = common dso_local global i32 0, align 4
@MCINT_EN = common dso_local global i32 0, align 4
@RXINT_EN = common dso_local global i32 0, align 4
@SRCINT_EN = common dso_local global i32 0, align 4
@CHANINT_EN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @rphardclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rphardclose(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.rp_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = call %struct.rp_port* @tty_softc(%struct.tty* %5)
  store %struct.rp_port* %6, %struct.rp_port** %3, align 8
  %7 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %8 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %7, i32 0, i32 0
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @sFlushRxFIFO(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @sFlushTxFIFO(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @sDisTransmit(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @TXINT_EN, align 4
  %17 = load i32, i32* @MCINT_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RXINT_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SRCINT_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CHANINT_EN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @sDisInterrupts(i32* %15, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @sDisRTSFlowCtl(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sDisCTSFlowCtl(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sDisTxSoftFlowCtl(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sClrTxXOFF(i32* %32)
  ret void
}

declare dso_local %struct.rp_port* @tty_softc(%struct.tty*) #1

declare dso_local i32 @sFlushRxFIFO(i32*) #1

declare dso_local i32 @sFlushTxFIFO(i32*) #1

declare dso_local i32 @sDisTransmit(i32*) #1

declare dso_local i32 @sDisInterrupts(i32*, i32) #1

declare dso_local i32 @sDisRTSFlowCtl(i32*) #1

declare dso_local i32 @sDisCTSFlowCtl(i32*) #1

declare dso_local i32 @sDisTxSoftFlowCtl(i32*) #1

declare dso_local i32 @sClrTxXOFF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
