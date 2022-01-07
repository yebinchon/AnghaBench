; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ufoma_softc* }
%struct.ufoma_softc = type { i64, i32, i32, i32, i64, i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UMCPC_ACM_MODE_OBEX = common dso_local global i64 0, align 8
@USB_CDC_ACM_HAS_BREAK = common dso_local global i32 0, align 4
@UCDC_BREAK_ON = common dso_local global i32 0, align 4
@UCDC_BREAK_OFF = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SEND_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @ufoma_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.ufoma_softc*, %struct.ufoma_softc** %9, align 8
  store %struct.ufoma_softc* %10, %struct.ufoma_softc** %5, align 8
  %11 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UMCPC_ACM_MODE_OBEX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %65

22:                                               ; preds = %15
  %23 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @USB_CDC_ACM_HAS_BREAK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %65

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @UCDC_BREAK_ON, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @UCDC_BREAK_OFF, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %40 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @UCDC_SEND_BREAK, align 4
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @USETW(i32 %44, i32 %45)
  %47 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %48 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %49, i64* %52, align 8
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @USETW(i32 %57, i32 0)
  %59 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %62, i32 0, i32 2
  %64 = call i32 @ucom_cfg_do_request(i32 %61, i32* %63, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  br label %65

65:                                               ; preds = %37, %29, %21
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
