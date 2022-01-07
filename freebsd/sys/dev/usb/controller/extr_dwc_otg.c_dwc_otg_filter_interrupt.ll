; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_filter_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_filter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i64, i64, i32 }

@FILTER_HANDLED = common dso_local global i32 0, align 4
@DOTG_GINTSTS = common dso_local global i32 0, align 4
@DWC_OTG_MSK_GINT_THREAD_IRQ = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@GINTSTS_PTXFEMP = common dso_local global i32 0, align 4
@GINTSTS_NPTXFEMP = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_IEPINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc_otg_filter_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.dwc_otg_softc*
  store %struct.dwc_otg_softc* %9, %struct.dwc_otg_softc** %3, align 8
  %10 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %11, i32 0, i32 3
  %13 = call i32 @USB_BUS_SPIN_LOCK(i32* %12)
  %14 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %15 = load i32, i32* @DOTG_GINTSTS, align 4
  %16 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %18 = load i32, i32* @DOTG_GINTSTS, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DWC_OTG_MSK_GINT_THREAD_IRQ, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %17, i32 %18, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DWC_OTG_MSK_GINT_THREAD_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  %36 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %37 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %43 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %47 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = load i32, i32* @DOTG_GINTMSK, align 4
  %52 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %53 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %41, %30
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GINTSTS_IEPINT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %65 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @DOTG_DIEPINT(i64 %70)
  %72 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %69, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @DOTG_DIEPINT(i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %62

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %88 = call i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc* %87)
  %89 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %90 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %86
  %96 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %97 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %96, i32 0, i32 3
  %98 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %97)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DOTG_DIEPINT(i64) #1

declare dso_local i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
