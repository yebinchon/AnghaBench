; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@UICLASS_HID = common dso_local global i64 0, align 8
@UQ_WMT_IGNORE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wmt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usb_attach_arg* @device_get_ivars(i32 %8)
  store %struct.usb_attach_arg* %9, %struct.usb_attach_arg** %4, align 8
  %10 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %11 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_MODE_HOST, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %19 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UICLASS_HID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %61

26:                                               ; preds = %17
  %27 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %28 = load i32, i32* @UQ_WMT_IGNORE, align 4
  %29 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %26
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @M_TEMP, align 4
  %38 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %39 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usbd_req_get_hid_desc(i32 %36, i32* null, i8** %5, i32* %6, i32 %37, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %33
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @wmt_hid_parse(i32* null, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @M_TEMP, align 4
  %59 = call i32 @free(i8* %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %45, %31, %24, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i64 @wmt_hid_parse(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
