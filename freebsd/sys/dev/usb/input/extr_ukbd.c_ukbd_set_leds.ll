; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_set_leds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"leds=0x%02x\0A\00", align 1
@UKBD_FLAG_SET_LEDS = common dso_local global i32 0, align 4
@UKBD_CTRL_LED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*, i32)* @ukbd_set_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_set_leds(%struct.ukbd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ukbd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @UKBD_LOCK_ASSERT()
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @UKBD_FLAG_SET_LEDS, align 4
  %12 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @UKBD_CTRL_LED, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usbd_transfer_start(i32 %21)
  ret void
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
