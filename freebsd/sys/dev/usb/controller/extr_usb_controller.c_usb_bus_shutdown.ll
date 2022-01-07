; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i32, %struct.TYPE_2__*, i64, i32*, %struct.usb_device** }
%struct.TYPE_2__ = type { i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*)* }
%struct.usb_device = type { i32 }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@USB_UNCONFIG_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not unconfigure root HUB\0A\00", align 1
@USB_HW_POWER_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_shutdown(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %7 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %8 = bitcast %struct.usb_proc_msg* %7 to %struct.usb_bus_msg*
  %9 = getelementptr inbounds %struct.usb_bus_msg, %struct.usb_bus_msg* %8, i32 0, i32 0
  %10 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  store %struct.usb_bus* %10, %struct.usb_bus** %3, align 8
  %11 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 4
  %13 = load %struct.usb_device**, %struct.usb_device*** %12, align 8
  %14 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %15 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %13, i64 %14
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %4, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = icmp eq %struct.usb_device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %21 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  br label %92

25:                                               ; preds = %19
  %26 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %27 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %26)
  %28 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %29 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_generic_shutdown(i32* %30)
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = call i64 @usbd_enum_lock(%struct.usb_device* %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %36 = call i64 @usbd_set_config_index(%struct.usb_device* %34, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %41 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @device_printf(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %25
  %45 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %46 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %45)
  %47 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %48 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %50 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %52 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %51)
  %53 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %54 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %56, align 8
  %58 = icmp ne i32 (%struct.usb_bus*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %44
  %60 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %61 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %63, align 8
  %65 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %66 = call i32 %64(%struct.usb_bus* %65)
  br label %67

67:                                               ; preds = %59, %44
  %68 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %69 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.usb_bus*, i32)* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %76 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %78, align 8
  %80 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %81 = load i32, i32* @USB_HW_POWER_SHUTDOWN, align 4
  %82 = call i32 %79(%struct.usb_bus* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %88 = call i32 @usbd_enum_unlock(%struct.usb_device* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %91 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %90)
  br label %92

92:                                               ; preds = %89, %24
  ret void
}

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @bus_generic_shutdown(i32*) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i64 @usbd_set_config_index(%struct.usb_device*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
