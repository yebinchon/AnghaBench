; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.umct_softc = type { i32, i32, i32, i32, i32, %struct.usb_xfer**, i32, i32, i32 }
%struct.usb_xfer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"umct\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UMCT_IFACE_INDEX = common dso_local global i32 0, align 4
@umct_config = common dso_local global i32 0, align 4
@UMCT_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@UMCT_BULK_DT_RD = common dso_local global i64 0, align 8
@UMCT_INTR_DT_RD = common dso_local global i64 0, align 8
@UMCT_BULK_DT_WR = common dso_local global i64 0, align 8
@USB_PRODUCT_MCT_SITECOM_USB232 = common dso_local global i64 0, align 8
@umct_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umct_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umct_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.umct_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_xfer*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usb_attach_arg* @device_get_ivars(i32 %10)
  store %struct.usb_attach_arg* %11, %struct.usb_attach_arg** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.umct_softc* @device_get_softc(i32 %12)
  store %struct.umct_softc* %13, %struct.umct_softc** %5, align 8
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %18 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_unit(i32 %19)
  %21 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %22 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_set_usb_desc(i32 %23)
  %25 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %26 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %25, i32 0, i32 3
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %30 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %29, i32 0, i32 2
  %31 = call i32 @ucom_ref(i32* %30)
  %32 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %33 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %37 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @UMCT_IFACE_INDEX, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %40 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %43 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %42, i32 0, i32 5
  %44 = load %struct.usb_xfer**, %struct.usb_xfer*** %43, align 8
  %45 = load i32, i32* @umct_config, align 4
  %46 = load i32, i32* @UMCT_N_TRANSFER, align 4
  %47 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %48 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %49 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %48, i32 0, i32 3
  %50 = call i64 @usbd_transfer_setup(i32 %41, i32* %8, %struct.usb_xfer** %44, i32 %45, i32 %46, %struct.umct_softc* %47, i32* %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %134

56:                                               ; preds = %1
  %57 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %58 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %57, i32 0, i32 5
  %59 = load %struct.usb_xfer**, %struct.usb_xfer*** %58, align 8
  %60 = load i64, i64* @UMCT_BULK_DT_RD, align 8
  %61 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %59, i64 %60
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %61, align 8
  %63 = call i32 @usbd_xfer_max_framelen(%struct.usb_xfer* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %92

66:                                               ; preds = %56
  %67 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %68 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %67, i32 0, i32 5
  %69 = load %struct.usb_xfer**, %struct.usb_xfer*** %68, align 8
  %70 = load i64, i64* @UMCT_INTR_DT_RD, align 8
  %71 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %69, i64 %70
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %71, align 8
  store %struct.usb_xfer* %72, %struct.usb_xfer** %9, align 8
  %73 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %74 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %73, i32 0, i32 5
  %75 = load %struct.usb_xfer**, %struct.usb_xfer*** %74, align 8
  %76 = load i64, i64* @UMCT_BULK_DT_RD, align 8
  %77 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %75, i64 %76
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %77, align 8
  %79 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %80 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %79, i32 0, i32 5
  %81 = load %struct.usb_xfer**, %struct.usb_xfer*** %80, align 8
  %82 = load i64, i64* @UMCT_INTR_DT_RD, align 8
  %83 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %81, i64 %82
  store %struct.usb_xfer* %78, %struct.usb_xfer** %83, align 8
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %9, align 8
  %85 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %86 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %85, i32 0, i32 5
  %87 = load %struct.usb_xfer**, %struct.usb_xfer*** %86, align 8
  %88 = load i64, i64* @UMCT_BULK_DT_RD, align 8
  %89 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %87, i64 %88
  store %struct.usb_xfer* %84, %struct.usb_xfer** %89, align 8
  %90 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %91 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %66, %56
  %93 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %94 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %93, i32 0, i32 5
  %95 = load %struct.usb_xfer**, %struct.usb_xfer*** %94, align 8
  %96 = load i64, i64* @UMCT_BULK_DT_WR, align 8
  %97 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %95, i64 %96
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %97, align 8
  %99 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %98)
  %100 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %101 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %103 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @USB_PRODUCT_MCT_SITECOM_USB232, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %92
  %109 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %110 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 16
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %115 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %114, i32 0, i32 1
  store i32 16, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %92
  %118 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %119 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %118, i32 0, i32 2
  %120 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %121 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %120, i32 0, i32 4
  %122 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %123 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %124 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %123, i32 0, i32 3
  %125 = call i64 @ucom_attach(i32* %119, i32* %121, i32 1, %struct.umct_softc* %122, i32* @umct_callback, i32* %124)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %134

129:                                              ; preds = %117
  %130 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %131 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @ucom_set_pnpinfo_usb(i32* %131, i32 %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %128, %53
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @umct_detach(i32 %135)
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.umct_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, %struct.usb_xfer**, i32, i32, %struct.umct_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbd_xfer_max_framelen(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i64 @ucom_attach(i32*, i32*, i32, %struct.umct_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @umct_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
