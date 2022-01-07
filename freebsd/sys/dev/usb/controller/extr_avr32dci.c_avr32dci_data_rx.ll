; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_td = type { i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.avr32dci_softc = type { i64 }
%struct.usb_page_search = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"EPTSTA(%u)=0x%08x\0A\00", align 1
@AVR32_EPTSTA_RX_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@AVR32_EPTSTA_RX_BK_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avr32dci_td*)* @avr32dci_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32dci_data_rx(%struct.avr32dci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avr32dci_td*, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.avr32dci_td* %0, %struct.avr32dci_td** %3, align 8
  store i32 4, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %11 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.avr32dci_softc* @AVR32_PC2SC(i32 %12)
  store %struct.avr32dci_softc* %13, %struct.avr32dci_softc** %4, align 8
  br label %14

14:                                               ; preds = %171, %1
  %15 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %16 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %17 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AVR32_EPTSTA(i32 %18)
  %20 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %15, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %22 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %14
  %31 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %32 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %174

37:                                               ; preds = %30
  %38 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %39 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %174

40:                                               ; preds = %14
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @AVR32_EPTSTA_RX_BK_RDY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %173

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @AVR32_EPTSTA_BYTE_COUNT(i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %51 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %57 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %62 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %61, i32 0, i32 4
  store i32 1, i32* %62, align 8
  store i32 1, i32* %9, align 4
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %65 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %174

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %70 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %75 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %174

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i64, i64* %6, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %145

80:                                               ; preds = %77
  %81 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %82 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %85 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usbd_get_page(i32 %83, i32 %86, %struct.usb_page_search* %5)
  %88 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %80
  %96 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %99 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @AVR32_EPTSTA_CURRENT_BANK(i32 %101)
  %103 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %104 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %100, %107
  %109 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %110 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %108, %113
  %115 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %116 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %120 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = srem i64 %118, %121
  %123 = add nsw i64 %114, %122
  %124 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i32 %97, i64 %123, i64 %125)
  %127 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %6, align 8
  %131 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %134 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %132
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %142 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %77

145:                                              ; preds = %77
  %146 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %147 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %148 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @AVR32_EPTCLRSTA(i32 %149)
  %151 = load i32, i32* @AVR32_EPTSTA_RX_BK_RDY, align 4
  %152 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %146, i32 %150, i32 %151)
  %153 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %154 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157, %145
  %161 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %162 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %174

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %157
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %14

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %45
  store i32 1, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %165, %73, %63, %37, %35
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.avr32dci_softc* @AVR32_PC2SC(i32) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @AVR32_EPTSTA(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i64 @AVR32_EPTSTA_BYTE_COUNT(i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @AVR32_EPTSTA_CURRENT_BANK(i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTCLRSTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
