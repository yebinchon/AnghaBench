; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_snes_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32 }

@UREQ_SOFT_RESET = common dso_local global i32 0, align 4
@USB_MS_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhid_snes_softc*)* @uhid_snes_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_snes_reset(%struct.uhid_snes_softc* %0) #0 {
  %2 = alloca %struct.uhid_snes_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i32, align 4
  store %struct.uhid_snes_softc* %0, %struct.uhid_snes_softc** %2, align 8
  %5 = load i32, i32* @UREQ_SOFT_RESET, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @USETW(i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @USETW(i32 %11, i32 %14)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USETW(i32 %17, i32 0)
  %19 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %20 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %23 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %26 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %25, i32 0, i32 0
  %27 = load i32, i32* @USB_MS_HZ, align 4
  %28 = mul nsw i32 2, %27
  %29 = call i32 @usbd_do_request_flags(i32 %24, i32* %26, %struct.usb_device_request* %3, i32* null, i32 0, i32* null, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %37 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %36, i32 0, i32 0
  %38 = load i32, i32* @USB_MS_HZ, align 4
  %39 = mul nsw i32 2, %38
  %40 = call i32 @usbd_do_request_flags(i32 %35, i32* %37, %struct.usb_device_request* %3, i32* null, i32 0, i32* null, i32 %39)
  br label %41

41:                                               ; preds = %32, %1
  %42 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
