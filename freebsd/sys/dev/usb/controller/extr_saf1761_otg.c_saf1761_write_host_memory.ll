; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_write_host_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_write_host_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i64, i32, i32 }
%struct.saf1761_otg_td = type { i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32)* @saf1761_write_host_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_write_host_memory(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1, i32 %2) #0 {
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
  br label %117

13:                                               ; preds = %3
  %14 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %15 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SOTG_DATA_ADDR(i32 %16)
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %49, %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %23 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usbd_get_page(i32 %24, i32 %27, %struct.usb_page_search* %7)
  %29 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, 3
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %78

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, -4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %78

49:                                               ; preds = %42
  %50 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %51 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %59, 4
  %61 = call i32 @bus_space_write_region_4(i32 %52, i32 %55, i32 %56, i64 %58, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %70 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %75 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %18

78:                                               ; preds = %48, %41, %18
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %78
  %82 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %83 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %86 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %89 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @usbd_copy_out(i32 %84, i32 %87, i64 %90, i32 %91)
  %93 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %94 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %97 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %101 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 3
  %105 = sdiv i32 %104, 4
  %106 = call i32 @bus_space_write_region_4(i32 %95, i32 %98, i32 %99, i64 %102, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %114 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %12, %81, %78
  ret void
}

declare dso_local i32 @SOTG_DATA_ADDR(i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i32, i64, i32) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
