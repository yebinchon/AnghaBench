; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.rp_port = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@SET_RTS = common dso_local global i32 0, align 4
@SET_DTR = common dso_local global i32 0, align 4
@_INDX_ADDR = common dso_local global i32 0, align 4
@TRIG_1 = common dso_local global i32 0, align 4
@TXINT_EN = common dso_local global i32 0, align 4
@MCINT_EN = common dso_local global i32 0, align 4
@RXINT_EN = common dso_local global i32 0, align 4
@SRCINT_EN = common dso_local global i32 0, align 4
@CHANINT_EN = common dso_local global i32 0, align 4
@POLL_INTERVAL = common dso_local global i32 0, align 4
@rp_do_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @rpopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpopen(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.rp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = call %struct.rp_port* @tty_softc(%struct.tty* %7)
  store %struct.rp_port* %8, %struct.rp_port** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @SET_RTS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SET_DTR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %16 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SET_RTS, align 4
  %22 = load i32, i32* @SET_DTR, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %29 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %27, i32* %32, align 4
  %33 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %34 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %33, i32 0, i32 3
  %35 = load i32, i32* @_INDX_ADDR, align 4
  %36 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %37 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @le32dec(i32* %39)
  %41 = call i32 @rp_writech4(%struct.TYPE_16__* %34, i32 %35, i32 %40)
  %42 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %43 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %42, i32 0, i32 3
  %44 = load i32, i32* @TRIG_1, align 4
  %45 = call i32 @sSetRxTrigger(%struct.TYPE_16__* %43, i32 %44)
  %46 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %47 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %46, i32 0, i32 3
  %48 = call i32 @sDisRxStatusMode(%struct.TYPE_16__* %47)
  %49 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %50 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %49, i32 0, i32 3
  %51 = call i32 @sFlushRxFIFO(%struct.TYPE_16__* %50)
  %52 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %53 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %52, i32 0, i32 3
  %54 = call i32 @sFlushTxFIFO(%struct.TYPE_16__* %53)
  %55 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %56 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %55, i32 0, i32 3
  %57 = load i32, i32* @TXINT_EN, align 4
  %58 = load i32, i32* @MCINT_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RXINT_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SRCINT_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CHANINT_EN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @sEnInterrupts(%struct.TYPE_16__* %56, i32 %65)
  %67 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %68 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %67, i32 0, i32 3
  %69 = load i32, i32* @TRIG_1, align 4
  %70 = call i32 @sSetRxTrigger(%struct.TYPE_16__* %68, i32 %69)
  %71 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %72 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %71, i32 0, i32 3
  %73 = call i32 @sDisRxStatusMode(%struct.TYPE_16__* %72)
  %74 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %75 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %74, i32 0, i32 3
  %76 = call i32 @sClrTxXOFF(%struct.TYPE_16__* %75)
  %77 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %78 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %77, i32 0, i32 3
  %79 = call i32 @sDisTxSoftFlowCtl(%struct.TYPE_16__* %78)
  %80 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %81 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %80, i32 0, i32 3
  %82 = call i32 @sStartRxProcessor(%struct.TYPE_16__* %81)
  %83 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %84 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %83, i32 0, i32 3
  %85 = call i32 @sEnRxFIFO(%struct.TYPE_16__* %84)
  %86 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %87 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %86, i32 0, i32 3
  %88 = call i32 @sEnTransmit(%struct.TYPE_16__* %87)
  %89 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %90 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %89, i32 0, i32 3
  %91 = call i32 @sGetChanIntID(%struct.TYPE_16__* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %94 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %92, %95
  store i32 %96, i32* %5, align 4
  %97 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %98 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %97, i32 0, i32 3
  %99 = call i32 @sGetChanStatus(%struct.TYPE_16__* %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %101 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %100, i32 0, i32 2
  %102 = load i32, i32* @POLL_INTERVAL, align 4
  %103 = load i32, i32* @rp_do_poll, align 4
  %104 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %105 = call i32 @callout_reset(i32* %101, i32 %102, i32 %103, %struct.rp_port* %104)
  %106 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %107 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %106, i32 0, i32 1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @device_busy(i32 %110)
  ret i32 0
}

declare dso_local %struct.rp_port* @tty_softc(%struct.tty*) #1

declare dso_local i32 @rp_writech4(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @sSetRxTrigger(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sDisRxStatusMode(%struct.TYPE_16__*) #1

declare dso_local i32 @sFlushRxFIFO(%struct.TYPE_16__*) #1

declare dso_local i32 @sFlushTxFIFO(%struct.TYPE_16__*) #1

declare dso_local i32 @sEnInterrupts(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sClrTxXOFF(%struct.TYPE_16__*) #1

declare dso_local i32 @sDisTxSoftFlowCtl(%struct.TYPE_16__*) #1

declare dso_local i32 @sStartRxProcessor(%struct.TYPE_16__*) #1

declare dso_local i32 @sEnRxFIFO(%struct.TYPE_16__*) #1

declare dso_local i32 @sEnTransmit(%struct.TYPE_16__*) #1

declare dso_local i32 @sGetChanIntID(%struct.TYPE_16__*) #1

declare dso_local i32 @sGetChanStatus(%struct.TYPE_16__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rp_port*) #1

declare dso_local i32 @device_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
