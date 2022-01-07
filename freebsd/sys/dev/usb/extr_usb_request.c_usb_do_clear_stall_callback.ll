; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usb_do_clear_stall_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usb_do_clear_stall_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, i32, %struct.usb_endpoint*, i32, %struct.usb_endpoint* }
%struct.usb_endpoint = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32, i32 }

@USB_MAX_EP_STREAMS = common dso_local global i64 0, align 8
@UT_WRITE_ENDPOINT = common dso_local global i32 0, align 4
@UR_CLEAR_FEATURE = common dso_local global i32 0, align 4
@UF_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Clear stall failed.\0A\00", align 1
@usb_no_cs_fail = common dso_local global i32 0, align 4
@USB_CS_RESET_LIMIT = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Trying to re-enumerate.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_do_clear_stall_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device_request, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint*, align 8
  %8 = alloca %struct.usb_endpoint*, align 8
  %9 = alloca %struct.usb_endpoint*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %6, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USB_BUS_LOCK(i32 %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 2
  %23 = load %struct.usb_endpoint*, %struct.usb_endpoint** %22, align 8
  store %struct.usb_endpoint* %23, %struct.usb_endpoint** %7, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 4
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %25, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i64 %30
  store %struct.usb_endpoint* %31, %struct.usb_endpoint** %8, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 4
  %34 = load %struct.usb_endpoint*, %struct.usb_endpoint** %33, align 8
  store %struct.usb_endpoint* %34, %struct.usb_endpoint** %9, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = call i32 @USB_GET_STATE(%struct.usb_xfer* %38)
  switch i32 %39, label %161 [
    i32 128, label %40
    i32 129, label %90
  ]

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %170, %40
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 3
  store i32 0, i32* %43, align 8
  %44 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %45 = icmp eq %struct.usb_endpoint* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %91

47:                                               ; preds = %41
  %48 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %59 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %58, i32 0, i32 3
  store i32 0, i32* %59, align 8
  %60 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %61 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %64 = call i32 @usbd_clear_stall_locked(%struct.usb_device* %62, %struct.usb_endpoint* %63)
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %83, %57
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @USB_MAX_EP_STREAMS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usb_command_wrapper(%struct.TYPE_6__* %74, i32 %81)
  br label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  br label %65

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %52, %47
  %88 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %89 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %88, i32 1
  store %struct.usb_endpoint* %89, %struct.usb_endpoint** %7, align 8
  br label %90

90:                                               ; preds = %2, %87
  br label %91

91:                                               ; preds = %204, %177, %156, %90, %46
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %205

95:                                               ; preds = %91
  %96 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %97 = load %struct.usb_endpoint*, %struct.usb_endpoint** %9, align 8
  %98 = icmp ult %struct.usb_endpoint* %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %101 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %102 = icmp uge %struct.usb_endpoint* %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95
  %104 = load %struct.usb_endpoint*, %struct.usb_endpoint** %9, align 8
  store %struct.usb_endpoint* %104, %struct.usb_endpoint** %7, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %107 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %156

110:                                              ; preds = %105
  %111 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %112 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %156

115:                                              ; preds = %110
  %116 = load i32, i32* @UT_WRITE_ENDPOINT, align 4
  %117 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 4
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* @UR_CLEAR_FEATURE, align 4
  %119 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UF_ENDPOINT_HALT, align 4
  %123 = call i32 @USETW(i32 %121, i32 %122)
  %124 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %125 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %128, i32* %131, align 4
  %132 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @USETW(i32 %136, i32 0)
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %139 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @usbd_copy_in(i32 %140, i32 0, %struct.usb_device_request* %5, i32 32)
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %143 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %142, i32 0, i32 32)
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %147 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @USB_BUS_UNLOCK(i32 %148)
  %150 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %151 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %150)
  %152 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @USB_BUS_LOCK(i32 %154)
  br label %205

156:                                              ; preds = %110, %105
  %157 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %158 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %157, i32 1
  store %struct.usb_endpoint* %158, %struct.usb_endpoint** %7, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %11, align 4
  br label %91

161:                                              ; preds = %2
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %205

166:                                              ; preds = %161
  %167 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* @usb_no_cs_fail, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %41

171:                                              ; preds = %166
  %172 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @USB_CS_RESET_LIMIT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %91

178:                                              ; preds = %171
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @USB_ERR_TIMEOUT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i32, i32* @USB_CS_RESET_LIMIT, align 4
  %184 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %187 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %188 = call i32 @usbd_start_re_enumerate(%struct.usb_device* %187)
  br label %204

189:                                              ; preds = %178
  %190 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %191 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @USB_CS_RESET_LIMIT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %189
  %200 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %201 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %202 = call i32 @usbd_start_re_enumerate(%struct.usb_device* %201)
  br label %203

203:                                              ; preds = %199, %189
  br label %204

204:                                              ; preds = %203, %182
  br label %91

205:                                              ; preds = %165, %115, %94
  %206 = load %struct.usb_endpoint*, %struct.usb_endpoint** %7, align 8
  %207 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %208 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %207, i32 0, i32 2
  store %struct.usb_endpoint* %206, %struct.usb_endpoint** %208, align 8
  %209 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @USB_BUS_UNLOCK(i32 %211)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_clear_stall_locked(%struct.usb_device*, %struct.usb_endpoint*) #1

declare dso_local i32 @usb_command_wrapper(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_start_re_enumerate(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
