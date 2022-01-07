; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_query_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_hub_descriptor = type { i32, i32 }
%struct.usb_hub_ss_descriptor = type { i32 }

@UDCLASS_HUB = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"getting USB 2.0 HUB descriptor failed,error=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Getting USB 3.0 HUB descriptor failed,error=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uhub_query_info(%struct.usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_hub_descriptor, align 4
  %9 = alloca %struct.usb_hub_ss_descriptor, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UDCLASS_HUB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %68 [
    i32 129, label %25
    i32 131, label %25
    i32 130, label %25
    i32 128, label %52
  ]

25:                                               ; preds = %21, %21, %21
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %27 = call i32 @usbd_req_get_hub_descriptor(%struct.usb_device* %26, i32* null, %struct.usb_hub_descriptor* %8, i32 1)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @usbd_errstr(i32 %31)
  %33 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %70

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 127
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 127, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 130
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @UGETW(i32 %47)
  %49 = ashr i32 %48, 5
  %50 = and i32 %49, 3
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %70

52:                                               ; preds = %21
  %53 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %54 = call i32 @usbd_req_get_ss_hub_descriptor(%struct.usb_device* %53, i32* null, %struct.usb_hub_ss_descriptor* %9, i32 1)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @usbd_errstr(i32 %58)
  %60 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %70

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.usb_hub_ss_descriptor, %struct.usb_hub_ss_descriptor* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 16
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 16, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %70

68:                                               ; preds = %21
  %69 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %67, %57, %51, %30
  %71 = load i32*, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @usbd_req_get_hub_descriptor(%struct.usb_device*, i32*, %struct.usb_hub_descriptor*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @usbd_req_get_ss_hub_descriptor(%struct.usb_device*, i32*, %struct.usb_hub_ss_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
