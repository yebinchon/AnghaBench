; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_suspend_resume_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_suspend_resume_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { %struct.TYPE_5__, %struct.usb_device* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"port %d\0A\00", align 1
@UHF_C_PORT_SUSPEND = common dso_local global i32 0, align 4
@UHF_C_PORT_LINK_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"clearing suspend failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"reading port status failed.\0A\00", align 1
@UPS_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"suspended=%u\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uhub_softc*, i32)* @uhub_suspend_resume_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uhub_suspend_resume_port(%struct.uhub_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uhub_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.uhub_softc* %0, %struct.uhub_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.uhub_softc*, %struct.uhub_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = call %struct.usb_device* @usb_bus_port_get_device(i32 %16, i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %5, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = call i64 @usb_device_20_compatible(%struct.usb_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @UHF_C_PORT_SUSPEND, align 4
  %33 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %30, i32* null, i32 %31, i32 %32)
  store i64 %33, i64* %8, align 8
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @UHF_C_PORT_LINK_STATE, align 4
  %38 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %35, i32* null, i32 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %104

44:                                               ; preds = %39
  %45 = load %struct.uhub_softc*, %struct.uhub_softc** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @uhub_read_port_status(%struct.uhub_softc* %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %104

52:                                               ; preds = %44
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = call i64 @usb_device_20_compatible(%struct.usb_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.uhub_softc*, %struct.uhub_softc** %3, align 8
  %58 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UPS_SUSPEND, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %80

67:                                               ; preds = %52
  %68 = load %struct.uhub_softc*, %struct.uhub_softc** %3, align 8
  %69 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @UPS_PORT_LINK_STATE_GET(i32 %71)
  switch i32 %72, label %78 [
    i32 128, label %73
    i32 129, label %74
  ]

73:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  br label %79

74:                                               ; preds = %67
  %75 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @usbd_req_warm_reset_port(%struct.usb_device* %75, i32* null, i32 %76)
  store i32 0, i32* %7, align 4
  br label %79

78:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %74, %73
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %84 = icmp ne %struct.usb_device* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %90 = call i32 @usb_dev_resume_peer(%struct.usb_device* %89)
  br label %102

91:                                               ; preds = %85
  %92 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @USB_MODE_DEVICE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %100 = call i32 @usb_dev_suspend_peer(%struct.usb_device* %99)
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %50, %42
  %105 = load i64, i64* %8, align 8
  ret i64 %105
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_device* @usb_bus_port_get_device(i32, i32) #1

declare dso_local i64 @usb_device_20_compatible(%struct.usb_device*) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i64 @uhub_read_port_status(%struct.uhub_softc*, i32) #1

declare dso_local i32 @UPS_PORT_LINK_STATE_GET(i32) #1

declare dso_local i32 @usbd_req_warm_reset_port(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @usb_dev_resume_peer(%struct.usb_device*) #1

declare dso_local i32 @usb_dev_suspend_peer(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
