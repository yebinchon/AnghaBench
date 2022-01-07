; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uslcom_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@USLCOM_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uslcom_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uslcom_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uslcom_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uslcom_softc* @device_get_softc(i32 %4)
  store %struct.uslcom_softc* %5, %struct.uslcom_softc** %3, align 8
  %6 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.uslcom_softc* %6)
  %8 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %8, i32 0, i32 3
  %10 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %10, i32 0, i32 2
  %12 = call i32 @ucom_detach(i32* %9, i32* %11)
  %13 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USLCOM_N_TRANSFER, align 4
  %17 = call i32 @usbd_transfer_unsetup(i32 %15, i32 %16)
  %18 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %18, i32 0, i32 0
  %20 = call i32 @usb_callout_drain(i32* %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_claim_softc(i32 %21)
  %23 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %24 = call i32 @uslcom_free_softc(%struct.uslcom_softc* %23)
  ret i32 0
}

declare dso_local %struct.uslcom_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.uslcom_softc*) #1

declare dso_local i32 @ucom_detach(i32*, i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @uslcom_free_softc(%struct.uslcom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
