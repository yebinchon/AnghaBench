; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_softc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"real interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octusb_interrupt(%struct.octusb_softc* %0) #0 {
  %2 = alloca %struct.octusb_softc*, align 8
  store %struct.octusb_softc* %0, %struct.octusb_softc** %2, align 8
  %3 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %3, i32 0, i32 0
  %5 = call i32 @USB_BUS_LOCK(i32* %4)
  %6 = call i32 @DPRINTFN(i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %8 = call i32 @octusb_interrupt_poll(%struct.octusb_softc* %7)
  %9 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %9, i32 0, i32 0
  %11 = call i32 @USB_BUS_UNLOCK(i32* %10)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @octusb_interrupt_poll(%struct.octusb_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
