; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_set_device_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.usb_device*)* }

@USB_STATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid udev state\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"udev %p state %s -> %s\0A\00", align 1
@usb_ref_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_set_device_state(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USB_STATE_MAX, align 4
  %7 = icmp ult i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_statestr(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @usb_statestr(i32 %15)
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.usb_device* %10, i32 %14, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %26, align 8
  %28 = icmp ne i32 (%struct.usb_device*)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %35, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = call i32 %36(%struct.usb_device* %37)
  br label %39

39:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DPRINTF(i8*, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_statestr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
