; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.usb_bus*)* }
%struct.usb_device = type { i32 }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"12Mbps Full Speed USB v1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"12Mbps Full Speed USB v1.1\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"480Mbps High Speed USB v2.0\0A\00", align 1
@USB_SPEED_VARIABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"480Mbps Wireless USB v2.5\0A\00", align 1
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"5.0Gbps Super Speed USB v3.0\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unsupported USB revision\0A\00", align 1
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@USB_HW_POWER_NON_ROOT_HUB = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@USB_ERR_NO_ROOT_HUB = common dso_local global i64 0, align 8
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Root HUB problem, error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_attach(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %8 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %9 = bitcast %struct.usb_proc_msg* %8 to %struct.usb_bus_msg*
  %10 = getelementptr inbounds %struct.usb_bus_msg, %struct.usb_bus_msg* %9, i32 0, i32 0
  %11 = load %struct.usb_bus*, %struct.usb_bus** %10, align 8
  store %struct.usb_bus* %11, %struct.usb_bus** %3, align 8
  %12 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %49 [
    i32 132, label %19
    i32 131, label %25
    i32 130, label %31
    i32 129, label %37
    i32 128, label %43
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @USB_SPEED_FULL, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %22 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %54

25:                                               ; preds = %1
  %26 = load i32, i32* @USB_SPEED_FULL, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %28 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %54

31:                                               ; preds = %1
  %32 = load i32, i32* @USB_SPEED_HIGH, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %34 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %54

37:                                               ; preds = %1
  %38 = load i32, i32* @USB_SPEED_VARIABLE, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %40 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %54

43:                                               ; preds = %1
  %44 = load i32, i32* @USB_SPEED_SUPER, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %46 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %54

49:                                               ; preds = %1
  %50 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %51 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %140

54:                                               ; preds = %43, %37, %31, %25, %19
  %55 = load i32, i32* @USB_HW_POWER_CONTROL, align 4
  %56 = load i32, i32* @USB_HW_POWER_BULK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @USB_HW_POWER_INTERRUPT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_HW_POWER_ISOC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @USB_HW_POWER_NON_ROOT_HUB, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %65 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %67 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %66)
  %68 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %69 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %71, align 8
  %73 = icmp ne i32 (%struct.usb_bus*)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %54
  %75 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %76 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %75, i32 0, i32 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %78, align 8
  %80 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %81 = call i32 %79(%struct.usb_bus* %80)
  br label %82

82:                                               ; preds = %74, %54
  %83 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %84 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @USB_MODE_HOST, align 4
  %89 = call %struct.usb_device* @usb_alloc_device(i32 %85, %struct.usb_bus* %86, i32* null, i32 0, i32 0, i32 1, i32 %87, i32 %88)
  store %struct.usb_device* %89, %struct.usb_device** %4, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = icmp ne %struct.usb_device* %90, null
  br i1 %91, label %92, label %120

92:                                               ; preds = %82
  %93 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %94 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %95 = call i64 @usb_probe_and_attach(%struct.usb_device* %93, i32 %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %92
  %99 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %100 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = icmp eq %struct.TYPE_4__* %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %98
  %107 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %108 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %106, %98
  %117 = load i64, i64* @USB_ERR_NO_ROOT_HUB, align 8
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %116, %106
  br label %119

119:                                              ; preds = %118, %92
  br label %122

120:                                              ; preds = %82
  %121 = load i64, i64* @USB_ERR_NOMEM, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %119
  %123 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %124 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %123)
  %125 = load i64, i64* %6, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %129 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @usbd_errstr(i64 %131)
  %133 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %137 = call i32 @device_set_softc(i32 %135, %struct.usb_bus* %136)
  %138 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %139 = call i32 @usb_power_wdog(%struct.usb_bus* %138)
  br label %140

140:                                              ; preds = %134, %49
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local %struct.usb_device* @usb_alloc_device(i32, %struct.usb_bus*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @usb_probe_and_attach(%struct.usb_device*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @device_set_softc(i32, %struct.usb_bus*) #1

declare dso_local i32 @usb_power_wdog(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
