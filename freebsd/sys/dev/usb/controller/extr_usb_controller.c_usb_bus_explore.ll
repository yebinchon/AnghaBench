; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_explore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_explore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i64, i32, i64, %struct.usb_device** }
%struct.usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_device*)* }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_explore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_explore(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %5 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %6 = bitcast %struct.usb_proc_msg* %5 to %struct.usb_bus_msg*
  %7 = getelementptr inbounds %struct.usb_bus_msg, %struct.usb_bus_msg* %6, i32 0, i32 0
  %8 = load %struct.usb_bus*, %struct.usb_bus** %7, align 8
  store %struct.usb_bus* %8, %struct.usb_bus** %3, align 8
  %9 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %10 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %9, i32 0, i32 3
  %11 = load %struct.usb_device**, %struct.usb_device*** %10, align 8
  %12 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %13 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %11, i64 %12
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %4, align 8
  %15 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %16 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = icmp ne %struct.usb_device* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %25 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = call i32 @uhub_explore_handle_re_enumerate(%struct.usb_device* %26)
  %28 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %29 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %28)
  br label %30

30:                                               ; preds = %23, %20
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = icmp ne %struct.usb_device* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %40 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %45 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %47 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %52 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %57 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %60 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %59)
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %64, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %67 = call i32 %65(%struct.usb_device* %66)
  %68 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %69 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %68)
  br label %70

70:                                               ; preds = %19, %58, %33, %30
  ret void
}

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @uhub_explore_handle_re_enumerate(%struct.usb_device*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
