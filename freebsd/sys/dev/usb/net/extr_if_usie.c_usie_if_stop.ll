; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i32, i32*, i32 }

@USIE_CNS_ID_STOP = common dso_local global i32 0, align 4
@USIE_CNS_OB_LINK_UPDATE = common dso_local global i32 0, align 4
@USIE_IF_TX = common dso_local global i64 0, align 8
@USIE_IF_RX = common dso_local global i64 0, align 8
@USIE_IF_STATUS = common dso_local global i64 0, align 8
@USIE_HIP_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usie_softc*)* @usie_if_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_stop(%struct.usie_softc* %0) #0 {
  %2 = alloca %struct.usie_softc*, align 8
  store %struct.usie_softc* %0, %struct.usie_softc** %2, align 8
  %3 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %4 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %3, i32 0, i32 2
  %5 = call i32 @usb_callout_drain(i32* %4)
  %6 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %7 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %10 = load i32, i32* @USIE_CNS_ID_STOP, align 4
  %11 = load i32, i32* @USIE_CNS_OB_LINK_UPDATE, align 4
  %12 = call i32 @usie_cns_req(%struct.usie_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %14 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @USIE_IF_TX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usbd_transfer_stop(i32 %18)
  %20 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %21 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @USIE_IF_RX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usbd_transfer_stop(i32 %25)
  %27 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %28 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @USIE_IF_STATUS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbd_transfer_stop(i32 %32)
  %34 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %35 = load i32, i32* @USIE_HIP_DOWN, align 4
  %36 = call i32 @usie_if_cmd(%struct.usie_softc* %34, i32 %35)
  %37 = load %struct.usie_softc*, %struct.usie_softc** %2, align 8
  %38 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  ret void
}

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usie_cns_req(%struct.usie_softc*, i32, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @usie_if_cmd(%struct.usie_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
