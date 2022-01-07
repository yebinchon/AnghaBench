; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_td = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.atmegadci_softc = type { i32 }
%struct.usb_page_search = type { i64, i32 }

@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UEINTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"temp=0x%02x rem=%u\0A\00", align 1
@ATMEGA_UEINTX_RXSTPI = common dso_local global i32 0, align 4
@ATMEGA_UESTA0X = common dso_local global i32 0, align 4
@ATMEGA_UEDATX = common dso_local global i32 0, align 4
@ATMEGA_UEINTX_TXINI = common dso_local global i32 0, align 4
@ATMEGA_UEINTX_FIFOCON = common dso_local global i32 0, align 4
@ATMEGA_UEIENX = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_RXSTPE = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_TXINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmegadci_td*)* @atmegadci_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmegadci_data_tx(%struct.atmegadci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmegadci_td*, align 8
  %4 = alloca %struct.atmegadci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atmegadci_td* %0, %struct.atmegadci_td** %3, align 8
  store i32 3, i32* %7, align 4
  %9 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %10 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.atmegadci_softc* @ATMEGA_PC2SC(i32 %11)
  store %struct.atmegadci_softc* %12, %struct.atmegadci_softc** %4, align 8
  %13 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %14 = load i32, i32* @ATMEGA_UENUM, align 4
  %15 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %16 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %13, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %129, %1
  %20 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %21 = load i32, i32* @ATMEGA_UEINTX, align 4
  %22 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %25 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %34 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %138

35:                                               ; preds = %19
  %36 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %37 = load i32, i32* @ATMEGA_UESTA0X, align 4
  %38 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %131

43:                                               ; preds = %35
  %44 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %45 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %48 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %54 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %53, i32 0, i32 4
  store i32 1, i32* %54, align 8
  %55 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %56 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %52, %43
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i64, i64* %6, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %64 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %67 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_get_page(i32 %65, i32 %68, %struct.usb_page_search* %5)
  %70 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %79 = load i32, i32* @ATMEGA_UEDATX, align 4
  %80 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ATMEGA_WRITE_MULTI_1(%struct.atmegadci_softc* %78, i32 %79, i32 %81, i64 %83)
  %85 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %92 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %100 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  br label %59

103:                                              ; preds = %59
  %104 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %105 = load i32, i32* @ATMEGA_UEINTX, align 4
  %106 = load i32, i32* @ATMEGA_UEINTX_TXINI, align 4
  %107 = xor i32 255, %106
  %108 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %104, i32 %105, i32 %107)
  %109 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %110 = load i32, i32* @ATMEGA_UEINTX, align 4
  %111 = load i32, i32* @ATMEGA_UEINTX_FIFOCON, align 4
  %112 = xor i32 255, %111
  %113 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %109, i32 %110, i32 %112)
  %114 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %115 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %103
  %119 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %120 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %138

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %19

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %42
  %132 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %133 = load i32, i32* @ATMEGA_UEIENX, align 4
  %134 = load i32, i32* @ATMEGA_UEIENX_RXSTPE, align 4
  %135 = load i32, i32* @ATMEGA_UEIENX_TXINE, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %132, i32 %133, i32 %136)
  store i32 1, i32* %2, align 4
  br label %138

138:                                              ; preds = %131, %123, %32
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_PC2SC(i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i64) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @ATMEGA_WRITE_MULTI_1(%struct.atmegadci_softc*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
