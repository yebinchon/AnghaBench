; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_testmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_testmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@RAL_VENDOR_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not set test mode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_set_testmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_set_testmode(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i64, align 8
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %5 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @RAL_VENDOR_REQUEST, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @USETW(i32 %10, i32 4)
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @USETW(i32 %13, i32 1)
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @USETW(i32 %16, i32 0)
  %18 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %19 = call i64 @ural_do_request(%struct.ural_softc* %18, %struct.usb_device_request* %3, i32* null)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @usbd_errstr(i64 %26)
  %28 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ural_do_request(%struct.ural_softc*, %struct.usb_device_request*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
