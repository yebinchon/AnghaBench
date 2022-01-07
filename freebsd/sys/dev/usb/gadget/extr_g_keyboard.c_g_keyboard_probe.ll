; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@UICLASS_HID = common dso_local global i64 0, align 8
@UISUBCLASS_BOOT = common dso_local global i64 0, align 8
@UPROTO_BOOT_KEYBOARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_keyboard_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_keyboard_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.usb_attach_arg* @device_get_ivars(i32 %5)
  store %struct.usb_attach_arg* %6, %struct.usb_attach_arg** %4, align 8
  %7 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %9 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_MODE_DEVICE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %17 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UICLASS_HID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %24 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UISUBCLASS_BOOT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %31 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UPROTO_BOOT_KEYBOARD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %39

37:                                               ; preds = %29, %22, %15
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %36, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
