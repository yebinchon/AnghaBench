; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_check_tx_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_check_tx_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32 }
%struct.dwc_otg_td = type { i64 }

@DOTG_GINTSTS = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@GINTSTS_PTXFEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Periodic TX FIFO is not empty\0A\00", align 1
@GINTMSK_PTXFEMPMSK = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_NPTXFEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Non-periodic TX FIFO is not empty\0A\00", align 1
@GINTMSK_NPTXFEMPMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_check_tx_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_host_check_tx_fifo_empty(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  %7 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %8 = load i32, i32* @DOTG_GINTSTS, align 4
  %9 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GINTMSK_PTXFEMPMSK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @GINTMSK_PTXFEMPMSK, align 4
  %30 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %31 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %35 = load i32, i32* @DOTG_GINTMSK, align 4
  %36 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %37 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %28, %20
  store i32 1, i32* %3, align 4
  br label %70

41:                                               ; preds = %15
  br label %69

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %50 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GINTMSK_NPTXFEMPMSK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @GINTMSK_NPTXFEMPMSK, align 4
  %57 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %58 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %62 = load i32, i32* @DOTG_GINTMSK, align 4
  %63 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %64 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %55, %47
  store i32 1, i32* %3, align 4
  br label %70

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %41
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %40
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
