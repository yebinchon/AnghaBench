; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_suspend_resume_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_suspend_resume_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"hw.usb.power_timeout\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"WARNING: Could not set power timeout to 1 (error=%d) \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not open USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Starting suspend and resume test for VID=0x%04x PID=0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Device disconnected\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"STATUS: ID=%u, ERR=%u\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@LIBUSB20_POWER_ON = common dso_local global i32 0, align 4
@LIBUSB20_POWER_SAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_suspend_resume_test(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.libusb20_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %14, align 4
  %17 = call i32 @sysctlbyname(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* %14, i32 4)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.libusb20_device* @find_usb_device(i32 %24, i32 %25)
  store %struct.libusb20_device* %26, %struct.libusb20_device** %10, align 8
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %28 = icmp eq %struct.libusb20_device* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %112

31:                                               ; preds = %23
  %32 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %33 = call i32 @libusb20_dev_open(%struct.libusb20_device* %32, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %39 = call i32 @libusb20_dev_free(%struct.libusb20_device* %38)
  br label %112

40:                                               ; preds = %31
  %41 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %42 = call i32 @libusb20_dev_get_power_mode(%struct.libusb20_device* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %46 = call i32 @gettimeofday(%struct.timeval* %8, i32 0)
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %40, %98
  %50 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %51 = call i64 @libusb20_dev_check_connected(%struct.libusb20_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %106

55:                                               ; preds = %49
  %56 = call i32 @gettimeofday(%struct.timeval* %7, i32 0)
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fflush(i32 %65)
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %61, %55
  %70 = call i32 @timersub(%struct.timeval* %7, %struct.timeval* %8, %struct.timeval* %9)
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp sge i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %69
  br label %106

81:                                               ; preds = %74
  %82 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @LIBUSB20_POWER_ON, align 4
  br label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @LIBUSB20_POWER_SAVE, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @libusb20_dev_set_power_mode(%struct.libusb20_device* %82, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = call i64 (...) @usb_ts_rand_noise()
  %100 = trunc i64 %99 to i32
  %101 = urem i32 %100, 2000000
  %102 = add i32 4100000, %101
  %103 = call i32 @usleep(i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %49

106:                                              ; preds = %80, %53
  %107 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @libusb20_dev_set_power_mode(%struct.libusb20_device* %107, i32 %108)
  %110 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %111 = call i32 @libusb20_dev_free(%struct.libusb20_device* %110)
  br label %112

112:                                              ; preds = %106, %36, %29
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_power_mode(%struct.libusb20_device*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i64 @libusb20_dev_check_connected(%struct.libusb20_device*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @libusb20_dev_set_power_mode(%struct.libusb20_device*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @usb_ts_rand_noise(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
