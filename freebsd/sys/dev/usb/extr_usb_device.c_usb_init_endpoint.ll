; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_init_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_init_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_bus_methods* }
%struct.usb_bus_methods = type { i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_endpoint_ss_comp_descriptor = type { i32 }
%struct.usb_endpoint = type { i32*, %struct.TYPE_4__*, i32, %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.TYPE_4__ = type { i32*, i32 }

@USB_MAX_EP_STREAMS = common dso_local global i64 0, align 8
@usbd_pipe_start = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_BULK = common dso_local global i32 0, align 4
@USB_EP_MODE_STREAMS = common dso_local global i32 0, align 4
@USB_EP_MODE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, i32, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint*)* @usb_init_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_init_endpoint(%struct.usb_device* %0, i32 %1, %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_ss_comp_descriptor* %3, %struct.usb_endpoint* %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_ss_comp_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint*, align 8
  %11 = alloca %struct.usb_bus_methods*, align 8
  %12 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_endpoint_ss_comp_descriptor* %3, %struct.usb_endpoint_ss_comp_descriptor** %9, align 8
  store %struct.usb_endpoint* %4, %struct.usb_endpoint** %10, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %16, align 8
  store %struct.usb_bus_methods* %17, %struct.usb_bus_methods** %11, align 8
  %18 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %11, align 8
  %19 = getelementptr inbounds %struct.usb_bus_methods, %struct.usb_bus_methods* %18, i32 0, i32 1
  %20 = load i32 (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)** %19, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %23 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %24 = call i32 %20(%struct.usb_device* %21, %struct.usb_endpoint_descriptor* %22, %struct.usb_endpoint* %23)
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i32 0, i32 4
  store %struct.usb_endpoint_descriptor* %25, %struct.usb_endpoint_descriptor** %27, align 8
  %28 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %9, align 8
  %29 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %30 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %29, i32 0, i32 3
  store %struct.usb_endpoint_ss_comp_descriptor* %28, %struct.usb_endpoint_ss_comp_descriptor** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %33 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %52, %5
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @USB_MAX_EP_STREAMS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %40 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @TAILQ_INIT(i32* %44)
  %46 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %47 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* @usbd_pipe_start, i32** %51, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %57 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %114

61:                                               ; preds = %55
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @USB_SPEED_SUPER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %9, align 8
  %69 = icmp ne %struct.usb_endpoint_ss_comp_descriptor* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UE_XFERTYPE, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @UE_BULK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.usb_endpoint_ss_comp_descriptor*, %struct.usb_endpoint_ss_comp_descriptor** %9, align 8
  %80 = getelementptr inbounds %struct.usb_endpoint_ss_comp_descriptor, %struct.usb_endpoint_ss_comp_descriptor* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @UE_GET_BULK_STREAMS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %86 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %87 = load i32, i32* @USB_EP_MODE_STREAMS, align 4
  %88 = call i32 @usbd_set_endpoint_mode(%struct.usb_device* %85, %struct.usb_endpoint* %86, i32 %87)
  br label %94

89:                                               ; preds = %78, %70, %67, %61
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %92 = load i32, i32* @USB_EP_MODE_DEFAULT, align 4
  %93 = call i32 @usbd_set_endpoint_mode(%struct.usb_device* %90, %struct.usb_endpoint* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %11, align 8
  %96 = getelementptr inbounds %struct.usb_bus_methods, %struct.usb_bus_methods* %95, i32 0, i32 0
  %97 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %96, align 8
  %98 = icmp ne i32 (%struct.usb_device*, %struct.usb_endpoint*)* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = call i32 @USB_BUS_LOCK(%struct.TYPE_5__* %102)
  %104 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %11, align 8
  %105 = getelementptr inbounds %struct.usb_bus_methods, %struct.usb_bus_methods* %104, i32 0, i32 0
  %106 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %105, align 8
  %107 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %108 = load %struct.usb_endpoint*, %struct.usb_endpoint** %10, align 8
  %109 = call i32 %106(%struct.usb_device* %107, %struct.usb_endpoint* %108)
  %110 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_5__* %112)
  br label %114

114:                                              ; preds = %60, %99, %94
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @UE_GET_BULK_STREAMS(i32) #1

declare dso_local i32 @usbd_set_endpoint_mode(%struct.usb_device*, %struct.usb_endpoint*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
