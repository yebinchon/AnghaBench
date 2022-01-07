; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_control_ep_error_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_control_ep_error_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIBUSB20_CONTROL_SETUP_DECODED = type { i32, i32, i32, i32, i64 }
%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not open USB device\0A\00", align 1
@LIBUSB20_CONTROL_SETUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Test #%d.1/3 ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Last configuration index is: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Test #%d.2/3 ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Cannot fetch descriptor (unexpected)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Test #%d.3/3 ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Test completed detecting %d failures\0ADone\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_control_ep_error_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.LIBUSB20_CONTROL_SETUP_DECODED, align 8
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.libusb20_device* @find_usb_device(i32 %13, i32 %14)
  store %struct.libusb20_device* %15, %struct.libusb20_device** %6, align 8
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %17 = icmp eq %struct.libusb20_device* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %22 = call i32 @libusb20_dev_open(%struct.libusb20_device* %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %28 = call i32 @libusb20_dev_free(%struct.libusb20_device* %27)
  br label %108

29:                                               ; preds = %20
  %30 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %31 = call i32 @libusb20_dev_get_bus_number(%struct.libusb20_device* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %33 = call i32 @libusb20_dev_get_address(%struct.libusb20_device* %32)
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %98, %29
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %101

37:                                               ; preds = %34
  %38 = load i32, i32* @LIBUSB20_CONTROL_SETUP, align 4
  %39 = call i32 @LIBUSB20_INIT(i32 %38, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5)
  %40 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32 0, i32 0
  store i32 128, i32* %40, align 8
  %41 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32 0, i32 1
  store i32 6, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 512, %42
  %44 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.LIBUSB20_CONTROL_SETUP_DECODED, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32 0, i32 3
  store i32 255, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = call i32 @set_ctrl_ep_fail(i32 -1, i32 -1, i32 0, i32 0)
  %50 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %52 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %50, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32* %51, i32* null, i32 1000, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %101

59:                                               ; preds = %37
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @set_ctrl_ep_fail(i32 %62, i32 %63, i32 1, i32 1)
  %65 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %67 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %65, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32* %66, i32* null, i32 1000, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = call i32 @set_ctrl_ep_fail(i32 -1, i32 -1, i32 0, i32 0)
  %69 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %71 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %69, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32* %70, i32* null, i32 1000, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %59
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @set_ctrl_ep_fail(i32 %81, i32 %82, i32 0, i32 1)
  %84 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %86 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %84, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32* %85, i32* null, i32 1000, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = call i32 @set_ctrl_ep_fail(i32 -1, i32 -1, i32 0, i32 0)
  %88 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %90 = call i32 @libusb20_dev_request_sync(%struct.libusb20_device* %88, %struct.LIBUSB20_CONTROL_SETUP_DECODED* %5, i32* %89, i32* null, i32 1000, i32 0)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %78
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %34

101:                                              ; preds = %55, %34
  %102 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %103 = call i32 @libusb20_dev_close(%struct.libusb20_device* %102)
  %104 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %105 = call i32 @libusb20_dev_free(%struct.libusb20_device* %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %25, %18
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_bus_number(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_address(%struct.libusb20_device*) #1

declare dso_local i32 @LIBUSB20_INIT(i32, %struct.LIBUSB20_CONTROL_SETUP_DECODED*) #1

declare dso_local i32 @set_ctrl_ep_fail(i32, i32, i32, i32) #1

declare dso_local i32 @libusb20_dev_request_sync(%struct.libusb20_device*, %struct.LIBUSB20_CONTROL_SETUP_DECODED*, i32*, i32*, i32, i32) #1

declare dso_local i32 @libusb20_dev_close(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
