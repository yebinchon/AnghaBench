; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_bitmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_bitmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@FTDI_SIO_SET_BITMODE = common dso_local global i32 0, align 4
@UFTDI_BITMODE_NONE = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, i32, i32)* @uftdi_set_bitmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_set_bitmode(%struct.ucom_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uftdi_softc*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load %struct.uftdi_softc*, %struct.uftdi_softc** %11, align 8
  store %struct.uftdi_softc* %12, %struct.uftdi_softc** %7, align 8
  %13 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @FTDI_SIO_SET_BITMODE, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uftdi_softc*, %struct.uftdi_softc** %7, align 8
  %21 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @USETW(i32 %19, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @USETW(i32 %26, i32 0)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UFTDI_BITMODE_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @USETW2(i32 %33, i32 0, i32 0)
  br label %42

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @USETW2(i32 %37, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.uftdi_softc*, %struct.uftdi_softc** %7, align 8
  %44 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uftdi_softc*, %struct.uftdi_softc** %7, align 8
  %47 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %46, i32 0, i32 1
  %48 = call i32 @usbd_do_request(i32 %45, i32* %47, %struct.TYPE_5__* %8, i32* null)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.uftdi_softc*, %struct.uftdi_softc** %7, align 8
  %55 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %9, align 4
  ret i32 %57
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
