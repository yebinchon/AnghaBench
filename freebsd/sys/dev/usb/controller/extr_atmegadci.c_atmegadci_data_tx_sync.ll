; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_tx_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_tx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_td = type { i32, i32 }
%struct.atmegadci_softc = type { i32 }

@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UEINTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp=0x%02x\0A\00", align 1
@ATMEGA_UEINTX_RXSTPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@ATMEGA_UESTA0X = common dso_local global i32 0, align 4
@ATMEGA_UEIENX = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_RXSTPE = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_TXINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmegadci_td*)* @atmegadci_data_tx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmegadci_data_tx_sync(%struct.atmegadci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmegadci_td*, align 8
  %4 = alloca %struct.atmegadci_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.atmegadci_td* %0, %struct.atmegadci_td** %3, align 8
  %6 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %7 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.atmegadci_softc* @ATMEGA_PC2SC(i32 %8)
  store %struct.atmegadci_softc* %9, %struct.atmegadci_softc** %4, align 8
  %10 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %11 = load i32, i32* @ATMEGA_UENUM, align 4
  %12 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %13 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %10, i32 %11, i32 %14)
  %16 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %17 = load i32, i32* @ATMEGA_UEINTX, align 4
  %18 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %29 = load i32, i32* @ATMEGA_UESTA0X, align 4
  %30 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 255
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %42 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @atmegadci_set_address(%struct.atmegadci_softc* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %49 = load i32, i32* @ATMEGA_UEIENX, align 4
  %50 = load i32, i32* @ATMEGA_UEIENX_RXSTPE, align 4
  %51 = load i32, i32* @ATMEGA_UEIENX_TXINE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %48, i32 %49, i32 %52)
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %46, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_PC2SC(i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @atmegadci_set_address(%struct.atmegadci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
