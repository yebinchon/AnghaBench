; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_pl2303_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_pl2303_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UPLCOM_SET_REQUEST = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TYPE_PL2303 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i64)* @uplcom_pl2303_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uplcom_pl2303_init(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %9 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %10 = call i32 @uplcom_pl2303_do(%struct.usb_device* %7, i32 %8, i32 %9, i32 33924, i32 0, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %2
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %15 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %16 = call i32 @uplcom_pl2303_do(%struct.usb_device* %13, i32 %14, i32 %15, i32 1028, i32 0, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %12
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %21 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %22 = call i32 @uplcom_pl2303_do(%struct.usb_device* %19, i32 %20, i32 %21, i32 33924, i32 0, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %18
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %27 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %28 = call i32 @uplcom_pl2303_do(%struct.usb_device* %25, i32 %26, i32 %27, i32 33667, i32 0, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %24
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %33 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %34 = call i32 @uplcom_pl2303_do(%struct.usb_device* %31, i32 %32, i32 %33, i32 33924, i32 0, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %30
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %39 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %40 = call i32 @uplcom_pl2303_do(%struct.usb_device* %37, i32 %38, i32 %39, i32 1028, i32 1, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %36
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %45 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %46 = call i32 @uplcom_pl2303_do(%struct.usb_device* %43, i32 %44, i32 %45, i32 33924, i32 0, i32 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %50 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %51 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %52 = call i32 @uplcom_pl2303_do(%struct.usb_device* %49, i32 %50, i32 %51, i32 33667, i32 0, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %57 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %58 = call i32 @uplcom_pl2303_do(%struct.usb_device* %55, i32 %56, i32 %57, i32 0, i32 1, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %63 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %64 = call i32 @uplcom_pl2303_do(%struct.usb_device* %61, i32 %62, i32 %63, i32 1, i32 0, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54, %48, %42, %36, %30, %24, %18, %12, %2
  %67 = load i32, i32* @EIO, align 4
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %60
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @TYPE_PL2303, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %74 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %75 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %76 = call i32 @uplcom_pl2303_do(%struct.usb_device* %73, i32 %74, i32 %75, i32 2, i32 68, i32 0)
  store i32 %76, i32* %6, align 4
  br label %82

77:                                               ; preds = %68
  %78 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %79 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %80 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %81 = call i32 @uplcom_pl2303_do(%struct.usb_device* %78, i32 %79, i32 %80, i32 2, i32 36, i32 0)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @EIO, align 4
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %85, %66
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @uplcom_pl2303_do(%struct.usb_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
