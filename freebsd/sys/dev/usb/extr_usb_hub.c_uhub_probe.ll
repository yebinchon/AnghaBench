; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@UDCLASS_HUB = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uhub_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.usb_attach_arg* @device_get_ivars(i32 %5)
  store %struct.usb_attach_arg* %6, %struct.usb_attach_arg** %4, align 8
  %7 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %8 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_MODE_HOST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %22 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UDCLASS_HUB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %20, %14
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
