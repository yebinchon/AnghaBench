; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_dev_resume_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_dev_resume_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.usb_device*, %struct.usb_bus* }
%struct.TYPE_5__ = type { i64*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.usb_bus = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.usb_bus*)*, i32 (%struct.usb_device*)* }

@.str = private unnamed_addr constant [9 x i8] c"udev=%p\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"remote wakeup is not set!\0A\00", align 1
@UHF_PORT_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Resuming port failed\0A\00", align 1
@UPS_PORT_LS_U0 = common dso_local global i32 0, align 4
@usb_port_resume_delay = common dso_local global i32 0, align 4
@UF_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Clearing device remote wakeup failed: %s\0A\00", align 1
@UE_BULK = common dso_local global i64 0, align 8
@UE_CONTROL = common dso_local global i64 0, align 8
@UE_INTERRUPT = common dso_local global i64 0, align 8
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @usb_dev_resume_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dev_resume_peer(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = icmp eq %struct.usb_device* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %139

8:                                                ; preds = %1
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %139

15:                                               ; preds = %8
  %16 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 3
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  %19 = icmp eq %struct.usb_device* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %139

21:                                               ; preds = %15
  %22 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %23 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_MODE_DEVICE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %139

38:                                               ; preds = %30, %21
  %39 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 4
  %41 = load %struct.usb_bus*, %struct.usb_bus** %40, align 8
  store %struct.usb_bus* %41, %struct.usb_bus** %3, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 3
  %44 = load %struct.usb_device*, %struct.usb_device** %43, align 8
  call void @usb_dev_resume_peer(%struct.usb_device* %44)
  %45 = call i32 @USB_MS_TO_TICKS(i32 20)
  %46 = call i32 @usb_pause_mtx(i32* null, i32 %45)
  %47 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %48 = call i64 @usb_device_20_compatible(%struct.usb_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 3
  %53 = load %struct.usb_device*, %struct.usb_device** %52, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @UHF_PORT_SUSPEND, align 4
  %58 = call i32 @usbd_req_clear_port_feature(%struct.usb_device* %53, i32* null, i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %139

63:                                               ; preds = %50
  br label %78

64:                                               ; preds = %38
  %65 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 3
  %67 = load %struct.usb_device*, %struct.usb_device** %66, align 8
  %68 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @UPS_PORT_LS_U0, align 4
  %72 = call i32 @usbd_req_set_port_link_state(%struct.usb_device* %67, i32* null, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %139

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* @usb_port_resume_delay, align 4
  %80 = call i32 @USB_MS_TO_TICKS(i32 %79)
  %81 = call i32 @usb_pause_mtx(i32* null, i32 %80)
  %82 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %83 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %85, align 8
  %87 = icmp ne i32 (%struct.usb_device*)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %90 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %92, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %95 = call i32 %93(%struct.usb_device* %94)
  br label %96

96:                                               ; preds = %88, %78
  %97 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %98 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %97)
  %99 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %103 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %102)
  %104 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %105 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %107, align 8
  %109 = icmp ne i32 (%struct.usb_bus*)* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %96
  %111 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %112 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %114, align 8
  %116 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %117 = call i32 %115(%struct.usb_bus* %116)
  br label %118

118:                                              ; preds = %110, %96
  %119 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %120 = call i32 @usbd_sr_lock(%struct.usb_device* %119)
  %121 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %122 = call i32 @usb_suspend_resume(%struct.usb_device* %121, i32 0)
  store i32 %122, i32* %4, align 4
  %123 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %124 = call i32 @usbd_sr_unlock(%struct.usb_device* %123)
  %125 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %126 = call i64 @usb_peer_can_wakeup(%struct.usb_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %130 = load i32, i32* @UF_DEVICE_REMOTE_WAKEUP, align 4
  %131 = call i32 @usbd_req_clear_device_feature(%struct.usb_device* %129, i32* null, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @usbd_errstr(i32 %135)
  %137 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %7, %14, %20, %36, %61, %75, %138, %118
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i64 @usb_device_20_compatible(%struct.usb_device*) #1

declare dso_local i32 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_req_set_port_link_state(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @usbd_sr_lock(%struct.usb_device*) #1

declare dso_local i32 @usb_suspend_resume(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_sr_unlock(%struct.usb_device*) #1

declare dso_local i64 @usb_peer_can_wakeup(%struct.usb_device*) #1

declare dso_local i32 @usbd_req_clear_device_feature(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
