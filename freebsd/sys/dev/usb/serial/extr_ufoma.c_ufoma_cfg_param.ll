; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ufoma_softc* }
%struct.ufoma_softc = type { i64, i32, i32, i64, i64 }
%struct.termios = type { i32, i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }
%struct.usb_cdc_line_state = type { i32, i32, i32, i32 }

@UMCPC_ACM_MODE_OBEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@UCDC_STOP_BIT_2 = common dso_local global i32 0, align 4
@UCDC_STOP_BIT_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UCDC_PARITY_ODD = common dso_local global i32 0, align 4
@UCDC_PARITY_EVEN = common dso_local global i32 0, align 4
@UCDC_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_LINE_CODING = common dso_local global i32 0, align 4
@UCDC_LINE_STATE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @ufoma_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca %struct.usb_cdc_line_state, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.ufoma_softc*, %struct.ufoma_softc** %9, align 8
  store %struct.ufoma_softc* %10, %struct.ufoma_softc** %5, align 8
  %11 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %11, i32 0, i32 4
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
  br label %108

22:                                               ; preds = %15
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @memset(%struct.usb_cdc_line_state* %7, i32 0, i32 16)
  %25 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.termios*, %struct.termios** %4, align 8
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @USETDW(i32 %26, i32 %29)
  %31 = load %struct.termios*, %struct.termios** %4, align 8
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CSTOPB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @UCDC_STOP_BIT_2, align 4
  %39 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @UCDC_STOP_BIT_1, align 4
  %42 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.termios*, %struct.termios** %4, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PARENB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.termios*, %struct.termios** %4, align 8
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PARODD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @UCDC_PARITY_ODD, align 4
  %59 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @UCDC_PARITY_EVEN, align 4
  %62 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %67

64:                                               ; preds = %43
  %65 = load i32, i32* @UCDC_PARITY_NONE, align 4
  %66 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load %struct.termios*, %struct.termios** %4, align 8
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CSIZE, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %81 [
    i32 131, label %73
    i32 130, label %75
    i32 129, label %77
    i32 128, label %79
  ]

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 0
  store i32 5, i32* %74, align 4
  br label %81

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 0
  store i32 6, i32* %76, align 4
  br label %81

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 0
  store i32 7, i32* %78, align 4
  br label %81

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %7, i32 0, i32 0
  store i32 8, i32* %80, align 4
  br label %81

81:                                               ; preds = %67, %79, %77, %75, %73
  %82 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %83 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @UCDC_SET_LINE_CODING, align 4
  %85 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @USETW(i32 %87, i32 0)
  %89 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 %91, i64* %94, align 8
  %95 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @UCDC_LINE_STATE_LENGTH, align 4
  %101 = call i32 @USETW(i32 %99, i32 %100)
  %102 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %103 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %105, i32 0, i32 1
  %107 = call i32 @ucom_cfg_do_request(i32 %104, i32* %106, %struct.usb_device_request* %6, %struct.usb_cdc_line_state* %7, i32 0, i32 1000)
  br label %108

108:                                              ; preds = %81, %21
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @memset(%struct.usb_cdc_line_state*, i32, i32) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, %struct.usb_cdc_line_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
