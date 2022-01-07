; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.uath_cmd_rx_filter = type { i8*, i8* }

@UATH_DEBUG_RECV = common dso_local global i32 0, align 4
@UATH_DEBUG_RECV_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"setting Rx filter=0x%x flags=0x%x\0A\00", align 1
@WDCMSG_RX_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32, i32)* @uath_set_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_set_rxfilter(%struct.uath_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uath_cmd_rx_filter, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @htobe32(i32 %8)
  %10 = getelementptr inbounds %struct.uath_cmd_rx_filter, %struct.uath_cmd_rx_filter* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @htobe32(i32 %11)
  %13 = getelementptr inbounds %struct.uath_cmd_rx_filter, %struct.uath_cmd_rx_filter* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %15 = load i32, i32* @UATH_DEBUG_RECV, align 4
  %16 = load i32, i32* @UATH_DEBUG_RECV_ALL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DPRINTF(%struct.uath_softc* %14, i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %22 = load i32, i32* @WDCMSG_RX_FILTER, align 4
  %23 = call i32 @uath_cmd_write(%struct.uath_softc* %21, i32 %22, %struct.uath_cmd_rx_filter* %7, i32 16, i32 0)
  ret i32 %23
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @DPRINTF(%struct.uath_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_cmd_rx_filter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
