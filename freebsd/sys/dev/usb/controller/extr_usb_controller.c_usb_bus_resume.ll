; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i32, i32*, %struct.TYPE_2__*, i64, %struct.usb_device** }
%struct.TYPE_2__ = type { i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*, i32)* }
%struct.usb_device = type { i32 }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@USB_HW_POWER_NON_ROOT_HUB = common dso_local global i32 0, align 4
@USB_HW_POWER_RESUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not configure root HUB\0A\00", align 1
@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not probe and attach root HUB\0A\00", align 1
@usb_take_controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_resume(%struct.usb_proc_msg* %0) #0 {
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
  %22 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %113

26:                                               ; preds = %20
  %27 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %28 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = call i64 @usbd_enum_lock(%struct.usb_device* %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %32 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @device_get_parent(i32* %33)
  %35 = call i32 @USB_TAKE_CONTROLLER(i32 %34)
  %36 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %37 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %36)
  %38 = load i32, i32* @USB_HW_POWER_CONTROL, align 4
  %39 = load i32, i32* @USB_HW_POWER_BULK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_HW_POWER_INTERRUPT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_HW_POWER_ISOC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @USB_HW_POWER_NON_ROOT_HUB, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %48 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %50 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %52 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %51)
  %53 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %54 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.usb_bus*, i32)* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %26
  %60 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %61 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.usb_bus*, i32)*, i32 (%struct.usb_bus*, i32)** %63, align 8
  %65 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %66 = load i32, i32* @USB_HW_POWER_RESUME, align 4
  %67 = call i32 %64(%struct.usb_bus* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %26
  %69 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %70 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %72, align 8
  %74 = icmp ne i32 (%struct.usb_bus*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %77 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %79, align 8
  %81 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %82 = call i32 %80(%struct.usb_bus* %81)
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %85 = call i64 @usbd_set_config_index(%struct.usb_device* %84, i32 0)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %90 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @device_printf(i32* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %95 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %96 = call i64 @usb_probe_and_attach(%struct.usb_device* %94, i32 %95)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %101 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @device_printf(i32* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %109 = call i32 @usbd_enum_unlock(%struct.usb_device* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %112 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %111)
  br label %113

113:                                              ; preds = %110, %25
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @USB_TAKE_CONTROLLER(i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i64 @usbd_set_config_index(%struct.usb_device*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @usb_probe_and_attach(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
