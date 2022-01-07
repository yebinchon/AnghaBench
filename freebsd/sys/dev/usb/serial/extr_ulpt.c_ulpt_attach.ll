; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ulpt_softc = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i64, i32, i64, i64, i64, i64, i32 }
%struct.usb_config_descriptor = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ulpt lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@UDESC_INTERFACE = common dso_local global i64 0, align 8
@UICLASS_PRINTER = common dso_local global i64 0, align 8
@UISUBCLASS_PRINTER = common dso_local global i64 0, align 8
@UIPROTO_PRINTER_BI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"setting alternate config number: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"could not set alternate config, error=%s\0A\00", align 1
@ulpt_config = common dso_local global i32 0, align 4
@ULPT_N_TRANSFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"using bi-directional mode\0A\00", align 1
@ulpt_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@unlpt_fifo_methods = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UR_GET_DEVICE_ID = common dso_local global i32 0, align 4
@USB_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@USB_SHORT_XFER_OK = common dso_local global i32 0, align 4
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@devinfo = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ulpt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ulpt_softc*, align 8
  %6 = alloca %struct.usb_interface_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.ulpt_softc* @device_get_softc(i32 %13)
  store %struct.ulpt_softc* %14, %struct.ulpt_softc** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_unit(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %22 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ulpt_softc* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_usb_desc(i32 %31)
  %33 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %33, i32 0, i32 1
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = load i32, i32* @MTX_RECURSE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mtx_init(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %37)
  %39 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %39, i32 0, i32 6
  %41 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %41, i32 0, i32 1
  %43 = call i32 @usb_callout_init_mtx(i32* %40, i32* %42, i32 0)
  %44 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %45 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32 %46)
  store %struct.usb_interface_descriptor* %47, %struct.usb_interface_descriptor** %6, align 8
  store i32 255, i32* %10, align 4
  br label %48

48:                                               ; preds = %1, %97
  %49 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %50 = icmp eq %struct.usb_interface_descriptor* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %107

52:                                               ; preds = %48
  %53 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %54 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UDESC_INTERFACE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %60 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %62, 56
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %66 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %69 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %107

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %78 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UICLASS_PRINTER, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %84 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UISUBCLASS_PRINTER, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %90 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UIPROTO_PRINTER_BI, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %108

95:                                               ; preds = %88, %82, %74
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %58, %52
  %98 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %99 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32 %100)
  %102 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %103 = bitcast %struct.usb_interface_descriptor* %102 to i8*
  %104 = call i64 @usb_desc_foreach(%struct.usb_config_descriptor* %101, i8* %103)
  %105 = inttoptr i64 %104 to i8*
  %106 = bitcast i8* %105 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %106, %struct.usb_interface_descriptor** %6, align 8
  br label %48

107:                                              ; preds = %73, %51
  br label %204

108:                                              ; preds = %94
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %115 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @usbd_set_alt_interface_index(i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @usbd_errstr(i32 %123)
  %125 = call i32 @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %204

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %108
  %128 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %129 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %132 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %134 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %137 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ulpt_config, align 4
  %140 = load i32, i32* @ULPT_N_TRANSFER, align 4
  %141 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %142 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %143 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %142, i32 0, i32 1
  %144 = call i32 @usbd_transfer_setup(i32 %135, i32* %9, i32 %138, i32 %139, i32 %140, %struct.ulpt_softc* %141, i32* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %127
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @usbd_errstr(i32 %148)
  %150 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %204

151:                                              ; preds = %127
  %152 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %153 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %157 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %160 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %160, i32 0, i32 1
  %162 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %163 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %162, i32 0, i32 3
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %166 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @UID_ROOT, align 4
  %170 = load i32, i32* @GID_OPERATOR, align 4
  %171 = call i32 @usb_fifo_attach(i32 %158, %struct.ulpt_softc* %159, i32* %161, i32* @ulpt_fifo_methods, i32* %163, i32 %164, i32 -1, i32 %168, i32 %169, i32 %170, i32 420)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %151
  br label %204

175:                                              ; preds = %151
  %176 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %177 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %180 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %181 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %180, i32 0, i32 1
  %182 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %183 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %186 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @UID_ROOT, align 4
  %190 = load i32, i32* @GID_OPERATOR, align 4
  %191 = call i32 @usb_fifo_attach(i32 %178, %struct.ulpt_softc* %179, i32* %181, i32* @unlpt_fifo_methods, i32* %183, i32 %184, i32 -1, i32 %188, i32 %189, i32 %190, i32 420)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %175
  br label %204

195:                                              ; preds = %175
  %196 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %197 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %196, i32 0, i32 1
  %198 = call i32 @mtx_lock(i32* %197)
  %199 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %200 = call i32 @ulpt_watchdog(%struct.ulpt_softc* %199)
  %201 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %202 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %201, i32 0, i32 1
  %203 = call i32 @mtx_unlock(i32* %202)
  store i32 0, i32* %2, align 4
  br label %208

204:                                              ; preds = %194, %174, %147, %122, %107
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @ulpt_detach(i32 %205)
  %207 = load i32, i32* @ENOMEM, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %204, %195
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ulpt_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.ulpt_softc*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32) #1

declare dso_local i64 @usb_desc_foreach(%struct.usb_config_descriptor*, i8*) #1

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_set_alt_interface_index(i32, i32, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ulpt_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.ulpt_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ulpt_watchdog(%struct.ulpt_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ulpt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
