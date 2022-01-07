; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_latency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@FTDI_SIO_SET_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, i32)* @uftdi_set_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_set_latency(%struct.ucom_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uftdi_softc*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uftdi_softc*, %struct.uftdi_softc** %9, align 8
  store %struct.uftdi_softc* %10, %struct.uftdi_softc** %6, align 8
  %11 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 255
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %14
  %20 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @FTDI_SIO_SET_LATENCY, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %27 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @USETW(i32 %25, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @USETW(i32 %32, i32 0)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @USETW2(i32 %35, i32 0, i32 %36)
  %38 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %39 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %42 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %41, i32 0, i32 0
  %43 = call i32 @usbd_do_request(i32 %40, i32* %42, %struct.TYPE_5__* %7, i32* null)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
