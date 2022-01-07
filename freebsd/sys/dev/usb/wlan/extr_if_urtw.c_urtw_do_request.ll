; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_do_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32 }
%struct.usb_device_request = type { i32 }

@URTW_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Control request failed, %s (retrying)\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, %struct.usb_device_request*, i8*)* @urtw_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_do_request(%struct.urtw_softc* %0, %struct.usb_device_request* %1, i8* %2) #0 {
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca %struct.usb_device_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store %struct.usb_device_request* %1, %struct.usb_device_request** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 10, i32* %8, align 4
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %10 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %9)
  br label %11

11:                                               ; preds = %27, %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %17 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %20 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %19, i32 0, i32 0
  %21 = load %struct.usb_device_request*, %struct.usb_device_request** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @usbd_do_request_flags(i32 %18, i32* %20, %struct.usb_device_request* %21, i8* %22, i32 0, i32* null, i32 250)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %38

27:                                               ; preds = %15
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %29 = load i32, i32* @URTW_DEBUG_INIT, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @usbd_errstr(i64 %30)
  %32 = call i32 @DPRINTF(%struct.urtw_softc* %28, i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %34 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %33, i32 0, i32 0
  %35 = load i32, i32* @hz, align 4
  %36 = sdiv i32 %35, 100
  %37 = call i32 @usb_pause_mtx(i32* %34, i32 %36)
  br label %11

38:                                               ; preds = %26, %11
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
