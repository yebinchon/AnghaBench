; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_common_rx_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_common_rx_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"RX status clear\0A\00", align 1
@GINTMSK_RXFLVLMSK = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*)* @dwc_otg_common_rx_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %2, align 8
  %3 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @GINTMSK_RXFLVLMSK, align 4
  %5 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %10 = load i32, i32* @DOTG_GINTMSK, align 4
  %11 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %9, i32 %10, i32 %13)
  %15 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %33 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 4
  %36 = call i32 @bus_space_read_region_4(i32 %22, i32 %25, i32 %28, i32 %31, i32 %35)
  %37 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %38 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %19, %1
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @bus_space_read_region_4(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
