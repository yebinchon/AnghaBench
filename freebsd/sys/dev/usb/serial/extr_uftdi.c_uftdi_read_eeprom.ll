; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32 }
%struct.uftdi_eeio = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@FTDI_SIO_READ_EEPROM = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.uftdi_eeio*)* @uftdi_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_read_eeprom(%struct.ucom_softc* %0, %struct.uftdi_eeio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.uftdi_eeio*, align 8
  %6 = alloca %struct.uftdi_softc*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store %struct.uftdi_eeio* %1, %struct.uftdi_eeio** %5, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load %struct.uftdi_softc*, %struct.uftdi_softc** %13, align 8
  store %struct.uftdi_softc* %14, %struct.uftdi_softc** %6, align 8
  %15 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.uftdi_eeio*, %struct.uftdi_eeio** %5, align 8
  %17 = getelementptr inbounds %struct.uftdi_eeio, %struct.uftdi_eeio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.uftdi_eeio*, %struct.uftdi_eeio** %5, align 8
  %20 = getelementptr inbounds %struct.uftdi_eeio, %struct.uftdi_eeio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.uftdi_eeio*, %struct.uftdi_eeio** %5, align 8
  %29 = getelementptr inbounds %struct.uftdi_eeio, %struct.uftdi_eeio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = udiv i32 %30, 2
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  %33 = load %struct.uftdi_eeio*, %struct.uftdi_eeio** %5, align 8
  %34 = getelementptr inbounds %struct.uftdi_eeio, %struct.uftdi_eeio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = udiv i32 %35, 2
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %78, %27
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @FTDI_SIO_READ_EEPROM, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @USETW(i32 %48, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @USETW(i32 %55, i32 2)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @USETW(i32 %58, i32 0)
  %60 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %61 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uftdi_softc*, %struct.uftdi_softc** %6, align 8
  %64 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %63, i32 0, i32 0
  %65 = load %struct.uftdi_eeio*, %struct.uftdi_eeio** %5, align 8
  %66 = getelementptr inbounds %struct.uftdi_eeio, %struct.uftdi_eeio* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i64 @usbd_do_request(i32 %62, i32* %64, %struct.TYPE_3__* %7, i32* %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %42
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %84

77:                                               ; preds = %42
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %38

81:                                               ; preds = %38
  %82 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %74, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request(i32, i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
