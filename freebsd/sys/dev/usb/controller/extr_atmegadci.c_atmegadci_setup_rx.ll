; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_setup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_td = type { i32, i32, i32, i32, i32 }
%struct.atmegadci_softc = type { i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UEINTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"UEINTX=0x%02x\0A\00", align 1
@ATMEGA_UEINTX_RXSTPI = common dso_local global i32 0, align 4
@ATMEGA_UEBCHX = common dso_local global i32 0, align 4
@ATMEGA_UEBCLX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid SETUP packet length, %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported SETUP packet length, %d bytes\0A\00", align 1
@ATMEGA_UEDATX = common dso_local global i32 0, align 4
@UT_WRITE_DEVICE = common dso_local global i64 0, align 8
@UR_SET_ADDRESS = common dso_local global i64 0, align 8
@ATMEGA_UDADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@ATMEGA_UECONX = common dso_local global i32 0, align 4
@ATMEGA_UECONX_EPEN = common dso_local global i32 0, align 4
@ATMEGA_UECONX_STALLRQ = common dso_local global i32 0, align 4
@ATMEGA_UEIENX = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_RXSTPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmegadci_td*)* @atmegadci_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmegadci_setup_rx(%struct.atmegadci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmegadci_td*, align 8
  %4 = alloca %struct.atmegadci_softc*, align 8
  %5 = alloca %struct.usb_device_request, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atmegadci_td* %0, %struct.atmegadci_td** %3, align 8
  %8 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %9 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.atmegadci_softc* @ATMEGA_PC2SC(i32 %10)
  store %struct.atmegadci_softc* %11, %struct.atmegadci_softc** %4, align 8
  %12 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %13 = load i32, i32* @ATMEGA_UENUM, align 4
  %14 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %15 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %12, i32 %13, i32 %16)
  %18 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %19 = load i32, i32* @ATMEGA_UEINTX, align 4
  %20 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %99

28:                                               ; preds = %1
  %29 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %30 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %32 = load i32, i32* @ATMEGA_UEBCHX, align 4
  %33 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %31, i32 %32)
  %34 = shl i32 %33, 8
  %35 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %36 = load i32, i32* @ATMEGA_UEBCLX, align 4
  %37 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %35, i32 %36)
  %38 = or i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 2047
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %43 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %99

49:                                               ; preds = %28
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 24
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %99

56:                                               ; preds = %49
  %57 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %58 = load i32, i32* @ATMEGA_UEDATX, align 4
  %59 = bitcast %struct.usb_device_request* %5 to i8*
  %60 = call i32 @ATMEGA_READ_MULTI_1(%struct.atmegadci_softc* %57, i32 %58, i8* %59, i32 24)
  %61 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %62 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usbd_copy_in(i32 %63, i32 0, %struct.usb_device_request* %5, i32 24)
  %65 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %66 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %65, i32 0, i32 3
  store i32 24, i32* %66, align 4
  %67 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %68 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UT_WRITE_DEVICE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UR_SET_ADDRESS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 127
  %84 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %85 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %87 = load i32, i32* @ATMEGA_UDADDR, align 4
  %88 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %89 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %86, i32 %87, i32 %90)
  br label %95

92:                                               ; preds = %73, %56
  %93 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %94 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %93, i32 0, i32 0
  store i32 255, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %78
  %96 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %97 = load i32, i32* @ATMEGA_UEINTX, align 4
  %98 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %96, i32 %97, i32 0)
  store i32 0, i32* %2, align 4
  br label %130

99:                                               ; preds = %53, %46, %27
  %100 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %101 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %107 = load i32, i32* @ATMEGA_UECONX, align 4
  %108 = load i32, i32* @ATMEGA_UECONX_EPEN, align 4
  %109 = load i32, i32* @ATMEGA_UECONX_STALLRQ, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %106, i32 %107, i32 %110)
  %112 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %113 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %104, %99
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %121 = load i32, i32* @ATMEGA_UEINTX, align 4
  %122 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %123 = xor i32 %122, -1
  %124 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %120, i32 %121, i32 %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %127 = load i32, i32* @ATMEGA_UEIENX, align 4
  %128 = load i32, i32* @ATMEGA_UEIENX_RXSTPE, align 4
  %129 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %126, i32 %127, i32 %128)
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %95
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_PC2SC(i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @ATMEGA_READ_MULTI_1(%struct.atmegadci_softc*, i32, i8*, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
