; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_find_iface_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_find_iface_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hub_result = type { i64, %struct.usb_device*, i64 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i64 }

@USB_IFACE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uhub_find_iface_index(%struct.usb_hub* %0, i64 %1, %struct.hub_result* %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hub_result*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.hub_result* %2, %struct.hub_result** %6, align 8
  %12 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %13 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %21 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %26 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add nsw i64 %27, %28
  %30 = call %struct.usb_device* @usb_bus_port_get_device(i32 %24, i64 %29)
  store %struct.usb_device* %30, %struct.usb_device** %8, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %32 = icmp ne %struct.usb_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %67

34:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @USB_IFACE_MAX, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %40, i64 %41)
  store %struct.usb_interface* %42, %struct.usb_interface** %7, align 8
  %43 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %44 = icmp ne %struct.usb_interface* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %54 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %56 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %57 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %56, i32 0, i32 1
  store %struct.usb_device* %55, %struct.usb_device** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  %60 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %61 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %77

62:                                               ; preds = %45, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %35

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %15

70:                                               ; preds = %15
  %71 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %72 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %74 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %73, i32 0, i32 1
  store %struct.usb_device* null, %struct.usb_device** %74, align 8
  %75 = load %struct.hub_result*, %struct.hub_result** %6, align 8
  %76 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %51
  ret void
}

declare dso_local %struct.usb_device* @usb_bus_port_get_device(i32, i64) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
