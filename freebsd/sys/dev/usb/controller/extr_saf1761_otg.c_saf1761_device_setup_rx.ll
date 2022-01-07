; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_setup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }
%struct.saf1761_otg_td = type { i32, i32, i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_EP0SETUP = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_FILLED_MASK = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_BUFLEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"count=%u rem=%u\0A\00", align 1
@SOTG_CTRL_FUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid SETUP packet length, %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported SETUP packet length, %d bytes\0A\00", align 1
@UT_WRITE_DEVICE = common dso_local global i64 0, align 8
@UR_SET_ADDRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Set address %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@SOTG_CTRL_FUNC_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_device_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_device_setup_rx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %8 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %9 = load i32, i32* @SOTG_EP_INDEX, align 4
  %10 = load i32, i32* @SOTG_EP_INDEX_EP0SETUP, align 4
  %11 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %13 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %14 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %82

20:                                               ; preds = %2
  %21 = load i32, i32* @SOTG_BUF_LENGTH_BUFLEN_MASK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %30 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %32 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %33 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %31, i32 %32, i32 0)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %36 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %82

42:                                               ; preds = %20
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 24
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %82

49:                                               ; preds = %42
  %50 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %51 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %52 = call i32 @saf1761_read_device_fifo(%struct.saf1761_otg_softc* %50, %struct.saf1761_otg_td* %51, i32 24)
  %53 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usbd_copy_out(i32 %55, i32 0, %struct.usb_device_request* %6, i32 24)
  %57 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UT_WRITE_DEVICE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UR_SET_ADDRESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 127
  %72 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %73 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %75 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %81

78:                                               ; preds = %61, %49
  %79 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %80 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %79, i32 0, i32 0
  store i32 255, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %66
  store i32 0, i32* %3, align 4
  br label %96

82:                                               ; preds = %46, %39, %19
  %83 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %84 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %90 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %91 = load i32, i32* @SOTG_CTRL_FUNC_STALL, align 4
  %92 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %94 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %82
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @saf1761_read_device_fifo(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i32 @usbd_copy_out(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
