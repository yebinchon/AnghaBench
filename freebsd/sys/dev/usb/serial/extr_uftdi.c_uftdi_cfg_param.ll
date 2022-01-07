; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32, i32 }
%struct.termios = type { i32 }
%struct.uftdi_param_config = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UT_WRITE_VENDOR_DEVICE = common dso_local global i8* null, align 8
@FTDI_SIO_SET_BAUD_RATE = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA = common dso_local global i32 0, align 4
@FTDI_SIO_SET_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uftdi_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uftdi_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uftdi_param_config, align 4
  %8 = alloca %struct.usb_device_request, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 1
  %11 = load %struct.uftdi_softc*, %struct.uftdi_softc** %10, align 8
  store %struct.uftdi_softc* %11, %struct.uftdi_softc** %5, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %17 = load %struct.termios*, %struct.termios** %4, align 8
  %18 = call i64 @uftdi_set_parm_soft(%struct.ucom_softc* %16, %struct.termios* %17, %struct.uftdi_param_config* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %99

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %25 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** @UT_WRITE_VENDOR_DEVICE, align 8
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @FTDI_SIO_SET_BAUD_RATE, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @USETW(i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @USETW(i32 %36, i32 %40)
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @USETW(i32 %43, i32 0)
  %45 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %49 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %48, i32 0, i32 1
  %50 = call i32 @ucom_cfg_do_request(i32 %47, i32* %49, %struct.usb_device_request* %8, i32* null, i32 0, i32 1000)
  %51 = load i8*, i8** @UT_WRITE_VENDOR_DEVICE, align 8
  %52 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @FTDI_SIO_SET_DATA, align 4
  %54 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @USETW(i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @USETW(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @USETW(i32 %65, i32 0)
  %67 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %68 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %70, i32 0, i32 1
  %72 = call i32 @ucom_cfg_do_request(i32 %69, i32* %71, %struct.usb_device_request* %8, i32* null, i32 0, i32 1000)
  %73 = load i8*, i8** @UT_WRITE_VENDOR_DEVICE, align 8
  %74 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @FTDI_SIO_SET_FLOW_CTRL, align 4
  %76 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @USETW2(i32 %78, i32 %80, i32 %82)
  %84 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %7, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @USETW2(i32 %85, i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @USETW(i32 %91, i32 0)
  %93 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %94 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %97 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %96, i32 0, i32 1
  %98 = call i32 @ucom_cfg_do_request(i32 %95, i32* %97, %struct.usb_device_request* %8, i32* null, i32 0, i32 1000)
  br label %99

99:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @uftdi_set_parm_soft(%struct.ucom_softc*, %struct.termios*, %struct.uftdi_param_config*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
