; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_reset_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_reset_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.usb_device*, i32 }
%struct.usb_device = type { i64 }
%struct.xhci_softc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_page_cache }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32 }
%struct.xhci_endpoint_ext = type { i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@USB_ERR_NO_PIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Could not stop endpoint %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not reset endpoint %u\0A\00", align 1
@XHCI_MAX_TRANSFERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not set dequeue ptr for endpoint %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not configure endpoint %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_xfer*)* @xhci_configure_reset_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xhci_configure_reset_endpoint(%struct.usb_xfer* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca %struct.usb_page_search, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.xhci_endpoint_ext*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %18)
  store %struct.xhci_softc* %19, %struct.xhci_softc** %4, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %28, align 8
  %30 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device* %24, %struct.usb_endpoint_descriptor* %29)
  store %struct.xhci_endpoint_ext* %30, %struct.xhci_endpoint_ext** %7, align 8
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.usb_device*, %struct.usb_device** %34, align 8
  store %struct.usb_device* %35, %struct.usb_device** %6, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.usb_page_cache* %45, %struct.usb_page_cache** %9, align 8
  %46 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %47 = call i32 @usbd_get_page(%struct.usb_page_cache* %46, i32 0, %struct.usb_page_search* %5)
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %51, align 8
  store %struct.usb_endpoint_descriptor* %52, %struct.usb_endpoint_descriptor** %8, align 8
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UE_XFERTYPE, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @UE_CONTROL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %1
  %67 = load i64, i64* @UE_DIR_IN, align 8
  %68 = load i64, i64* %13, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %66, %1
  %71 = load i64, i64* %13, align 8
  %72 = call i64 @XHCI_EPNO2EPID(i64 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @USB_ERR_NO_PIPE, align 8
  store i64 %76, i64* %2, align 8
  br label %164

77:                                               ; preds = %70
  %78 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %79 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %78)
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %81 = call i64 @xhci_configure_endpoint_by_xfer(%struct.usb_xfer* %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %86 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %85)
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %2, align 8
  br label %164

88:                                               ; preds = %77
  %89 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i64 @xhci_cmd_stop_ep(%struct.xhci_softc* %89, i32 0, i64 %90, i64 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @xhci_cmd_reset_ep(%struct.xhci_softc* %99, i32 0, i64 %100, i64 %101)
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %110 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %111 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %116, %118
  %120 = add i64 %113, %119
  %121 = call i32 @XHCI_EPCTX_2_DCS_SET(i32 1)
  %122 = sext i32 %121 to i64
  %123 = or i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %11, align 4
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @xhci_cmd_set_tr_dequeue_ptr(%struct.xhci_softc* %109, i32 %124, i32 %125, i64 %126, i64 %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %108
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %131, %108
  %135 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %136 = load i64, i64* %13, align 8
  %137 = trunc i64 %136 to i32
  %138 = shl i32 1, %137
  %139 = or i32 %138, 1
  %140 = call i32 @xhci_configure_mask(%struct.usb_device* %135, i32 %139, i32 0)
  %141 = load i64, i64* %13, align 8
  %142 = icmp ugt i64 %141, 1
  br i1 %142, label %143, label %149

143:                                              ; preds = %134
  %144 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %145 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @xhci_cmd_configure_ep(%struct.xhci_softc* %144, i32 %146, i32 0, i64 %147)
  store i64 %148, i64* %10, align 8
  br label %155

149:                                              ; preds = %134
  %150 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %151 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @xhci_cmd_evaluate_ctx(%struct.xhci_softc* %150, i32 %152, i64 %153)
  store i64 %154, i64* %10, align 8
  br label %155

155:                                              ; preds = %149, %143
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i64, i64* %13, align 8
  %160 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %163 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %162)
  store i64 0, i64* %2, align 8
  br label %164

164:                                              ; preds = %161, %84, %75
  %165 = load i64, i64* %2, align 8
  ret i64 %165
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i64 @XHCI_EPNO2EPID(i64) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i64 @xhci_configure_endpoint_by_xfer(%struct.usb_xfer*) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

declare dso_local i64 @xhci_cmd_stop_ep(%struct.xhci_softc*, i32, i64, i64) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i64 @xhci_cmd_reset_ep(%struct.xhci_softc*, i32, i64, i64) #1

declare dso_local i64 @xhci_cmd_set_tr_dequeue_ptr(%struct.xhci_softc*, i32, i32, i64, i64) #1

declare dso_local i32 @XHCI_EPCTX_2_DCS_SET(i32) #1

declare dso_local i32 @xhci_configure_mask(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @xhci_cmd_configure_ep(%struct.xhci_softc*, i32, i32, i64) #1

declare dso_local i64 @xhci_cmd_evaluate_ctx(%struct.xhci_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
