; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_command_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_command_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, %union.ccb*, %struct.usb_device_request*, i32 }
%struct.umass_softc.0 = type opaque
%union.ccb = type { i32 }
%struct.usb_device_request = type { i32*, i32*, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@DIR_NONE = common dso_local global i32 0, align 4
@DIR_IN = common dso_local global i32 0, align 4
@UMASS_T_CBI_DATA_READ = common dso_local global i32 0, align 4
@UMASS_T_CBI_DATA_WRITE = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_CBI_ADSC = common dso_local global i32 0, align 4
@UDMASS_CBI = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@STATUS_CMD_UNKNOWN = common dso_local global i32 0, align 4
@UMASS_T_CBI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_cbi_command_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_cbi_command_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.usb_device_request, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.umass_softc* %10, %struct.umass_softc** %5, align 8
  %11 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %12 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load %union.ccb*, %union.ccb** %13, align 8
  store %union.ccb* %14, %union.ccb** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %121 [
    i32 128, label %17
    i32 129, label %43
  ]

17:                                               ; preds = %2
  %18 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %19 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DIR_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %26 = call i32 @umass_cbi_start_status(%struct.umass_softc* %25)
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %29 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %30 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DIR_IN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @UMASS_T_CBI_DATA_READ, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @UMASS_T_CBI_DATA_WRITE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @umass_transfer_start(%struct.umass_softc* %28, i32 %40)
  br label %42

42:                                               ; preds = %39, %24
  br label %156

43:                                               ; preds = %2
  %44 = load %union.ccb*, %union.ccb** %6, align 8
  %45 = icmp ne %union.ccb* %44, null
  br i1 %45, label %46, label %120

46:                                               ; preds = %43
  %47 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %48 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @UR_CBI_ADSC, align 4
  %50 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @USETW(i32 %52, i32 0)
  %54 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %55 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %64 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %74 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %73, i32 0)
  store %struct.usb_page_cache* %74, %struct.usb_page_cache** %8, align 8
  %75 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %76 = call i32 @usbd_copy_in(%struct.usb_page_cache* %75, i32 0, %struct.usb_device_request* %7, i32 32)
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %78 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %77, i32 1)
  store %struct.usb_page_cache* %78, %struct.usb_page_cache** %8, align 8
  %79 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %80 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %81 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load %struct.usb_device_request*, %struct.usb_device_request** %82, align 8
  %84 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %85 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @usbd_copy_in(%struct.usb_page_cache* %79, i32 0, %struct.usb_device_request* %83, i32 %87)
  %89 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %90 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %89, i32 0, i32 32)
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %93 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %91, i32 1, i32 %95)
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %98 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %99 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 2, i32 1
  %105 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %97, i32 %104)
  %106 = load i32, i32* @UDMASS_CBI, align 4
  %107 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %108 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %109 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load %struct.usb_device_request*, %struct.usb_device_request** %110, align 8
  %112 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %113 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @umass_cbi_dump_cmd(%struct.umass_softc* %107, %struct.usb_device_request* %111, i32 %115)
  %117 = call i32 @DIF(i32 %106, i32 %116)
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %118)
  br label %120

120:                                              ; preds = %46, %43
  br label %156

121:                                              ; preds = %2
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @USB_ERR_STALLED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %127 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)** %128, align 8
  %130 = icmp eq i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)* %129, bitcast (i32 (%struct.umass_softc*, %union.ccb*, i32, i32)* @umass_cam_cb to i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*)
  br i1 %130, label %131, label %148

131:                                              ; preds = %125, %121
  %132 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %133 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store %union.ccb* null, %union.ccb** %134, align 8
  %135 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %136 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)** %137, align 8
  %139 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %140 = bitcast %struct.umass_softc* %139 to %struct.umass_softc.0*
  %141 = load %union.ccb*, %union.ccb** %6, align 8
  %142 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %143 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @STATUS_CMD_UNKNOWN, align 4
  %147 = call i32 %138(%struct.umass_softc.0* %140, %union.ccb* %141, i32 %145, i32 %146)
  br label %155

148:                                              ; preds = %125
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @umass_tr_error(%struct.usb_xfer* %149, i32 %150)
  %152 = load i32, i32* @UMASS_T_CBI_COMMAND, align 4
  %153 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %154 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %131
  br label %156

156:                                              ; preds = %155, %120, %42
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @umass_cbi_start_status(%struct.umass_softc*) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @DIF(i32, i32) #1

declare dso_local i32 @umass_cbi_dump_cmd(%struct.umass_softc*, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @umass_cam_cb(%struct.umass_softc*, %union.ccb*, i32, i32) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
