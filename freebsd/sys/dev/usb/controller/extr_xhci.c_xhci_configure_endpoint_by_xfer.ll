; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_endpoint_by_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_endpoint_by_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.usb_endpoint_ss_comp_descriptor* }
%struct.usb_endpoint_ss_comp_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_endpoint_ext = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@XHCI_MAX_STREAMS = common dso_local global i64 0, align 8
@XHCI_MAX_TRANSFERS = common dso_local global i64 0, align 8
@XHCI_SCTX_0_SCT_SEC_TR_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @xhci_configure_endpoint_by_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_configure_endpoint_by_xfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.xhci_endpoint_ext*, align 8
  %4 = alloca %struct.usb_endpoint_ss_comp_descriptor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32 %11, i32 %16)
  store %struct.xhci_endpoint_ext* %17, %struct.xhci_endpoint_ext** %3, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %21, align 8
  store %struct.usb_endpoint_ss_comp_descriptor* %22, %struct.usb_endpoint_ss_comp_descriptor** %4, align 8
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %78, %1
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @XHCI_MAX_STREAMS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @XHCI_MAX_TRANSFERS, align 8
  %33 = mul i64 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %37 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @XHCI_MAX_TRANSFERS, align 8
  %41 = mul i64 %39, %40
  %42 = mul i64 %41, 4
  %43 = add i64 %38, %42
  %44 = load i64, i64* @XHCI_SCTX_0_SCT_SEC_TR_RING, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @htole64(i64 %46)
  %48 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %49 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* @XHCI_MAX_TRANSFERS, align 8
  %52 = load i64, i64* @XHCI_MAX_STREAMS, align 8
  %53 = mul i64 %51, %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %47, i32* %57, align 8
  %58 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %59 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* @XHCI_MAX_TRANSFERS, align 8
  %62 = load i64, i64* @XHCI_MAX_STREAMS, align 8
  %63 = mul i64 %61, %62
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %69 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @XHCI_MAX_TRANSFERS, align 8
  %72 = load i64, i64* @XHCI_MAX_STREAMS, align 8
  %73 = mul i64 %71, %72
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %27
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %23

81:                                               ; preds = %23
  %82 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %83 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @usb_pc_cpu_flush(i32 %84)
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %87 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %92 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %3, align 8
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %101 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %4, align 8
  %104 = icmp ne %struct.usb_endpoint_ss_comp_descriptor* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %81
  %106 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %4, align 8
  %107 = getelementptr inbounds %struct.usb_endpoint_ss_comp_descriptor, %struct.usb_endpoint_ss_comp_descriptor* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UE_GET_SS_ISO_MULT(i32 %108)
  %110 = add nsw i32 %109, 1
  br label %112

111:                                              ; preds = %81
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i32 [ %110, %105 ], [ 1, %111 ]
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %115 = call i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer* %114)
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %117 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %123 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @xhci_configure_endpoint(i32 %90, i32 %95, %struct.xhci_endpoint_ext* %96, i32 %99, i32 %102, i32 %113, i32 %115, i32 %118, i32 %121, i32 %126)
  ret i32 %127
}

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32, i32) #1

declare dso_local i32 @htole64(i64) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @xhci_configure_endpoint(i32, i32, %struct.xhci_endpoint_ext*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UE_GET_SS_ISO_MULT(i32) #1

declare dso_local i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
