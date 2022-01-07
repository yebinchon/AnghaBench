; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config_desc_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config_desc_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_config_descriptor = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%d\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_CONFIG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Configuration descriptor was truncated\0A\00", align 1
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@UDESC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_get_config_desc_full(%struct.usb_device* %0, %struct.mtx* %1, %struct.usb_config_descriptor** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca %struct.usb_config_descriptor**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_config_descriptor, align 4
  %11 = alloca %struct.usb_config_descriptor*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.mtx* %1, %struct.mtx** %7, align 8
  store %struct.usb_config_descriptor** %2, %struct.usb_config_descriptor*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.usb_config_descriptor**, %struct.usb_config_descriptor*** %8, align 8
  store %struct.usb_config_descriptor* null, %struct.usb_config_descriptor** %16, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = load %struct.mtx*, %struct.mtx** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @usbd_req_get_config_desc(%struct.usb_device* %17, %struct.mtx* %18, %struct.usb_config_descriptor* %10, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %5, align 8
  br label %73

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @UGETW(i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp slt i64 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %32, i64* %5, align 8
  br label %73

33:                                               ; preds = %25
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @USB_CONFIG_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @USB_CONFIG_MAX, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call %struct.usb_config_descriptor* @usbd_alloc_config_desc(%struct.usb_device* %42, i64 %43)
  store %struct.usb_config_descriptor* %44, %struct.usb_config_descriptor** %11, align 8
  %45 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %46 = icmp eq %struct.usb_config_descriptor* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @USB_ERR_NOMEM, align 8
  store i64 %48, i64* %5, align 8
  br label %73

49:                                               ; preds = %41
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.mtx*, %struct.mtx** %7, align 8
  %52 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @UDESC_CONFIG, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @usbd_req_get_desc(%struct.usb_device* %50, %struct.mtx* %51, i32* null, %struct.usb_config_descriptor* %52, i64 %53, i64 %54, i32 0, i32 %55, i32 %56, i32 3)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %63 = call i32 @usbd_free_config_desc(%struct.usb_device* %61, %struct.usb_config_descriptor* %62)
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %5, align 8
  br label %73

65:                                               ; preds = %49
  %66 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %67 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @USETW(i32 %68, i64 %69)
  %71 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %72 = load %struct.usb_config_descriptor**, %struct.usb_config_descriptor*** %8, align 8
  store %struct.usb_config_descriptor* %71, %struct.usb_config_descriptor** %72, align 8
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %65, %60, %47, %31, %23
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i64 @usbd_req_get_config_desc(%struct.usb_device*, %struct.mtx*, %struct.usb_config_descriptor*, i32) #1

declare dso_local i64 @UGETW(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.usb_config_descriptor* @usbd_alloc_config_desc(%struct.usb_device*, i64) #1

declare dso_local i64 @usbd_req_get_desc(%struct.usb_device*, %struct.mtx*, i32*, %struct.usb_config_descriptor*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_free_config_desc(%struct.usb_device*, %struct.usb_config_descriptor*) #1

declare dso_local i32 @USETW(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
