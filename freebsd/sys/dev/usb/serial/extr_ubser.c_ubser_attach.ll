; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ubser_softc = type { i64, i64, i32, i32*, i32, %struct.TYPE_4__*, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ubser\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UT_READ_VENDOR_INTERFACE = common dso_local global i32 0, align 4
@VENDOR_GET_NUMSER = common dso_local global i32 0, align 4
@USB_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to get number of serial ports: %s\0A\00", align 1
@UBSER_UNIT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"found %i serials\0A\00", align 1
@ubser_config = common dso_local global i32 0, align 4
@UBSER_N_TRANSFER = common dso_local global i32 0, align 4
@UBSER_BULK_DT_WR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid tx_size\0A\00", align 1
@ubser_callback = common dso_local global i32 0, align 4
@UBSER_BULK_DT_RD = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubser_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubser_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ubser_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ubser_softc* @device_get_softc(i32 %11)
  store %struct.ubser_softc* %12, %struct.ubser_softc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_set_usb_desc(i32 %13)
  %15 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %15, i32 0, i32 2
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  %19 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %19, i32 0, i32 4
  %21 = call i32 @ucom_ref(i32* %20)
  %22 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %23 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @UT_READ_VENDOR_INTERFACE, align 4
  %40 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @VENDOR_GET_NUMSER, align 4
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @USETW(i32 %44, i32 0)
  %46 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %48, i64* %51, align 8
  %52 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @USETW(i32 %56, i32 1)
  %58 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %59 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %62 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %61, i32 0, i32 0
  %63 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %64 = call i32 @usbd_do_request_flags(i32 %60, i32* null, %struct.usb_device_request* %6, i64* %62, i32 0, i32* null, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %1
  %68 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %1
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @usbd_errstr(i32 %74)
  %76 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %192

77:                                               ; preds = %67
  %78 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %79 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UBSER_UNIT_MAX, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* @UBSER_UNIT_MAX, align 8
  %85 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %94 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %96, i32 0, i32 6
  %98 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ubser_config, align 4
  %102 = load i32, i32* @UBSER_N_TRANSFER, align 4
  %103 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %104 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %105 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %104, i32 0, i32 2
  %106 = call i32 @usbd_transfer_setup(i32 %95, i32* %97, i32* %100, i32 %101, i32 %102, %struct.ubser_softc* %103, i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  br label %192

110:                                              ; preds = %87
  %111 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %112 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @UBSER_BULK_DT_WR, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @usbd_xfer_max_len(i32 %116)
  %118 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %119 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %121 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %192

126:                                              ; preds = %110
  store i64 0, i64* %7, align 8
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %130 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %136 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %135, i32 0, i32 5
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i64 %134, i64* %140, align 8
  br label %141

141:                                              ; preds = %133
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %7, align 8
  br label %127

144:                                              ; preds = %127
  %145 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %146 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %145, i32 0, i32 4
  %147 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %148 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %151 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %154 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %155 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %154, i32 0, i32 2
  %156 = call i32 @ucom_attach(i32* %146, %struct.TYPE_4__* %149, i64 %152, %struct.ubser_softc* %153, i32* @ubser_callback, i32* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %144
  br label %192

160:                                              ; preds = %144
  %161 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %162 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %161, i32 0, i32 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @ucom_set_pnpinfo_usb(i32* %162, i32 %163)
  %165 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %166 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %165, i32 0, i32 2
  %167 = call i32 @mtx_lock(i32* %166)
  %168 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %169 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @UBSER_BULK_DT_WR, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @usbd_xfer_set_stall(i32 %173)
  %175 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %176 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @UBSER_BULK_DT_RD, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @usbd_xfer_set_stall(i32 %180)
  %182 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %183 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @UBSER_BULK_DT_RD, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @usbd_transfer_start(i32 %187)
  %189 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %190 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %189, i32 0, i32 2
  %191 = call i32 @mtx_unlock(i32* %190)
  store i32 0, i32* %2, align 4
  br label %196

192:                                              ; preds = %159, %124, %109, %72
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @ubser_detach(i32 %193)
  %195 = load i32, i32* @ENXIO, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %192, %160
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ubser_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i64*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.ubser_softc*, i32*) #1

declare dso_local i64 @usbd_xfer_max_len(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ucom_attach(i32*, %struct.TYPE_4__*, i64, %struct.ubser_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ubser_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
