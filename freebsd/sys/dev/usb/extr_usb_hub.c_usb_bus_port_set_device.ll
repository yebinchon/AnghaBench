; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_bus_port_set_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_bus_port_set_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.usb_device** }
%struct.usb_port = type { i64 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"bus %p devices[%u] = %p\0A\00", align 1
@usb_ref_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_bus_port_set_device(%struct.usb_bus* %0, %struct.usb_port* %1, %struct.usb_device* %2, i64 %3) #0 {
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.usb_port*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %5, align 8
  store %struct.usb_port* %1, %struct.usb_port** %6, align 8
  store %struct.usb_device* %2, %struct.usb_device** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %10 = icmp eq %struct.usb_bus* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %44

12:                                               ; preds = %4
  %13 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %14 = icmp ne %struct.usb_port* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %17 = icmp ne %struct.usb_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %21 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %24 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %27 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %35 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %34, i32 0, i32 0
  %36 = load %struct.usb_device**, %struct.usb_device*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %36, i64 %37
  store %struct.usb_device* %33, %struct.usb_device** %38, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %43 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.usb_bus* %40, i64 %41, %struct.usb_device* %42)
  br label %44

44:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_bus*, i64, %struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
