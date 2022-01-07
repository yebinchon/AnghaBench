; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_tx_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_tx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_td = type { i32, i32 }
%struct.avr32dci_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"EPTSTA(%u)=0x%08x\0A\00", align 1
@AVR32_EPTSTA_RX_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avr32dci_td*)* @avr32dci_data_tx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32dci_data_tx_sync(%struct.avr32dci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avr32dci_td*, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.avr32dci_td* %0, %struct.avr32dci_td** %3, align 8
  %6 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %7 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.avr32dci_softc* @AVR32_PC2SC(i32 %8)
  store %struct.avr32dci_softc* %9, %struct.avr32dci_softc** %4, align 8
  %10 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %11 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %12 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AVR32_EPTSTA(i32 %13)
  %15 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %10, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %17 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @AVR32_EPTSTA_BUSY_BANK_STA(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %44

32:                                               ; preds = %27
  %33 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %39 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @avr32dci_set_address(%struct.avr32dci_softc* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  store i32 0, i32* %2, align 4
  br label %45

44:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %25
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.avr32dci_softc* @AVR32_PC2SC(i32) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @AVR32_EPTSTA(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i64 @AVR32_EPTSTA_BUSY_BANK_STA(i32) #1

declare dso_local i32 @avr32dci_set_address(%struct.avr32dci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
