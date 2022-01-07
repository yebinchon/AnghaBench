; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_set_alt_interface_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_set_alt_interface_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Starting set alternate setting test for VID=0x%04x PID=0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not get configuration descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"ERROR could not open device\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ERROR on interface %d alt %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"\0ATest summary\0A============\0AInterfaces tested: %d\0AErrors: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_set_alt_interface_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.libusb20_device*, align 8
  %6 = alloca %struct.libusb20_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.libusb20_device* @find_usb_device(i32 %12, i32 %13)
  store %struct.libusb20_device* %14, %struct.libusb20_device** %5, align 8
  %15 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %16 = icmp eq %struct.libusb20_device* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %106

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %24 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %25 = call i32 @libusb20_dev_get_config_index(%struct.libusb20_device* %24)
  %26 = call %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device* %23, i32 %25)
  store %struct.libusb20_config* %26, %struct.libusb20_config** %6, align 8
  %27 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %28 = icmp eq %struct.libusb20_config* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %32 = call i32 @libusb20_dev_free(%struct.libusb20_device* %31)
  br label %106

33:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %97, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %37 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %34
  %41 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device* %41, i32 %42)
  %44 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %45 = call i32 @libusb20_dev_open(%struct.libusb20_device* %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.libusb20_config*, %struct.libusb20_config** %6, align 8
  %54 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %52, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 @libusb20_dev_set_alt_index(%struct.libusb20_device* %65, i32 %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @libusb20_dev_set_alt_index(%struct.libusb20_device* %85, i32 %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 0)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %96 = call i32 @libusb20_dev_close(%struct.libusb20_device* %95)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %34

100:                                              ; preds = %34
  %101 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %102 = call i32 @libusb20_dev_free(%struct.libusb20_device* %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %29, %17
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_get_config_index(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_set_alt_index(%struct.libusb20_device*, i32, i32) #1

declare dso_local i32 @libusb20_dev_close(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
