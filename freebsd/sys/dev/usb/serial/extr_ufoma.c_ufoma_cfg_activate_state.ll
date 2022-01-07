; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_activate_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_activate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufoma_softc = type { i32, i32, i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_INTERFACE = common dso_local global i32 0, align 4
@UMCPC_ACTIVATE_MODE = common dso_local global i32 0, align 4
@UFOMA_MAX_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufoma_softc*, i32)* @ufoma_cfg_activate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_activate_state(%struct.ufoma_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ufoma_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device_request, align 4
  %6 = alloca i64, align 8
  store %struct.ufoma_softc* %0, %struct.ufoma_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UT_WRITE_VENDOR_INTERFACE, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @UMCPC_ACTIVATE_MODE, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @USETW(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %16, i32 %19)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 0)
  %24 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %27, i32 0, i32 2
  %29 = call i32 @ucom_cfg_do_request(i32 %26, i32* %28, %struct.usb_device_request* %5, i32* null, i32 0, i32 1000)
  %30 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %30, i32 0, i32 1
  %32 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %32, i32 0, i32 0
  %34 = load i32, i32* @UFOMA_MAX_TIMEOUT, align 4
  %35 = load i32, i32* @hz, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i64 @cv_timedwait(i32* %31, i32* %33, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i64 @cv_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
