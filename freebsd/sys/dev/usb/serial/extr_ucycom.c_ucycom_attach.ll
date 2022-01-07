; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ucycom_softc = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ucycom\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unsupported device\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Cypress CY7C%X USB to RS232 bridge\0A\00", align 1
@M_USBDEV = common dso_local global i32 0, align 4
@UCYCOM_IFACE_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to get report descriptor: %s\0A\00", align 1
@hid_feature = common dso_local global i32 0, align 4
@hid_input = common dso_local global i32 0, align 4
@hid_output = common dso_local global i32 0, align 4
@UCYCOM_MAX_IOLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid report size i=%d, o=%d, f=%d, max=%d\0A\00", align 1
@ucycom_config = common dso_local global i32 0, align 4
@UCYCOM_N_TRANSFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@ucycom_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ucycom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucycom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ucycom_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usb_attach_arg* @device_get_ivars(i32 %10)
  store %struct.usb_attach_arg* %11, %struct.usb_attach_arg** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.ucycom_softc* @device_get_softc(i32 %12)
  store %struct.ucycom_softc* %13, %struct.ucycom_softc** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %21, i32 0, i32 5
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %25, i32 0, i32 4
  %27 = call i32 @ucom_ref(i32* %26)
  %28 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %30 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %29)
  %31 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %181

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %47 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @M_USBDEV, align 4
  %50 = load i32, i32* @UCYCOM_IFACE_INDEX, align 4
  %51 = call i64 @usbd_req_get_hid_desc(i32 %48, i32* null, i8** %6, i32* %8, i32 %49, i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @usbd_errstr(i64 %56)
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %181

59:                                               ; preds = %40
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @hid_feature, align 4
  %63 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %63, i32 0, i32 11
  %65 = call i8* @hid_report_size(i8* %60, i32 %61, i32 %62, i32* %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @hid_input, align 4
  %72 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %72, i32 0, i32 10
  %74 = call i8* @hid_report_size(i8* %69, i32 %70, i32 %71, i32* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @hid_output, align 4
  %81 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %81, i32 0, i32 9
  %83 = call i8* @hid_report_size(i8* %78, i32 %79, i32 %80, i32* %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %88 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @UCYCOM_MAX_IOLEN, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %119, label %92

92:                                               ; preds = %59
  %93 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %119, label %97

97:                                               ; preds = %92
  %98 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @UCYCOM_MAX_IOLEN, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %119, label %103

103:                                              ; preds = %97
  %104 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %105 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %119, label %108

108:                                              ; preds = %103
  %109 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %110 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @UCYCOM_MAX_IOLEN, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %116 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 5
  br i1 %118, label %119, label %132

119:                                              ; preds = %114, %108, %103, %97, %92, %59
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %122 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %125 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %128 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @UCYCOM_MAX_IOLEN, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %126, i32 %129, i32 %130)
  br label %181

132:                                              ; preds = %114
  %133 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %134 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %138 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @UCYCOM_IFACE_INDEX, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %141 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %144 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ucycom_config, align 4
  %147 = load i32, i32* @UCYCOM_N_TRANSFER, align 4
  %148 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %149 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %150 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %149, i32 0, i32 5
  %151 = call i64 @usbd_transfer_setup(i32 %142, i32* %9, i32 %145, i32 %146, i32 %147, %struct.ucycom_softc* %148, i32* %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %132
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %181

157:                                              ; preds = %132
  %158 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %159 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %158, i32 0, i32 4
  %160 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %160, i32 0, i32 6
  %162 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %163 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %164 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %163, i32 0, i32 5
  %165 = call i64 @ucom_attach(i32* %159, i32* %161, i32 1, %struct.ucycom_softc* %162, i32* @ucycom_callback, i32* %164)
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %7, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %181

169:                                              ; preds = %157
  %170 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %171 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %170, i32 0, i32 4
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @ucom_set_pnpinfo_usb(i32* %171, i32 %172)
  %174 = load i8*, i8** %6, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* @M_USBDEV, align 4
  %179 = call i32 @free(i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %169
  store i32 0, i32* %2, align 4
  br label %192

181:                                              ; preds = %168, %154, %119, %54, %37
  %182 = load i8*, i8** %6, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* @M_USBDEV, align 4
  %187 = call i32 @free(i8* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @ucycom_detach(i32 %189)
  %191 = load i32, i32* @ENXIO, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %188, %180
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ucycom_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i8* @hid_report_size(i8*, i32, i32, i32*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ucycom_softc*, i32*) #1

declare dso_local i64 @ucom_attach(i32*, i32*, i32, %struct.ucycom_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ucycom_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
