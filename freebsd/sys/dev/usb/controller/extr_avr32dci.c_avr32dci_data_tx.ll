; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_td = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.avr32dci_softc = type { i64 }
%struct.usb_page_search = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"EPTSTA(%u)=0x%08x\0A\00", align 1
@AVR32_EPTSTA_RX_SETUP = common dso_local global i32 0, align 4
@AVR32_EPTSTA_TX_PK_RDY = common dso_local global i32 0, align 4
@AVR32_EPTCTL_TX_PK_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avr32dci_td*)* @avr32dci_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32dci_data_tx(%struct.avr32dci_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avr32dci_td*, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.avr32dci_td* %0, %struct.avr32dci_td** %3, align 8
  store i32 4, i32* %7, align 4
  %9 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %10 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.avr32dci_softc* @AVR32_PC2SC(i32 %11)
  store %struct.avr32dci_softc* %12, %struct.avr32dci_softc** %4, align 8
  br label %13

13:                                               ; preds = %145, %1
  %14 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %15 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %16 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @AVR32_EPTSTA(i32 %17)
  %19 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %14, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %21 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AVR32_EPTSTA_RX_SETUP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %31 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %148

32:                                               ; preds = %13
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AVR32_EPTSTA_TX_PK_RDY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %147

38:                                               ; preds = %32
  %39 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %40 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %43 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %49 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %48, i32 0, i32 4
  store i32 1, i32* %49, align 8
  %50 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %51 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %122

57:                                               ; preds = %54
  %58 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %59 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %62 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usbd_get_page(i32 %60, i32 %63, %struct.usb_page_search* %5)
  %65 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %57
  %73 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @AVR32_EPTSTA_CURRENT_BANK(i32 %76)
  %78 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %79 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %75, %82
  %84 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %85 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 16
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %83, %88
  %90 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %91 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %95 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = srem i64 %93, %96
  %98 = add nsw i64 %89, %97
  %99 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memcpy(i64 %98, i32 %100, i64 %102)
  %104 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %6, align 8
  %108 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %111 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %119 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %54

122:                                              ; preds = %54
  %123 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %124 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %125 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @AVR32_EPTCTL(i32 %126)
  %128 = load i32, i32* @AVR32_EPTCTL_TX_PK_RDY, align 4
  %129 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %123, i32 %127, i32 %128)
  %130 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %131 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %122
  %135 = load %struct.avr32dci_td*, %struct.avr32dci_td** %3, align 8
  %136 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %148

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %122
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %13

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %37
  store i32 1, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %139, %29
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.avr32dci_softc* @AVR32_PC2SC(i32) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i32 @AVR32_EPTSTA(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @AVR32_EPTSTA_CURRENT_BANK(i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
