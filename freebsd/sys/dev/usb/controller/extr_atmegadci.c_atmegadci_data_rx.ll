; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_td = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.atmegadci_softc = type { i32 }
%struct.usb_page_search = type { i32, i32 }

@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UEINTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"temp=0x%02x rem=%u\0A\00", align 1
@ATMEGA_UEINTX_RXSTPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@ATMEGA_UEINTX_FIFOCON = common dso_local global i32 0, align 4
@ATMEGA_UEINTX_RXOUTI = common dso_local global i32 0, align 4
@ATMEGA_UEBCHX = common dso_local global i32 0, align 4
@ATMEGA_UEBCLX = common dso_local global i32 0, align 4
@ATMEGA_UEDATX = common dso_local global i32 0, align 4
@ATMEGA_UEIENX = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_RXSTPE = common dso_local global i32 0, align 4
@ATMEGA_UEIENX_RXOUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmegadci_td*)* @atmegadci_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmegadci_data_rx(%struct.atmegadci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmegadci_td*, align 8
  %4 = alloca %struct.atmegadci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atmegadci_td* %0, %struct.atmegadci_td** %3, align 8
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %11 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.atmegadci_softc* @ATMEGA_PC2SC(i32 %12)
  store %struct.atmegadci_softc* %13, %struct.atmegadci_softc** %4, align 8
  %14 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %15 = load i32, i32* @ATMEGA_UENUM, align 4
  %16 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %17 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %14, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %161, %1
  %21 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %22 = load i32, i32* @ATMEGA_UEINTX, align 4
  %23 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %26 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ATMEGA_UEINTX_RXSTPI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %35 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %170

40:                                               ; preds = %33
  %41 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %42 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %170

43:                                               ; preds = %20
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ATMEGA_UEINTX_FIFOCON, align 4
  %46 = load i32, i32* @ATMEGA_UEINTX_RXOUTI, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %163

51:                                               ; preds = %43
  %52 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %53 = load i32, i32* @ATMEGA_UEBCHX, align 4
  %54 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %52, i32 %53)
  %55 = shl i32 %54, 8
  %56 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %57 = load i32, i32* @ATMEGA_UEBCLX, align 4
  %58 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %56, i32 %57)
  %59 = or i32 %55, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 2047
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %64 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %70 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %75 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %74, i32 0, i32 4
  store i32 1, i32* %75, align 4
  store i32 1, i32* %9, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %78 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %170

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %83 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %88 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  store i32 0, i32* %2, align 4
  br label %170

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %95 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %98 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usbd_get_page(i32 %96, i32 %99, %struct.usb_page_search* %5)
  %101 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %6, align 4
  %107 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %93
  %109 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %110 = load i32, i32* @ATMEGA_UEDATX, align 4
  %111 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ATMEGA_READ_MULTI_1(%struct.atmegadci_softc* %109, i32 %110, i32 %112, i32 %114)
  %116 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %123 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %129 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %90

132:                                              ; preds = %90
  %133 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %134 = load i32, i32* @ATMEGA_UEINTX, align 4
  %135 = load i32, i32* @ATMEGA_UEINTX_RXOUTI, align 4
  %136 = xor i32 %135, 255
  %137 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %133, i32 %134, i32 %136)
  %138 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %139 = load i32, i32* @ATMEGA_UEINTX, align 4
  %140 = load i32, i32* @ATMEGA_UEINTX_FIFOCON, align 4
  %141 = xor i32 %140, 255
  %142 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %138, i32 %139, i32 %141)
  %143 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %144 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147, %132
  %151 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %152 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %170

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %147
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %20

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %50
  %164 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %4, align 8
  %165 = load i32, i32* @ATMEGA_UEIENX, align 4
  %166 = load i32, i32* @ATMEGA_UEIENX_RXSTPE, align 4
  %167 = load i32, i32* @ATMEGA_UEIENX_RXOUTE, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %164, i32 %165, i32 %168)
  store i32 1, i32* %2, align 4
  br label %170

170:                                              ; preds = %163, %155, %86, %76, %40, %38
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_PC2SC(i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @ATMEGA_READ_MULTI_1(%struct.atmegadci_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
