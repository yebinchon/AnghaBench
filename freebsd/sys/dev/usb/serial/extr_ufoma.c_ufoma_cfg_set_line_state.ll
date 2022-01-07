; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_line_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufoma_softc = type { i64, i32, i32, i64, i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UMCPC_ACM_MODE_OBEX = common dso_local global i64 0, align 8
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufoma_softc*)* @ufoma_cfg_set_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_set_line_state(%struct.ufoma_softc* %0) #0 {
  %2 = alloca %struct.ufoma_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 8
  store %struct.ufoma_softc* %0, %struct.ufoma_softc** %2, align 8
  %4 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UMCPC_ACM_MODE_OBEX, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @USETW(i32 %16, i32 %19)
  %21 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %23, i64* %26, align 8
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @USETW(i32 %31, i32 0)
  %33 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %36, i32 0, i32 1
  %38 = call i32 @ucom_cfg_do_request(i32 %35, i32* %37, %struct.usb_device_request* %3, i32* null, i32 0, i32 1000)
  br label %39

39:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
