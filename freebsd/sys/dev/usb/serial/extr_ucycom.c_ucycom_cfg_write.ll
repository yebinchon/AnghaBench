; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_cfg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_cfg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucycom_softc = type { i32, i32*, i32, i32, i64, i32, i8* }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_REPORT = common dso_local global i32 0, align 4
@UHID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"device request failed, err=%s (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucycom_softc*, i32, i8*)* @ucycom_cfg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucycom_cfg_write(%struct.ucycom_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ucycom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device_request, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ucycom_softc* %0, %struct.ucycom_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 8, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @UR_SET_REPORT, align 4
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UHID_FEATURE_REPORT, align 4
  %28 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @USETW2(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %34, i64* %37, align 8
  %38 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @USETW(i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 24
  %67 = and i32 %66, 255
  %68 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %67, i32* %71, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %73, i32* %77, align 4
  %78 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %81, i32 0, i32 2
  %83 = load %struct.ucycom_softc*, %struct.ucycom_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @ucom_cfg_do_request(i32 %80, i32* %82, %struct.usb_device_request* %7, i32* %85, i32 0, i32 1000)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %17
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @usbd_errstr(i64 %90)
  %92 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %17
  ret void
}

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
