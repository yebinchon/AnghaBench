; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@UICLASS_HID = common dso_local global i64 0, align 8
@UQ_UMS_IGNORE = common dso_local global i32 0, align 4
@UISUBCLASS_BOOT = common dso_local global i64 0, align 8
@UIPROTO_MOUSE = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ums_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ums_probe(i32 %0) #0 {
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
  %10 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %12 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_MODE_HOST, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UICLASS_HID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %78

27:                                               ; preds = %18
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = load i32, i32* @UQ_UMS_IGNORE, align 4
  %30 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %78

34:                                               ; preds = %27
  %35 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %36 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UISUBCLASS_BOOT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UIPROTO_MOUSE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %49, i32* %2, align 4
  br label %78

50:                                               ; preds = %41, %34
  %51 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %52 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @M_TEMP, align 4
  %55 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %56 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usbd_req_get_hid_desc(i32 %53, i32* null, i8** %5, i32* %7, i32 %54, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %78

64:                                               ; preds = %50
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @hid_is_mouse(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = call i32 @free(i8* %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %62, %48, %32, %25, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i64 @hid_is_mouse(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
