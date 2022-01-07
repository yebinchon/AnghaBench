; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_erase_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_erase_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UFTDI_CONFIRM_ERASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@FTDI_SIO_ERASE_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, i32)* @uftdi_erase_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_erase_eeprom(%struct.ucom_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uftdi_softc*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 0
  %11 = load %struct.uftdi_softc*, %struct.uftdi_softc** %10, align 8
  store %struct.uftdi_softc* %11, %struct.uftdi_softc** %6, align 8
  %12 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UFTDI_CONFIRM_ERASE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @FTDI_SIO_ERASE_EEPROM, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @USETW(i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USETW(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @USETW(i32 %30, i32 0)
  %32 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %33 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %36 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %35, i32 0, i32 0
  %37 = call i32 @usbd_do_request(i32 %34, i32* %36, %struct.TYPE_3__* %7, i32* null)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
