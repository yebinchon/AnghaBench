; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_detach_device_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_detach_device_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@rebooting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"at %s, port %d, addr %d (disconnected)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Resume failed\0A\00", align 1
@M_USBDEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"usb_detach_device_sub: A USB driver would not detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, i32**, i8**, i32)* @usb_detach_device_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_detach_device_sub(%struct.usb_device* %0, i32** %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %4
  %17 = load i32**, i32*** %6, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @rebooting, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @device_printf(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %20, %16
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @device_is_attached(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @DEVICE_RESUME(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 (i32*, i8*, ...) @device_printf(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @device_delete_child(i32 %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %73

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8**, i8*** %7, align 8
  store i8* null, i8** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @M_USBDEV, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %75

73:                                               ; preds = %60
  %74 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local i32 @DEVICE_RESUME(i32*) #1

declare dso_local i64 @device_delete_child(i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
