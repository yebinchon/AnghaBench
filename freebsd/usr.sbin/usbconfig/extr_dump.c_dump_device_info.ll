; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_device_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s, cfg=%u md=%s spd=%s pwr=%s (%umA)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ugen%u.%u.%u: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_device_info(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %9 = call i32 @libusb20_dev_get_power_usage(%struct.libusb20_device* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %11 = call i8* @libusb20_dev_get_desc(%struct.libusb20_device* %10)
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %13 = call i32 @libusb20_dev_get_config_index(%struct.libusb20_device* %12)
  %14 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %15 = call i32 @libusb20_dev_get_mode(%struct.libusb20_device* %14)
  %16 = call i8* @dump_mode(i32 %15)
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %18 = call i32 @libusb20_dev_get_speed(%struct.libusb20_device* %17)
  %19 = call i8* @dump_speed(i32 %18)
  %20 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %21 = call i32 @libusb20_dev_get_power_mode(%struct.libusb20_device* %20)
  %22 = call i8* @dump_power_mode(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13, i8* %16, i8* %19, i8* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %56

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = call i64 @libusb20_dev_get_iface_desc(%struct.libusb20_device* %33, i32 %34, i8* %35, i32 128)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %56

39:                                               ; preds = %32
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %47 = call i32 @libusb20_dev_get_bus_number(%struct.libusb20_device* %46)
  %48 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %49 = call i32 @libusb20_dev_get_address(%struct.libusb20_device* %48)
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49, i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %29

56:                                               ; preds = %27, %38, %29
  ret void
}

declare dso_local i32 @libusb20_dev_get_power_usage(%struct.libusb20_device*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @libusb20_dev_get_desc(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_config_index(%struct.libusb20_device*) #1

declare dso_local i8* @dump_mode(i32) #1

declare dso_local i32 @libusb20_dev_get_mode(%struct.libusb20_device*) #1

declare dso_local i8* @dump_speed(i32) #1

declare dso_local i32 @libusb20_dev_get_speed(%struct.libusb20_device*) #1

declare dso_local i8* @dump_power_mode(i32) #1

declare dso_local i32 @libusb20_dev_get_power_mode(%struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_get_iface_desc(%struct.libusb20_device*, i32, i8*, i32) #1

declare dso_local i32 @libusb20_dev_get_bus_number(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_dev_get_address(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
