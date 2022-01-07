; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@UKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i64 0, align 8
@UICLASS_HID = common dso_local global i64 0, align 8
@UQ_KBD_IGNORE = common dso_local global i32 0, align 4
@UISUBCLASS_BOOT = common dso_local global i64 0, align 8
@UIPROTO_BOOT_KEYBOARD = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ukbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukbd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @UKBD_DRIVER_NAME, align 4
  %10 = call i32* @kbd_get_switch(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %5, align 8
  %13 = call i32 (...) @UKBD_LOCK_ASSERT()
  %14 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_MODE_HOST, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %95

27:                                               ; preds = %19
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UICLASS_HID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %27
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %38 = load i32, i32* @UQ_KBD_IGNORE, align 4
  %39 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %95

43:                                               ; preds = %36
  %44 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %45 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UISUBCLASS_BOOT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %52 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UIPROTO_BOOT_KEYBOARD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %50, %43
  %60 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %61 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @M_TEMP, align 4
  %64 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %65 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usbd_req_get_hid_desc(i32 %62, i32* null, i8** %6, i32* %8, i32 %63, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %95

73:                                               ; preds = %59
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @hid_is_keyboard(i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @hid_is_mouse(i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %7, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %83
  br label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @M_TEMP, align 4
  %93 = call i32 @free(i8* %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %71, %57, %41, %34, %25, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32* @kbd_get_switch(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i64 @hid_is_keyboard(i8*, i32) #1

declare dso_local i64 @hid_is_mouse(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
