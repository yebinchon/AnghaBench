; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@ZYD_READFWDATAREQ = common dso_local global i32 0, align 4
@ZYD_EEPROM_MAC_ADDR_P1 = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not read EEPROM: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*)* @zyd_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_get_macaddr(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i64, align 8
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  %5 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @ZYD_READFWDATAREQ, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ZYD_EEPROM_MAC_ADDR_P1, align 4
  %12 = call i32 @USETW(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @USETW(i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %19 = call i32 @USETW(i32 %17, i32 %18)
  %20 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %21 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %22 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @zyd_do_request(%struct.zyd_softc* %20, %struct.usb_device_request* %3, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %30 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @usbd_errstr(i64 %32)
  %34 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load i64, i64* %4, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @zyd_do_request(%struct.zyd_softc*, %struct.usb_device_request*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
