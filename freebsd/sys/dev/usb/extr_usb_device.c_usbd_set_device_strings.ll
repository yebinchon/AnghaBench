; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_device_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_device_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_knowndev = type { i8*, i64, i64, i32, i8* }
%struct.usb_device = type { i32*, i32*, %struct.usb_device_descriptor, i8*, %struct.TYPE_2__ }
%struct.usb_device_descriptor = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@M_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vendor 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"product 0x%04x\00", align 1
@USB_KNOWNDEV_NOPROD = common dso_local global i32 0, align 4
@usb_knowndevs = common dso_local global %struct.usb_knowndev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @usbd_set_device_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_set_device_strings(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_device_descriptor*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 2
  store %struct.usb_device_descriptor* %10, %struct.usb_device_descriptor** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = call i64 @usbd_ctrl_lock(%struct.usb_device* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  store i64 8, i64* %5, align 8
  %18 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @UGETW(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @UGETW(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usbd_req_get_string_any(%struct.usb_device* %26, i32* null, i8* %27, i64 %28, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @M_USB, align 4
  %36 = call i8* @strdup(i8* %34, i32 %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usbd_req_get_string_any(%struct.usb_device* %39, i32* null, i8* %40, i64 %41, i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @usb_trim_spaces(i8* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @M_USB, align 4
  %57 = call i8* @strdup(i8* %55, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %1
  %62 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @usbd_req_get_string_any(%struct.usb_device* %62, i32* null, i8* %63, i64 %64, i32 %68)
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @usb_trim_spaces(i8* %70)
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %61
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @M_USB, align 4
  %80 = call i8* @strdup(i8* %78, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %61
  %85 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @snprintf(i8* %90, i64 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* @M_USB, align 4
  %96 = call i8* @strdup(i8* %94, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %89, %84
  %101 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @snprintf(i8* %106, i64 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* @M_USB, align 4
  %112 = call i8* @strdup(i8* %110, i32 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %105, %100
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %121 = call i32 @usbd_ctrl_unlock(%struct.usb_device* %120)
  br label %122

122:                                              ; preds = %119, %116
  ret void
}

declare dso_local i64 @usbd_ctrl_lock(%struct.usb_device*) #1

declare dso_local i64 @UGETW(i32) #1

declare dso_local i32 @usbd_req_get_string_any(%struct.usb_device*, i32*, i8*, i64, i32) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @usb_trim_spaces(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

declare dso_local i32 @usbd_ctrl_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
