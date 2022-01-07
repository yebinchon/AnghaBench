; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_trigger_reprobe_on_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_trigger_reprobe_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_port_status = type { i32 }
%struct.usb_bus = type { %struct.usb_device** }
%struct.usb_device = type { i64, i32 }

@usb_devclass_ptr = common dso_local global i32 0, align 4
@usb_ref_lock = common dso_local global i32 0, align 4
@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@USB_DEV_REF_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"usbd_req_get_port_status() failed: %s\0A\00", align 1
@UPS_PORT_MODE_DEVICE = common dso_local global i32 0, align 4
@UHF_PORT_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"usbd_req_set_port_feature() failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"usbd_req_clear_port_feature() failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usb_trigger_reprobe_on_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_trigger_reprobe_on_off(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_port_status, align 4
  %4 = alloca %struct.usb_bus*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @usb_devclass_ptr, align 4
  %10 = call i32 @devclass_get_maxunit(i32 %9)
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %123, %50, %36, %1
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %125

14:                                               ; preds = %11
  %15 = call i32 @mtx_lock(i32* @usb_ref_lock)
  %16 = load i32, i32* @usb_devclass_ptr, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.usb_bus* @devclass_get_softc(i32 %16, i32 %17)
  store %struct.usb_bus* %18, %struct.usb_bus** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %22 = icmp eq %struct.usb_bus* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %14
  %24 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %25 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %24, i32 0, i32 0
  %26 = load %struct.usb_device**, %struct.usb_device*** %25, align 8
  %27 = icmp eq %struct.usb_device** %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %30 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %29, i32 0, i32 0
  %31 = load %struct.usb_device**, %struct.usb_device*** %30, align 8
  %32 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %33 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %31, i64 %32
  %34 = load %struct.usb_device*, %struct.usb_device** %33, align 8
  %35 = icmp eq %struct.usb_device* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %23, %14
  %37 = call i32 @mtx_unlock(i32* @usb_ref_lock)
  br label %11

38:                                               ; preds = %28
  %39 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %40 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %39, i32 0, i32 0
  %41 = load %struct.usb_device**, %struct.usb_device*** %40, align 8
  %42 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %43 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %41, i64 %42
  %44 = load %struct.usb_device*, %struct.usb_device** %43, align 8
  store %struct.usb_device* %44, %struct.usb_device** %5, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USB_DEV_REF_MAX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = call i32 @mtx_unlock(i32* @usb_ref_lock)
  br label %11

52:                                               ; preds = %38
  %53 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = call i32 @mtx_unlock(i32* @usb_ref_lock)
  %58 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %59 = call i32 @usbd_enum_lock(%struct.usb_device* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %106

63:                                               ; preds = %52
  %64 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %65 = call i64 @usbd_req_get_port_status(%struct.usb_device* %64, i32* null, %struct.usb_port_status* %3, i32 1)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @usbd_errstr(i64 %69)
  %71 = call i32 @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %106

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @UGETW(i32 %74)
  %76 = load i32, i32* @UPS_PORT_MODE_DEVICE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %106

80:                                               ; preds = %72
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %85 = load i32, i32* @UHF_PORT_POWER, align 4
  %86 = call i64 @usbd_req_set_port_feature(%struct.usb_device* %84, i32* null, i32 1, i32 %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @usbd_errstr(i64 %90)
  %92 = call i32 @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  br label %105

94:                                               ; preds = %80
  %95 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %96 = load i32, i32* @UHF_PORT_POWER, align 4
  %97 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %95, i32* null, i32 1, i32 %96)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @usbd_errstr(i64 %101)
  %103 = call i32 @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %79, %68, %62
  %107 = call i32 @mtx_lock(i32* @usb_ref_lock)
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %112 = call i32 @usbd_enum_unlock(%struct.usb_device* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %115, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 1
  %122 = call i32 @cv_broadcast(i32* %121)
  br label %123

123:                                              ; preds = %119, %113
  %124 = call i32 @mtx_unlock(i32* @usb_ref_lock)
  br label %11

125:                                              ; preds = %11
  ret void
}

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.usb_bus* @devclass_get_softc(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i64 @usbd_req_get_port_status(%struct.usb_device*, i32*, %struct.usb_port_status*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i64 @usbd_req_set_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
