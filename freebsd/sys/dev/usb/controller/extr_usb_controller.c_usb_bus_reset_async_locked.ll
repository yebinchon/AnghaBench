; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_reset_async_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_reset_async_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Reset already pending\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Resetting controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_bus_reset_async_locked(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %3 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus* %3, i32 %4)
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %8 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %18 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %1
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %44

28:                                               ; preds = %16
  %29 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %30 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %34 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %33)
  %35 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %36 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 0
  %39 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %40 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 1
  %43 = call i32 @usb_proc_msignal(i32 %34, %struct.TYPE_7__* %38, %struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usb_proc_msignal(i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
