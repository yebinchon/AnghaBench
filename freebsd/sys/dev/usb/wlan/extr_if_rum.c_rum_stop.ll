; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32*, i64 }

@RUM_BULK_WR = common dso_local global i64 0, align 8
@RUM_BULK_RD = common dso_local global i64 0, align 8
@RT2573_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2573_DISABLE_RX = common dso_local global i32 0, align 4
@RT2573_MAC_CSR1 = common dso_local global i32 0, align 4
@RT2573_RESET_ASIC = common dso_local global i32 0, align 4
@RT2573_RESET_BBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_stop(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %3 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %4 = call i32 @RUM_LOCK(%struct.rum_softc* %3)
  %5 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %11 = call i32 @RUM_UNLOCK(%struct.rum_softc* %10)
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %16 = call i32 @RUM_UNLOCK(%struct.rum_softc* %15)
  %17 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @RUM_BULK_WR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usbd_transfer_drain(i32 %22)
  %24 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @RUM_BULK_RD, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_transfer_drain(i32 %29)
  %31 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %32 = call i32 @RUM_LOCK(%struct.rum_softc* %31)
  %33 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %34 = call i32 @rum_unsetup_tx_list(%struct.rum_softc* %33)
  %35 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %36 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %37 = load i32, i32* @RT2573_DISABLE_RX, align 4
  %38 = call i32 @rum_setbits(%struct.rum_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %40 = load i32, i32* @RT2573_MAC_CSR1, align 4
  %41 = load i32, i32* @RT2573_RESET_ASIC, align 4
  %42 = load i32, i32* @RT2573_RESET_BBP, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @rum_write(%struct.rum_softc* %39, i32 %40, i32 %43)
  %45 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %46 = load i32, i32* @RT2573_MAC_CSR1, align 4
  %47 = call i32 @rum_write(%struct.rum_softc* %45, i32 %46, i32 0)
  %48 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %49 = call i32 @RUM_UNLOCK(%struct.rum_softc* %48)
  br label %50

50:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @rum_unsetup_tx_list(%struct.rum_softc*) #1

declare dso_local i32 @rum_setbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
