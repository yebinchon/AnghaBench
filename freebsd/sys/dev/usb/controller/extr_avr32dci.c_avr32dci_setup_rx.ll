; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_setup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_td = type { i32, i32, i32, i32, i32 }
%struct.avr32dci_softc = type { i32, i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@.str = private unnamed_addr constant [19 x i8] c"EPTSTA(%u)=0x%08x\0A\00", align 1
@AVR32_EPTSTA_RX_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid SETUP packet length, %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported SETUP packet length, %d bytes\0A\00", align 1
@UT_WRITE_DEVICE = common dso_local global i64 0, align 8
@UR_SET_ADDRESS = common dso_local global i64 0, align 8
@AVR32_CTRL_DEV_FADDR_EN = common dso_local global i32 0, align 4
@AVR32_CTRL_DEV_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@AVR32_EPTSTA_FRCESTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avr32dci_td*)* @avr32dci_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32dci_setup_rx(%struct.avr32dci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avr32dci_td*, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca %struct.usb_device_request, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.avr32dci_td* %0, %struct.avr32dci_td** %3, align 8
  %8 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %9 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.avr32dci_softc* @AVR32_PC2SC(i32 %10)
  store %struct.avr32dci_softc* %11, %struct.avr32dci_softc** %4, align 8
  %12 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %13 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %14 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AVR32_EPTSTA(i32 %15)
  %17 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %12, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %19 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %99

28:                                               ; preds = %1
  %29 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %30 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @AVR32_EPTSTA_BYTE_COUNT(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %35 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %99

41:                                               ; preds = %28
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 24
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %99

48:                                               ; preds = %41
  %49 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(%struct.usb_device_request* %5, i32 %51, i32 24)
  %53 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %54 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usbd_copy_in(i32 %55, i32 0, %struct.usb_device_request* %5, i32 24)
  %57 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %58 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %57, i32 0, i32 2
  store i32 24, i32* %58, align 4
  %59 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %60 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UT_WRITE_DEVICE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UR_SET_ADDRESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 127
  %76 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %79 = load i32, i32* @AVR32_CTRL_DEV_FADDR_EN, align 4
  %80 = load i32, i32* @AVR32_CTRL_DEV_ADDR, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %78, i32 0, i32 %81)
  %83 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %84 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %85 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %83, i32 %86, i32 0)
  br label %91

88:                                               ; preds = %65, %48
  %89 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %90 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %89, i32 0, i32 0
  store i32 255, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %70
  %92 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %93 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %94 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @AVR32_EPTCLRSTA(i32 %95)
  %97 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %98 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %92, i32 %96, i32 %97)
  store i32 0, i32* %2, align 4
  br label %129

99:                                               ; preds = %45, %38, %27
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %106 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %107 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @AVR32_EPTCLRSTA(i32 %108)
  %110 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %111 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %105, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %99
  %113 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %114 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %120 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %121 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AVR32_EPTSETSTA(i32 %122)
  %124 = load i32, i32* @AVR32_EPTSTA_FRCESTALL, align 4
  %125 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %119, i32 %123, i32 %124)
  %126 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %127 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %117, %112
  store i32 1, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %91
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.avr32dci_softc* @AVR32_PC2SC(i32) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @AVR32_EPTSTA(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @AVR32_EPTSTA_BYTE_COUNT(i32) #1

declare dso_local i32 @memcpy(%struct.usb_device_request*, i32, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTCLRSTA(i32) #1

declare dso_local i32 @AVR32_EPTSETSTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
