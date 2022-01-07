; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_do_request_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_do_request_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_process = type { i32 }
%struct.usb_device_request = type { i32, i32 }

@USB_ERR_IOERROR = common dso_local global i64 0, align 8
@UE_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_do_request_proc(%struct.usb_device* %0, %struct.usb_process* %1, %struct.usb_device_request* %2, i8* %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_process*, align 8
  %10 = alloca %struct.usb_device_request*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store %struct.usb_process* %1, %struct.usb_process** %9, align 8
  store %struct.usb_device_request* %2, %struct.usb_device_request** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.usb_device_request*, %struct.usb_device_request** %10, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @UGETW(i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load %struct.usb_process*, %struct.usb_process** %9, align 8
  %22 = call i64 @usb_proc_is_gone(%struct.usb_process* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i64, i64* @USB_ERR_IOERROR, align 8
  store i64 %25, i64* %15, align 8
  br label %37

26:                                               ; preds = %7
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = load %struct.usb_process*, %struct.usb_process** %9, align 8
  %29 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_device_request*, %struct.usb_device_request** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @usbd_do_request_flags(%struct.usb_device* %27, i32 %30, %struct.usb_device_request* %31, i8* %32, i64 %33, i64* %34, i32 %35)
  store i64 %36, i64* %15, align 8
  br label %37

37:                                               ; preds = %26, %24
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = load %struct.usb_device_request*, %struct.usb_device_request** %10, align 8
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UE_DIR_IN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @memset(i8* %51, i32 0, i64 %52)
  br label %73

54:                                               ; preds = %47
  %55 = load i64*, i64** %13, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i64*, i64** %13, align 8
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i64, i64* %16, align 8
  %68 = load i64*, i64** %13, align 8
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = call i32 @memset(i8* %66, i32 0, i64 %70)
  br label %72

72:                                               ; preds = %62, %57, %54
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %40, %37
  %75 = load i64, i64* %15, align 8
  ret i64 %75
}

declare dso_local i64 @UGETW(i32) #1

declare dso_local i64 @usb_proc_is_gone(%struct.usb_process*) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, i32, %struct.usb_device_request*, i8*, i64, i64*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
