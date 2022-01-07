; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_write_device_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_write_device_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i64, i32, i32 }
%struct.saf1761_otg_td = type { i32, i32, i32 }
%struct.usb_page_search = type { i32, i64 }

@SOTG_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32)* @saf1761_write_device_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_write_device_fifo(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1, i32 %2) #0 {
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_page_search, align 8
  %8 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %14 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %17 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usbd_get_page(i32 %15, i32 %18, %struct.usb_page_search* %7)
  %20 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %12
  %28 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 3
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %66

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, -4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %66

40:                                               ; preds = %33
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SOTG_DATA_PORT, align 4
  %48 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %50, 4
  %52 = call i32 @bus_space_write_multi_4(i32 %43, i32 %46, i32 %47, i64 %49, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %58 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %63 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %9

66:                                               ; preds = %39, %32, %9
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %71 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %74 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %77 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @usbd_copy_out(i32 %72, i32 %75, i64 %78, i32 %79)
  %81 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %82 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %85 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SOTG_DATA_PORT, align 4
  %88 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %89 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 3
  %93 = sdiv i32 %92, 4
  %94 = call i32 @bus_space_write_multi_4(i32 %83, i32 %86, i32 %87, i64 %90, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %97 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %102 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %69, %66
  ret void
}

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_write_multi_4(i32, i32, i32, i64, i32) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
