; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_set_config_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_set_config_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not open USB device\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Starting set config test for VID=0x%04x PID=0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unconfiguring USB device was successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Setting configuration %d was successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"\0A\0ASet configuration summary\0AValid count:  %d/%d %s\0AFailed count: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"(expected)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"(unexpected)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_set_config_test(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_device*, align 8
  %8 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.libusb20_device* @find_usb_device(i32 %13, i32 %14)
  store %struct.libusb20_device* %15, %struct.libusb20_device** %7, align 8
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %17 = icmp eq %struct.libusb20_device* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %22 = call i32 @libusb20_dev_open(%struct.libusb20_device* %21, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %28 = call i32 @libusb20_dev_free(%struct.libusb20_device* %27)
  br label %83

29:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  store i32 255, i32* %9, align 4
  br label %33

33:                                               ; preds = %55, %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @libusb20_dev_set_config_index(%struct.libusb20_device* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %45
  br label %54

51:                                               ; preds = %36
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %60 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %59)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %60, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %61 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %62 = icmp ne %struct.LIBUSB20_DEVICE_DESC_DECODED* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %65 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %69

68:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 256, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 256, %74
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %71, i32 %72, i8* %78, i32 %79)
  %81 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %82 = call i32 @libusb20_dev_free(%struct.libusb20_device* %81)
  br label %83

83:                                               ; preds = %69, %25, %18
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_set_config_index(%struct.libusb20_device*, i32) #1

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
