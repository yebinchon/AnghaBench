; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, i64, i64, %struct.TYPE_6__*, %struct.usb_xfer* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_xfer = type { i64, i32, i8**, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hw_ep_profile = type { i64 }
%struct.atmegadci_softc = type { i32 }
%struct.atmegadci_td = type { i32, i32, i8*, i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @atmegadci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_hw_ep_profile*, align 8
  %4 = alloca %struct.atmegadci_softc*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atmegadci_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %11 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %12 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %11, i32 0, i32 6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32 %15)
  store %struct.atmegadci_softc* %16, %struct.atmegadci_softc** %4, align 8
  %17 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %18 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %17, i32 0, i32 7
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  store %struct.usb_xfer* %19, %struct.usb_xfer** %5, align 8
  %20 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %21 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %20, i32 0, i32 0
  store i32 1280, i32* %21, align 8
  %22 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %23 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 2
  store i32 1280, i32* %25, align 8
  %26 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %27 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %26)
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UE_XFERTYPE, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @UE_CONTROL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = add nsw i64 %43, 1
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %53 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %148

57:                                               ; preds = %51
  store i8* null, i8** %6, align 8
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UE_ADDR, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %64 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %63, i32 0, i32 6
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @atmegadci_get_hw_ep_profile(%struct.TYPE_6__* %65, %struct.usb_hw_ep_profile** %3, i32 %66)
  %68 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %69 = icmp eq %struct.usb_hw_ep_profile* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i64, i64* @USB_ERR_INVAL, align 8
  %72 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %73 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  br label %148

74:                                               ; preds = %57
  %75 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %76 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 0, %79
  %81 = load i32, i32* @USB_HOST_ALIGN, align 4
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %80, %82
  %84 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %85 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %83
  store i32 %89, i32* %87, align 4
  store i64 0, i64* %8, align 8
  br label %90

90:                                               ; preds = %139, %74
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %96 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %94
  %100 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %101 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %104 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.atmegadci_td* @USB_ADD_BYTES(i64 %102, i32 %107)
  store %struct.atmegadci_td* %108, %struct.atmegadci_td** %10, align 8
  %109 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %110 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.atmegadci_td*, %struct.atmegadci_td** %10, align 8
  %113 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.atmegadci_td*, %struct.atmegadci_td** %10, align 8
  %116 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %118 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %99
  %122 = load %struct.atmegadci_td*, %struct.atmegadci_td** %10, align 8
  %123 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %99
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.atmegadci_td*, %struct.atmegadci_td** %10, align 8
  %127 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.atmegadci_td*, %struct.atmegadci_td** %10, align 8
  %129 = bitcast %struct.atmegadci_td* %128 to i8*
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %124, %94
  %131 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %132 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, 24
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  br label %139

139:                                              ; preds = %130
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %90

142:                                              ; preds = %90
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 2
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  store i8* %143, i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %70, %56
  ret void
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @atmegadci_get_hw_ep_profile(%struct.TYPE_6__*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local %struct.atmegadci_td* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
