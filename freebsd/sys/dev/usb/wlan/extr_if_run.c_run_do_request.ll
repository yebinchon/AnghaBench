; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_do_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32 }
%struct.usb_device_request = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RUN_DEBUG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Control request failed, %s (retrying)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.run_softc*, %struct.usb_device_request*, i8*)* @run_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @run_do_request(%struct.run_softc* %0, %struct.usb_device_request* %1, i8* %2) #0 {
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca %struct.usb_device_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %4, align 8
  store %struct.usb_device_request* %1, %struct.usb_device_request** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 10, i32* %8, align 4
  %9 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %9, i32 %10)
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %18 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %21 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %20, i32 0, i32 0
  %22 = load %struct.usb_device_request*, %struct.usb_device_request** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @usbd_do_request_flags(i32 %19, i32* %21, %struct.usb_device_request* %22, i8* %23, i32 0, i32* null, i32 250)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %30 = load i32, i32* @RUN_DEBUG_USB, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @usbd_errstr(i64 %31)
  %33 = call i32 @RUN_DPRINTF(%struct.run_softc* %29, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %35 = call i32 @run_delay(%struct.run_softc* %34, i32 10)
  br label %12

36:                                               ; preds = %27, %12
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
