; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_read_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.usb_page_cache*, i32, i32)* @dwc_otg_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_read_fifo(%struct.dwc_otg_softc* %0, %struct.usb_page_cache* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dwc_otg_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_page_search, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %5, align 8
  store %struct.usb_page_cache* %1, %struct.usb_page_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, -4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %76

15:                                               ; preds = %4
  %16 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @usb_pc_buffer_is_aligned(%struct.usb_page_cache* %16, i32 %17, i32 %18, i32 3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %72, %21
  %26 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @usbd_get_page(%struct.usb_page_cache* %26, i32 %27, %struct.usb_page_search* %10)
  %29 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %38 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %44 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 4
  %51 = call i32 @bus_space_read_region_4(i32 %39, i32 %42, i32 %45, i32 %47, i32 %50)
  %52 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %59 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %65 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %36
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %25, label %75

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %15, %4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %81 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %84 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %87 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %90 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 3
  %94 = sdiv i32 %93, 4
  %95 = call i32 @bus_space_read_region_4(i32 %82, i32 %85, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %99 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @usbd_copy_in(%struct.usb_page_cache* %96, i32 %97, i32 %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 3
  %105 = and i32 %104, -4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %108 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %113 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %79, %76
  ret void
}

declare dso_local i64 @usb_pc_buffer_is_aligned(%struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_read_region_4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
