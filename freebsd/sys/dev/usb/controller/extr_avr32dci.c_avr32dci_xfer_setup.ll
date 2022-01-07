; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, i64, i64, %struct.TYPE_6__*, %struct.usb_xfer* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_xfer = type { i64, i32, i8**, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hw_ep_profile = type { i64, i64, i64 }
%struct.avr32dci_softc = type { i32 }
%struct.avr32dci_td = type { i32, i32, i8*, i64, i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @avr32dci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_hw_ep_profile*, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.avr32dci_td*, align 8
  %11 = alloca i64, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %12 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %13 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %12, i32 0, i32 6
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.avr32dci_softc* @AVR32_BUS2SC(i32 %16)
  store %struct.avr32dci_softc* %17, %struct.avr32dci_softc** %4, align 8
  %18 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %19 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %18, i32 0, i32 7
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %19, align 8
  store %struct.usb_xfer* %20, %struct.usb_xfer** %5, align 8
  %21 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %22 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %21, i32 0, i32 0
  store i32 1024, i32* %22, align 8
  %23 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %24 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %26 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %25, i32 0, i32 2
  store i32 1024, i32* %26, align 8
  %27 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %28 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UE_XFERTYPE, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @UE_CONTROL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %42 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = add nsw i64 %44, 1
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %52

47:                                               ; preds = %1
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %49 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %54 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %168

58:                                               ; preds = %52
  store i8* null, i8** %6, align 8
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %60 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UE_ADDR, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %65 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @avr32dci_get_hw_ep_profile(%struct.TYPE_6__* %66, %struct.usb_hw_ep_profile** %3, i32 %67)
  %69 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %70 = icmp eq %struct.usb_hw_ep_profile* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i64, i64* @USB_ERR_INVAL, align 8
  %73 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %74 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  br label %168

75:                                               ; preds = %58
  %76 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %77 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 0, %80
  %82 = load i32, i32* @USB_HOST_ALIGN, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  %85 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %86 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %84
  store i32 %90, i32* %88, align 4
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %159, %75
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %91
  %96 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %97 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %95
  %101 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %102 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %105 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.avr32dci_td* @USB_ADD_BYTES(i64 %103, i32 %108)
  store %struct.avr32dci_td* %109, %struct.avr32dci_td** %10, align 8
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %111 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %114 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %117 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %119 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %122 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %120, %123
  store i64 %124, i64* %11, align 8
  %125 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %126 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %131, %100
  %128 = load i64, i64* %11, align 8
  %129 = sdiv i64 %128, 2
  store i64 %129, i64* %11, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %133 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %127

136:                                              ; preds = %127
  %137 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %138 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %143 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i8*, i8** %6, align 8
  %146 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %147 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.avr32dci_td*, %struct.avr32dci_td** %10, align 8
  %149 = bitcast %struct.avr32dci_td* %148 to i8*
  store i8* %149, i8** %6, align 8
  br label %150

150:                                              ; preds = %144, %95
  %151 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %152 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, 32
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  br label %159

159:                                              ; preds = %150
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %91

162:                                              ; preds = %91
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %165 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %164, i32 0, i32 2
  %166 = load i8**, i8*** %165, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  store i8* %163, i8** %167, align 8
  br label %168

168:                                              ; preds = %162, %71, %57
  ret void
}

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @avr32dci_get_hw_ep_profile(%struct.TYPE_6__*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local %struct.avr32dci_td* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
