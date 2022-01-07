; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_read_host_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_read_host_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i64, i32, i32 }
%struct.saf1761_otg_td = type { i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i64 }

@SOTG_MEMORY_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32)* @saf1761_read_host_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_read_host_memory(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1, i32 %2) #0 {
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_page_search, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %123

13:                                               ; preds = %3
  %14 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %15 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SOTG_DATA_ADDR(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %19 = load i32, i32* @SOTG_MEMORY_REG, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %23 = call i32 @SAF1761_90NS_DELAY(%struct.saf1761_otg_softc* %22)
  br label %24

24:                                               ; preds = %55, %13
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %24
  %28 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %29 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %32 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usbd_get_page(i32 %30, i32 %33, %struct.usb_page_search* %7)
  %35 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %27
  %43 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %84

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %84

55:                                               ; preds = %48
  %56 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %57 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %60 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %65, 4
  %67 = call i32 @bus_space_read_region_4(i32 %58, i32 %61, i32 %62, i64 %64, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %76 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %81 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %24

84:                                               ; preds = %54, %47, %24
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %89 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %92 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %96 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 3
  %100 = sdiv i32 %99, 4
  %101 = call i32 @bus_space_read_region_4(i32 %90, i32 %93, i32 %94, i64 %97, i32 %100)
  %102 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %103 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %106 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @usbd_copy_in(i32 %104, i32 %107, i64 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %115 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %120 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %12, %87, %84
  ret void
}

declare dso_local i32 @SOTG_DATA_ADDR(i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SAF1761_90NS_DELAY(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_read_region_4(i32, i32, i32, i64, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
