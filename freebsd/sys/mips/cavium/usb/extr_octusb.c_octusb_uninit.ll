; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_softc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octusb_uninit(%struct.octusb_softc* %0) #0 {
  %2 = alloca %struct.octusb_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.octusb_softc* %0, %struct.octusb_softc** %2, align 8
  %4 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %5 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %4, i32 0, i32 1
  %6 = call i32 @USB_BUS_LOCK(i32* %5)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %15 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @cvmx_usb_shutdown(i32* %28)
  br label %30

30:                                               ; preds = %22, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %36 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %35, i32 0, i32 1
  %37 = call i32 @USB_BUS_UNLOCK(i32* %36)
  ret i32 0
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @cvmx_usb_shutdown(i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
