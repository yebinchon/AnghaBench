; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_write_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64*, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.usb_page_cache*, i32, i32, i32)* @dwc_otg_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_write_fifo(%struct.dwc_otg_softc* %0, %struct.usb_page_cache* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dwc_otg_softc*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_page_search, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %6, align 8
  store %struct.usb_page_cache* %1, %struct.usb_page_cache** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %5
  %18 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @usb_pc_buffer_is_aligned(%struct.usb_page_cache* %18, i32 %19, i32 %20, i32 3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %64, %23
  %28 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @usbd_get_page(%struct.usb_page_cache* %28, i32 %29, %struct.usb_page_search* %12)
  %31 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %40 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %43 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 4
  %51 = call i32 @bus_space_write_region_4(i32 %41, i32 %44, i32 %45, i64* %47, i32 %50)
  %52 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %38
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %27, label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %17, %5
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %73 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sdiv i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %83 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @usbd_copy_out(%struct.usb_page_cache* %80, i32 %81, i64* %84, i32 %85)
  %87 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %88 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %91 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %95 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 3
  %99 = sdiv i32 %98, 4
  %100 = call i32 @bus_space_write_region_4(i32 %89, i32 %92, i32 %93, i64* %96, i32 %99)
  br label %101

101:                                              ; preds = %71, %68
  ret void
}

declare dso_local i64 @usb_pc_buffer_is_aligned(%struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
