; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_tx_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_tx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32 }
%struct.dwc_otg_td = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"busy ep=%d\0A\00", align 1
@GRXSTSRD_PKTSTS_MASK = common dso_local global i32 0, align 4
@GRXSTSRD_STP_DATA = common dso_local global i32 0, align 4
@GRXSTSRD_STP_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_data_tx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_data_tx_sync(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  %7 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %8 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %9 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @DOTG_DIEPTSIZ(i64 %10)
  %12 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @DXEPTSIZ_GET_NPKT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %18 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

22:                                               ; preds = %16
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @GRXSTSRD_CHNUM_GET(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @GRXSTSRD_STP_DATA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @GRXSTSRD_STP_COMPLETE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %37
  %50 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %53 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %52)
  br label %54

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %33, %30, %22
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DOTG_DIEPTSIZ(i64) #1

declare dso_local i64 @DXEPTSIZ_GET_NPKT(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i32) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
