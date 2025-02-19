; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubser_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UBSER_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubser_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubser_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubser_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ubser_softc* @device_get_softc(i32 %4)
  store %struct.ubser_softc* %5, %struct.ubser_softc** %3, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ubser_softc*, %struct.ubser_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %7, i32 0, i32 2
  %9 = load %struct.ubser_softc*, %struct.ubser_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ucom_detach(i32* %8, i32 %11)
  %13 = load %struct.ubser_softc*, %struct.ubser_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UBSER_N_TRANSFER, align 4
  %17 = call i32 @usbd_transfer_unsetup(i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_claim_softc(i32 %18)
  %20 = load %struct.ubser_softc*, %struct.ubser_softc** %3, align 8
  %21 = call i32 @ubser_free_softc(%struct.ubser_softc* %20)
  ret i32 0
}

declare dso_local %struct.ubser_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ucom_detach(i32*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @ubser_free_softc(%struct.ubser_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
