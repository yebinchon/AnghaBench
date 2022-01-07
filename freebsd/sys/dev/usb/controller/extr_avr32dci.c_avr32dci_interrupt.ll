; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@AVR32_INTSTA = common dso_local global i32 0, align 4
@AVR32_CLRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"INTSTA=0x%08x\0A\00", align 1
@AVR32_INT_ENDRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"end of reset\0A\00", align 1
@AVR32_INT_DET_SUSPD = common dso_local global i32 0, align 4
@AVR32_INT_WAKE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"resume interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"suspend interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"real endpoint interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avr32dci_interrupt(%struct.avr32dci_softc* %0) #0 {
  %2 = alloca %struct.avr32dci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %2, align 8
  %4 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %4, i32 0, i32 0
  %6 = call i32 @USB_BUS_LOCK(i32* %5)
  %7 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %8 = load i32, i32* @AVR32_INTSTA, align 4
  %9 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %11 = load i32, i32* @AVR32_CLRINT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @DPRINTFN(i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AVR32_INT_ENDRESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %23 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %26 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %29 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %32 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %35 = load i32, i32* @AVR32_INT_DET_SUSPD, align 4
  %36 = load i32, i32* @AVR32_INT_ENDRESET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AVR32_INT_WAKE_UP, align 4
  %39 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %34, i32 %37, i32 %38)
  %40 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %41 = call i32 @avr32dci_root_intr(%struct.avr32dci_softc* %40)
  br label %42

42:                                               ; preds = %20, %1
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @AVR32_INT_WAKE_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %50 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %56 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %59 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %62 = load i32, i32* @AVR32_INT_DET_SUSPD, align 4
  %63 = load i32, i32* @AVR32_INT_ENDRESET, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AVR32_INT_WAKE_UP, align 4
  %66 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %61, i32 %64, i32 %65)
  %67 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %68 = call i32 @avr32dci_root_intr(%struct.avr32dci_softc* %67)
  br label %69

69:                                               ; preds = %54, %47
  br label %99

70:                                               ; preds = %42
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @AVR32_INT_DET_SUSPD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %78 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %75
  %83 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %84 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %87 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  %89 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %90 = load i32, i32* @AVR32_INT_WAKE_UP, align 4
  %91 = load i32, i32* @AVR32_INT_ENDRESET, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @AVR32_INT_DET_SUSPD, align 4
  %94 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %89, i32 %92, i32 %93)
  %95 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %96 = call i32 @avr32dci_root_intr(%struct.avr32dci_softc* %95)
  br label %97

97:                                               ; preds = %82, %75
  br label %98

98:                                               ; preds = %97, %70
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @AVR32_INT_EPT_INT(i32 0)
  %102 = sub nsw i32 0, %101
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %108 = call i32 @avr32dci_interrupt_poll(%struct.avr32dci_softc* %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %111 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %110, i32 0, i32 0
  %112 = call i32 @USB_BUS_UNLOCK(i32* %111)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @avr32dci_mod_ien(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @avr32dci_root_intr(%struct.avr32dci_softc*) #1

declare dso_local i32 @AVR32_INT_EPT_INT(i32) #1

declare dso_local i32 @avr32dci_interrupt_poll(%struct.avr32dci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
