; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_port_reset_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_port_reset_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not open USB device\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"STATUS: ID=%u, ERR=%u\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Device disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_port_reset_test(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.libusb20_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.libusb20_device* @find_usb_device(i32 %15, i32 %16)
  store %struct.libusb20_device* %17, %struct.libusb20_device** %10, align 8
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %19 = icmp eq %struct.libusb20_device* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %24 = call i32 @libusb20_dev_open(%struct.libusb20_device* %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %29 = call i32 @libusb20_dev_free(%struct.libusb20_device* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %84

31:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = call i32 @gettimeofday(%struct.timeval* %8, i32 0)
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %31, %76
  %36 = call i32 @gettimeofday(%struct.timeval* %7, i32 0)
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fflush(i32 %45)
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %41, %35
  %50 = call i32 @timersub(%struct.timeval* %7, %struct.timeval* %8, %struct.timeval* %9)
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %49
  br label %79

62:                                               ; preds = %54
  %63 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %64 = call i64 @libusb20_dev_reset(%struct.libusb20_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = call i32 @usleep(i32 50000)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %72 = call i64 @libusb20_dev_check_connected(%struct.libusb20_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %35

79:                                               ; preds = %74, %61
  %80 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %81 = call i64 @libusb20_dev_reset(%struct.libusb20_device* %80)
  %82 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %83 = call i32 @libusb20_dev_free(%struct.libusb20_device* %82)
  br label %84

84:                                               ; preds = %79, %27, %20
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @libusb20_dev_reset(%struct.libusb20_device*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @libusb20_dev_check_connected(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
