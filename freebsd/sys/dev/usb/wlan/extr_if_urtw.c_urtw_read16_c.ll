; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_read16_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_read16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@URTW_8187_GETREGS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32, i32*)* @urtw_read16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_read16_c(%struct.urtw_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %10 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %9)
  %11 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @URTW_8187_GETREGS_REQ, align 4
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  %19 = or i32 %18, 65280
  %20 = call i32 @USETW(i32 %16, i32 %19)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  %26 = call i32 @USETW(i32 %22, i32 %25)
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USETW(i32 %28, i32 4)
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @urtw_do_request(%struct.urtw_softc* %30, %struct.usb_device_request* %7, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @urtw_do_request(%struct.urtw_softc*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
