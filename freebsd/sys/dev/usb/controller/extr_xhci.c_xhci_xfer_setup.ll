; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i64, i64, i32, %struct.usb_xfer* }
%struct.usb_xfer = type { i32, i32, i32, %struct.TYPE_2__, i8** }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.usb_page_search = type { i32, %struct.xhci_td* }
%struct.xhci_td = type { %struct.usb_page_cache*, i8*, i32 }
%struct.usb_page_cache = type { i32 }

@XHCI_TD_PAYLOAD_MAX = common dso_local global i32 0, align 4
@XHCI_TD_ALIGN = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @xhci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.usb_page_cache*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %10 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %11 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %10, i32 0, i32 5
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %11, align 8
  store %struct.usb_xfer* %12, %struct.usb_xfer** %5, align 8
  %13 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %14 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %13, i32 0, i32 0
  store i32 1024, i32* %14, align 8
  %15 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %16 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %15, i32 0, i32 1
  store i32 48, i32* %16, align 4
  %17 = load i32, i32* @XHCI_TD_PAYLOAD_MAX, align 4
  %18 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %19 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %24 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %23)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 1, %33
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %36 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  %42 = add nsw i32 %34, %41
  store i32 %42, i32* %7, align 4
  br label %77

43:                                               ; preds = %1
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %53, 1
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %57, %60
  %62 = add nsw i32 %54, %61
  store i32 %62, i32* %7, align 4
  br label %76

63:                                               ; preds = %43
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 2, %66
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %72 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %70, %73
  %75 = add nsw i32 %67, %74
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %63, %49
  br label %77

77:                                               ; preds = %76, %30
  br label %78

78:                                               ; preds = %151, %77
  %79 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %80 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %155

84:                                               ; preds = %78
  store i8* null, i8** %6, align 8
  %85 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %86 = load i32, i32* @XHCI_TD_ALIGN, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %85, %struct.usb_page_cache** %4, i32 24, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i64, i64* @USB_ERR_NOMEM, align 8
  %92 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %93 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  br label %155

94:                                               ; preds = %84
  %95 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %96 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %136

99:                                               ; preds = %94
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %132, %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %100
  %105 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %105, i64 %107
  %109 = call i32 @usbd_get_page(%struct.usb_page_cache* %108, i32 0, %struct.usb_page_search* %3)
  %110 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %111 = load %struct.xhci_td*, %struct.xhci_td** %110, align 8
  store %struct.xhci_td* %111, %struct.xhci_td** %9, align 8
  %112 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %115 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %118 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %119, i64 %121
  %123 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %124 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %123, i32 0, i32 0
  store %struct.usb_page_cache* %122, %struct.usb_page_cache** %124, align 8
  %125 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %126 = bitcast %struct.xhci_td* %125 to i8*
  store i8* %126, i8** %6, align 8
  %127 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %127, i64 %129
  %131 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %130)
  br label %132

132:                                              ; preds = %104
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %100

135:                                              ; preds = %100
  br label %136

136:                                              ; preds = %135, %94
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %139 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %138, i32 0, i32 4
  %140 = load i8**, i8*** %139, align 8
  %141 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %142 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i8*, i8** %140, i64 %144
  store i8* %137, i8** %145, align 8
  %146 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %147 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %136
  %152 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %153 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i64 1, i64* %154, align 8
  br label %78

155:                                              ; preds = %83, %90, %136
  ret void
}

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params*, %struct.usb_page_cache**, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usb_pc_cpu_flush(%struct.usb_page_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
