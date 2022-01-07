; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i32, %struct.TYPE_2__*, i64, i32*, %struct.usb_device** }
%struct.TYPE_2__ = type { i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*)* }
%struct.usb_device = type { i32 }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@USB_UNCONFIG_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not unconfigure root HUB\0A\00", align 1
@USB_HW_POWER_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_suspend(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %9 = bitcast %struct.usb_proc_msg* %8 to %struct.usb_bus_msg*
  %10 = getelementptr inbounds %struct.usb_bus_msg, %struct.usb_bus_msg* %9, i32 0, i32 0
  %11 = load %struct.usb_bus*, %struct.usb_bus** %10, align 8
  store %struct.usb_bus* %11, %struct.usb_bus** %3, align 8
  %12 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %12, i32 0, i32 4
  %14 = load %struct.usb_device**, %struct.usb_device*** %13, align 8
  %15 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %16 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %14, i64 %15
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %4, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = icmp eq %struct.usb_device* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %22 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %93

26:                                               ; preds = %20
  %27 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %28 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %27)
  %29 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %30 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_generic_shutdown(i32* %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = call i64 @usbd_enum_lock(%struct.usb_device* %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %37 = call i64 @usbd_set_config_index(%struct.usb_device* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %42 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @device_printf(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %26
  %46 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %47 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %46)
  %48 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %49 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %51 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %53 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %52)
  %54 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %55 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %57, align 8
  %59 = icmp ne i32 (%struct.usb_bus*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %62 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %64, align 8
  %66 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %67 = call i32 %65(%struct.usb_bus* %66)
  br label %68

68:                                               ; preds = %60, %45
  %69 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %70 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.usb_bus*, i32)* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %77 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %79, align 8
  %81 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %82 = load i32, i32* @USB_HW_POWER_SUSPEND, align 4
  %83 = call i32 %80(%struct.usb_bus* %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %68
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %89 = call i32 @usbd_enum_unlock(%struct.usb_device* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %92 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %91)
  br label %93

93:                                               ; preds = %90, %25
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

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
