; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ATMEGA_UDINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"UDINT=0x%02x\0A\00", align 1
@ATMEGA_UDINT_EORSTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"end of reset\0A\00", align 1
@ATMEGA_UDIEN = common dso_local global i32 0, align 4
@ATMEGA_UDINT_SUSPE = common dso_local global i32 0, align 4
@ATMEGA_UDINT_EORSTE = common dso_local global i32 0, align 4
@ATMEGA_UDINT_WAKEUPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"resume interrupt\0A\00", align 1
@ATMEGA_UDINT_SUSPI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"suspend interrupt\0A\00", align 1
@ATMEGA_UDINT_WAKEUPE = common dso_local global i32 0, align 4
@ATMEGA_USBINT = common dso_local global i32 0, align 4
@ATMEGA_USBINT_VBUSTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"USBINT=0x%02x\0A\00", align 1
@ATMEGA_USBSTA = common dso_local global i32 0, align 4
@ATMEGA_USBSTA_VBUS = common dso_local global i32 0, align 4
@ATMEGA_UEINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"real endpoint interrupt UEINT=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmegadci_interrupt(%struct.atmegadci_softc* %0) #0 {
  %2 = alloca %struct.atmegadci_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.atmegadci_softc* %0, %struct.atmegadci_softc** %2, align 8
  %5 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %6 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %5, i32 0, i32 0
  %7 = call i32 @USB_BUS_LOCK(i32* %6)
  %8 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %9 = load i32, i32* @ATMEGA_UDINT, align 4
  %10 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %12 = load i32, i32* @ATMEGA_UDINT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %14, 125
  %16 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %11, i32 %12, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, ...) @DPRINTFN(i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ATMEGA_UDINT_EORSTI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %26 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %29 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %32 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %35 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %38 = load i32, i32* @ATMEGA_UDIEN, align 4
  %39 = load i32, i32* @ATMEGA_UDINT_SUSPE, align 4
  %40 = load i32, i32* @ATMEGA_UDINT_EORSTE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %37, i32 %38, i32 %41)
  %43 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %44 = call i32 @atmegadci_root_intr(%struct.atmegadci_softc* %43)
  br label %45

45:                                               ; preds = %23, %1
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ATMEGA_UDINT_WAKEUPI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %53 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %59 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %62 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %65 = load i32, i32* @ATMEGA_UDIEN, align 4
  %66 = load i32, i32* @ATMEGA_UDINT_SUSPE, align 4
  %67 = load i32, i32* @ATMEGA_UDINT_EORSTE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %64, i32 %65, i32 %68)
  %70 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %71 = call i32 @atmegadci_root_intr(%struct.atmegadci_softc* %70)
  br label %72

72:                                               ; preds = %57, %50
  br label %102

73:                                               ; preds = %45
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @ATMEGA_UDINT_SUSPI, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %81 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  %86 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %87 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %90 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 4
  %92 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %93 = load i32, i32* @ATMEGA_UDIEN, align 4
  %94 = load i32, i32* @ATMEGA_UDINT_WAKEUPE, align 4
  %95 = load i32, i32* @ATMEGA_UDINT_EORSTE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %99 = call i32 @atmegadci_root_intr(%struct.atmegadci_softc* %98)
  br label %100

100:                                              ; preds = %85, %78
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %104 = load i32, i32* @ATMEGA_USBINT, align 4
  %105 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %103, i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %107 = load i32, i32* @ATMEGA_USBINT, align 4
  %108 = load i32, i32* %3, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %109, 3
  %111 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %106, i32 %107, i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @ATMEGA_USBINT_VBUSTI, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %102
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %120 = load i32, i32* @ATMEGA_USBSTA, align 4
  %121 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @ATMEGA_USBSTA_VBUS, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @atmegadci_vbus_interrupt(%struct.atmegadci_softc* %122, i32 %125)
  br label %127

127:                                              ; preds = %116, %102
  %128 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %129 = load i32, i32* @ATMEGA_UEINT, align 4
  %130 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %128, i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %137 = call i32 @atmegadci_interrupt_poll(%struct.atmegadci_softc* %136)
  br label %138

138:                                              ; preds = %133, %127
  %139 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %140 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %139, i32 0, i32 0
  %141 = call i32 @USB_BUS_UNLOCK(i32* %140)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @atmegadci_root_intr(%struct.atmegadci_softc*) #1

declare dso_local i32 @atmegadci_vbus_interrupt(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @atmegadci_interrupt_poll(%struct.atmegadci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
