; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_do_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32, i32 }
%struct.usb_device_request = type { i32 }

@USB_ERR_NOT_CONFIGURED = common dso_local global i64 0, align 8
@RSU_DEBUG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Control request failed, %s (retries left: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsu_softc*, %struct.usb_device_request*, i8*)* @rsu_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsu_do_request(%struct.rsu_softc* %0, %struct.usb_device_request* %1, i8* %2) #0 {
  %4 = alloca %struct.rsu_softc*, align 8
  %5 = alloca %struct.usb_device_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %4, align 8
  store %struct.usb_device_request* %1, %struct.usb_device_request** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 10, i32* %8, align 4
  %9 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %10 = call i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc* %9)
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %17 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %19, i32 0, i32 0
  %21 = load %struct.usb_device_request*, %struct.usb_device_request** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @usbd_do_request_flags(i32 %18, i32* %20, %struct.usb_device_request* %21, i8* %22, i32 0, i32* null, i32 250)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @USB_ERR_NOT_CONFIGURED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %15
  br label %40

31:                                               ; preds = %26
  %32 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %33 = load i32, i32* @RSU_DEBUG_USB, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @usbd_errstr(i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @RSU_DPRINTF(%struct.rsu_softc* %32, i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %39 = call i32 @rsu_ms_delay(%struct.rsu_softc* %38, i32 10)
  br label %11

40:                                               ; preds = %30, %11
  %41 = load i64, i64* %7, align 8
  ret i64 %41
}

declare dso_local i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc*) #1

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @RSU_DPRINTF(%struct.rsu_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
