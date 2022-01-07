; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_alloc_device_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_alloc_device_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32 }
%struct.xhci_softc = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_page*, %struct.usb_page_cache*, %struct.usb_page, %struct.usb_page_cache, %struct.usb_page, %struct.usb_page_cache }
%struct.usb_page = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, %struct.xhci_trb* }
%struct.xhci_trb = type { i8*, i8*, i32 }

@XHCI_PAGE_SIZE = common dso_local global i32 0, align 4
@XHCI_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@XHCI_TRB_ALIGN = common dso_local global i32 0, align 4
@XHCI_MAX_TRANSFERS = common dso_local global i32 0, align 4
@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@XHCI_TRB_TYPE_LINK = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @xhci_alloc_device_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_alloc_device_ext(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 8
  %6 = alloca %struct.usb_page_search, align 8
  %7 = alloca %struct.xhci_trb*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca %struct.usb_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %15)
  store %struct.xhci_softc* %16, %struct.xhci_softc** %4, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  store %struct.usb_page_cache* %26, %struct.usb_page_cache** %8, align 8
  %27 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store %struct.usb_page* %33, %struct.usb_page** %9, align 8
  %34 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %39 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %41 = load %struct.usb_page*, %struct.usb_page** %9, align 8
  %42 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i64 8, i64 4
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @XHCI_PAGE_SIZE, align 4
  %50 = call i64 @usb_pc_alloc_mem(%struct.usb_page_cache* %40, %struct.usb_page* %41, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %1
  br label %165

53:                                               ; preds = %1
  %54 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %55 = call i32 @usbd_get_page(%struct.usb_page_cache* %54, i32 0, %struct.usb_page_search* %5)
  %56 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store %struct.usb_page_cache* %62, %struct.usb_page_cache** %8, align 8
  %63 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %64 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store %struct.usb_page* %69, %struct.usb_page** %9, align 8
  %70 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %75 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %77 = load %struct.usb_page*, %struct.usb_page** %9, align 8
  %78 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i64 8, i64 4
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @XHCI_PAGE_SIZE, align 4
  %86 = call i64 @usb_pc_alloc_mem(%struct.usb_page_cache* %76, %struct.usb_page* %77, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %53
  br label %165

89:                                               ; preds = %53
  store i64 0, i64* %12, align 8
  br label %90

90:                                               ; preds = %156, %89
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @XHCI_MAX_ENDPOINTS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %159

94:                                               ; preds = %90
  %95 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %96 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.usb_page_cache*, %struct.usb_page_cache** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %102, i64 %103
  store %struct.usb_page_cache* %104, %struct.usb_page_cache** %8, align 8
  %105 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %106 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.usb_page*, %struct.usb_page** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.usb_page, %struct.usb_page* %112, i64 %113
  store %struct.usb_page* %114, %struct.usb_page** %9, align 8
  %115 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %120 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %122 = load %struct.usb_page*, %struct.usb_page** %9, align 8
  %123 = load i32, i32* @XHCI_TRB_ALIGN, align 4
  %124 = call i64 @usb_pc_alloc_mem(%struct.usb_page_cache* %121, %struct.usb_page* %122, i32 4, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %94
  br label %165

127:                                              ; preds = %94
  %128 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %129 = call i32 @usbd_get_page(%struct.usb_page_cache* %128, i32 0, %struct.usb_page_search* %6)
  %130 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 1
  %131 = load %struct.xhci_trb*, %struct.xhci_trb** %130, align 8
  store %struct.xhci_trb* %131, %struct.xhci_trb** %7, align 8
  %132 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.xhci_trb*, %struct.xhci_trb** %7, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %134, i64 %135
  store %struct.xhci_trb* %136, %struct.xhci_trb** %7, align 8
  %137 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @htole64(i32 %139)
  %141 = load %struct.xhci_trb*, %struct.xhci_trb** %7, align 8
  %142 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = call i32 @XHCI_TRB_2_IRQ_SET(i32 0)
  %144 = call i8* @htole32(i32 %143)
  %145 = load %struct.xhci_trb*, %struct.xhci_trb** %7, align 8
  %146 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %148 = load i32, i32* @XHCI_TRB_TYPE_LINK, align 4
  %149 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %148)
  %150 = or i32 %147, %149
  %151 = call i8* @htole32(i32 %150)
  %152 = load %struct.xhci_trb*, %struct.xhci_trb** %7, align 8
  %153 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %155 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %154)
  br label %156

156:                                              ; preds = %127
  %157 = load i64, i64* %12, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %12, align 8
  br label %90

159:                                              ; preds = %90
  %160 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @xhci_set_slot_pointer(%struct.xhci_softc* %160, i64 %161, i32 %163)
  store i32 0, i32* %2, align 4
  br label %169

165:                                              ; preds = %126, %88, %52
  %166 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %167 = call i32 @xhci_free_device_ext(%struct.usb_device* %166)
  %168 = load i32, i32* @USB_ERR_NOMEM, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i64 @usb_pc_alloc_mem(%struct.usb_page_cache*, %struct.usb_page*, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @XHCI_TRB_2_IRQ_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_SET(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(%struct.usb_page_cache*) #1

declare dso_local i32 @xhci_set_slot_pointer(%struct.xhci_softc*, i64, i32) #1

declare dso_local i32 @xhci_free_device_ext(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
