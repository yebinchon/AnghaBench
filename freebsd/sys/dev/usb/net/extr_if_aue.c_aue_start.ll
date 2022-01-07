; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.aue_softc = type { i32* }

@AUE_INTR_DT_RD = common dso_local global i64 0, align 8
@AUE_BULK_DT_RD = common dso_local global i64 0, align 8
@AUE_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @aue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_start(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.aue_softc*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %4 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %5 = call %struct.aue_softc* @uether_getsc(%struct.usb_ether* %4)
  store %struct.aue_softc* %5, %struct.aue_softc** %3, align 8
  %6 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %7 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @AUE_INTR_DT_RD, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usbd_transfer_start(i32 %11)
  %13 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %14 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @AUE_BULK_DT_RD, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usbd_transfer_start(i32 %18)
  %20 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @AUE_BULK_DT_WR, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usbd_transfer_start(i32 %25)
  ret void
}

declare dso_local %struct.aue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
