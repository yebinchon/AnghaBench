; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i64, i64*, i32 }

@RAW_SENSOR_MODE = common dso_local global i64 0, align 8
@HID_MODE = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@TRACKPAD_FAMILY_FOUNTAIN_GEYSER = common dso_local global i64 0, align 8
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to read device mode (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WHW\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atp_softc*, i64)* @atp_set_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atp_set_device_mode(%struct.atp_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.atp_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atp_softc* %0, %struct.atp_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @RAW_SENSOR_MODE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HID_MODE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %16, i64* %3, align 8
  br label %71

17:                                               ; preds = %11, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @RAW_SENSOR_MODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %23 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRACKPAD_FAMILY_FOUNTAIN_GEYSER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 4, i64* %6, align 8
  br label %30

28:                                               ; preds = %21, %17
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %32 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %35 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = call i64 @usbd_req_get_report(i32 %33, i32* null, i64* %36, i32 8, i32 0, i32 3, i32 0)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %71

45:                                               ; preds = %30
  %46 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %47 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %3, align 8
  br label %71

55:                                               ; preds = %45
  %56 = load i32, i32* @hz, align 4
  %57 = sdiv i32 %56, 4
  %58 = call i32 @pause(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %61 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %59, i64* %63, align 8
  %64 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %65 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %68 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = call i64 @usbd_req_set_report(i32 %66, i32* null, i64* %69, i32 8, i32 0, i32 3, i32 0)
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %55, %53, %41, %15
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @usbd_req_get_report(i32, i32*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @usbd_req_set_report(i32, i32*, i64*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
