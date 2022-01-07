; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_select_antenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_select_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@RT2573_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2573_DISABLE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_select_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_select_antenna(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %6 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %7 = call i32 @rum_bbp_read(%struct.rum_softc* %6, i32 4)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %9 = call i32 @rum_bbp_read(%struct.rum_softc* %8, i32 77)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %11 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %12 = call i32 @rum_read(%struct.rum_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %14 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RT2573_DISABLE_RX, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rum_write(%struct.rum_softc* %13, i32 %14, i32 %17)
  %19 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @rum_bbp_write(%struct.rum_softc* %19, i32 4, i32 %20)
  %22 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rum_bbp_write(%struct.rum_softc* %22, i32 77, i32 %23)
  %25 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %26 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @rum_write(%struct.rum_softc* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @rum_bbp_read(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_bbp_write(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
