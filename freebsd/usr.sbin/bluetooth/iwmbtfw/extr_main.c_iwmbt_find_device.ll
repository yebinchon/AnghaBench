; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_iwmbt_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_iwmbt_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device_descriptor = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"libusb_get_device_list() failed: code %lld\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"libusb_get_device_descriptor: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @iwmbt_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @iwmbt_find_device(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.libusb_device_descriptor, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @libusb_get_device_list(i32* %15, i32*** %8)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @iwmbt_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32* null, i32** %4, align 8
  br label %65

22:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i32**, i32*** %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @libusb_get_bus_number(i32* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @libusb_get_device_address(i32* %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @libusb_get_device_descriptor(i32* %42, %struct.libusb_device_descriptor* %11)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @libusb_strerror(i32 %47)
  %49 = call i32 @iwmbt_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %61

50:                                               ; preds = %41
  %51 = call i64 @iwmbt_is_8260(%struct.libusb_device_descriptor* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @libusb_ref_device(i32* %54)
  store i32* %55, i32** %10, align 8
  br label %61

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %36, %27
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %13, align 8
  br label %23

61:                                               ; preds = %53, %46, %23
  %62 = load i32**, i32*** %8, align 8
  %63 = call i32 @libusb_free_device_list(i32** %62, i32 1)
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %61, %19
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i64 @libusb_get_device_list(i32*, i32***) #1

declare dso_local i32 @iwmbt_err(i8*, i64) #1

declare dso_local i32 @libusb_get_bus_number(i32*) #1

declare dso_local i32 @libusb_get_device_address(i32*) #1

declare dso_local i32 @libusb_get_device_descriptor(i32*, %struct.libusb_device_descriptor*) #1

declare dso_local i64 @libusb_strerror(i32) #1

declare dso_local i64 @iwmbt_is_8260(%struct.libusb_device_descriptor*) #1

declare dso_local i32* @libusb_ref_device(i32*) #1

declare dso_local i32 @libusb_free_device_list(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
