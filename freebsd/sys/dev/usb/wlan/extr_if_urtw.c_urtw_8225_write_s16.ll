; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_write_s16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_write_s16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@URTW_8187_SETREGS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32, i32, i32*)* @urtw_8225_write_s16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8225_write_s16(%struct.urtw_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.urtw_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device_request, align 4
  %12 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @URTW_8187_SETREGS_REQ, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @USETW(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @USETW(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USETW(i32 %28, i32 4)
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 65280
  %35 = ashr i32 %34, 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %39 = call i32 @urtw_do_request(%struct.urtw_softc* %37, %struct.usb_device_request* %11, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @urtw_do_request(%struct.urtw_softc*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
