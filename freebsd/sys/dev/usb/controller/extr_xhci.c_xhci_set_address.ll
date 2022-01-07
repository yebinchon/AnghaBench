; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, i32, i32, i32* }
%struct.mtx = type { i32 }
%struct.usb_page_search = type { %struct.xhci_dev_ctx*, i32 }
%struct.xhci_dev_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xhci_softc = type { %struct.TYPE_5__, i32 (i32, i32, i32)*, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.xhci_hw_dev* }
%struct.xhci_hw_dev = type { i32, i32, i32 }
%struct.xhci_endpoint_ext = type { i32, i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not configure device\0A\00", align 1
@USB_EP_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not configure default endpoint\0A\00", align 1
@XHCI_TRB_ERROR_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not set address for slot %u.\0A\00", align 1
@XHCI_ST_ADDRESSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Wrong state for set address.\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.mtx*, i32)* @xhci_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_set_address(%struct.usb_device* %0, %struct.mtx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_page_search, align 8
  %9 = alloca %struct.usb_page_search, align 8
  %10 = alloca %struct.xhci_softc*, align 8
  %11 = alloca %struct.xhci_hw_dev*, align 8
  %12 = alloca %struct.xhci_dev_ctx*, align 8
  %13 = alloca %struct.xhci_endpoint_ext*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %20)
  store %struct.xhci_softc* %21, %struct.xhci_softc** %10, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %186

28:                                               ; preds = %3
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %17, align 8
  %32 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %33 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %34, align 8
  %36 = load i64, i64* %17, align 8
  %37 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %35, i64 %36
  store %struct.xhci_hw_dev* %37, %struct.xhci_hw_dev** %11, align 8
  %38 = load %struct.mtx*, %struct.mtx** %6, align 8
  %39 = icmp ne %struct.mtx* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.mtx*, %struct.mtx** %6, align 8
  %42 = call i32 @mtx_unlock(%struct.mtx* %41)
  br label %43

43:                                               ; preds = %40, %28
  %44 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %45 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %44)
  %46 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %47 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %173 [
    i32 129, label %49
    i32 128, label %49
  ]

49:                                               ; preds = %43, %43
  %50 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %51 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %50, i32 0, i32 0
  store i32 128, i32* %51, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %53 = call i32 @xhci_configure_mask(%struct.usb_device* %52, i32 3, i32 0)
  %54 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %55 = call i32 @xhci_configure_device(%struct.usb_device* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %176

60:                                               ; preds = %49
  %61 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %66 [
    i32 130, label %64
    i32 132, label %64
    i32 131, label %65
  ]

64:                                               ; preds = %60, %60
  store i32 8, i32* %15, align 4
  br label %67

65:                                               ; preds = %60
  store i32 64, i32* %15, align 4
  br label %67

66:                                               ; preds = %60
  store i32 512, i32* %15, align 4
  br label %67

67:                                               ; preds = %66, %65, %64
  %68 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 2
  %71 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device* %68, i32* %70)
  store %struct.xhci_endpoint_ext* %71, %struct.xhci_endpoint_ext** %13, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @USB_BUS_LOCK(i32 %74)
  %76 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %13, align 8
  %77 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %13, align 8
  %79 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @USB_BUS_UNLOCK(i32 %82)
  %84 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %85 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 2
  %87 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @USB_EP_MODE_DEFAULT, align 4
  %91 = call i32 @xhci_configure_endpoint(%struct.usb_device* %84, i32* %86, %struct.xhci_endpoint_ext* %87, i32 0, i32 1, i32 1, i32 0, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %67
  %95 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %176

96:                                               ; preds = %67
  %97 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %98 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %97, i32 0, i32 2
  %99 = call i32 @usbd_get_page(i32* %98, i32 0, %struct.usb_page_search* %8)
  %100 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %101 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @xhci_cmd_set_address(%struct.xhci_softc* %100, i32 %102, i32 %105, i64 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %96
  %111 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %112 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32toh(i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %110
  %120 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %121 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %120, i32 0, i32 1
  %122 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %121, align 8
  %123 = icmp ne i32 (i32, i32, i32)* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @XHCI_TRB_2_ERROR_GET(i32 %125)
  %127 = load i32, i32* @XHCI_TRB_ERROR_PARAMETER, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %131 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %130, i32 0, i32 1
  %132 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %131, align 8
  %133 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %134 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %132(i32 %136, i32 0, i32 -1)
  br label %138

138:                                              ; preds = %129, %124, %119, %110
  %139 = load i64, i64* %17, align 8
  %140 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %176

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %96
  %146 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %147 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %146, i32 0, i32 1
  %148 = call i32 @usbd_get_page(i32* %147, i32 0, %struct.usb_page_search* %9)
  %149 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %150 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %149, align 8
  store %struct.xhci_dev_ctx* %150, %struct.xhci_dev_ctx** %12, align 8
  %151 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %152 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %151, i32 0, i32 1
  %153 = call i32 @usb_pc_cpu_invalidate(i32* %152)
  %154 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %155 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %12, align 8
  %156 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = call i32 @xhci_ctx_get_le32(%struct.xhci_softc* %154, i32* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @XHCI_SCTX_3_DEV_ADDR_GET(i32 %159)
  %161 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %145
  %166 = load i32, i32* @XHCI_ST_ADDRESSED, align 4
  %167 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %168 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %172

169:                                              ; preds = %145
  %170 = load %struct.xhci_hw_dev*, %struct.xhci_hw_dev** %11, align 8
  %171 = getelementptr inbounds %struct.xhci_hw_dev, %struct.xhci_hw_dev* %170, i32 0, i32 0
  store i32 129, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %165
  br label %176

173:                                              ; preds = %43
  %174 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %173, %172, %143, %94, %58
  %177 = load %struct.xhci_softc*, %struct.xhci_softc** %10, align 8
  %178 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %177)
  %179 = load %struct.mtx*, %struct.mtx** %6, align 8
  %180 = icmp ne %struct.mtx* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.mtx*, %struct.mtx** %6, align 8
  %183 = call i32 @mtx_lock(%struct.mtx* %182)
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %184, %26
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_configure_mask(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @xhci_configure_device(%struct.usb_device*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device*, i32*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @xhci_configure_endpoint(%struct.usb_device*, i32*, %struct.xhci_endpoint_ext*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @xhci_cmd_set_address(%struct.xhci_softc*, i32, i32, i64) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @XHCI_TRB_2_ERROR_GET(i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32*) #1

declare dso_local i32 @xhci_ctx_get_le32(%struct.xhci_softc*, i32*) #1

declare dso_local i32 @XHCI_SCTX_3_DEV_ADDR_GET(i32) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
