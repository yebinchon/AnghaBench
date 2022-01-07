; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_usbd_req_get_hid_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_usbd_req_get_hid_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.malloc_type = type { i32 }
%struct.usb_interface = type { i32* }
%struct.usb_hid_descriptor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_ERR_IOERROR = common dso_local global i64 0, align 8
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_get_hid_desc(%struct.usb_device* %0, %struct.mtx* %1, i8** %2, i32* %3, %struct.malloc_type* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.malloc_type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_interface*, align 8
  %15 = alloca %struct.usb_hid_descriptor*, align 8
  %16 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store %struct.mtx* %1, %struct.mtx** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.malloc_type* %4, %struct.malloc_type** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %18 = load i32, i32* %13, align 4
  %19 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %17, i32 %18)
  store %struct.usb_interface* %19, %struct.usb_interface** %14, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %21 = icmp eq %struct.usb_interface* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %6
  %28 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %28, i64* %7, align 8
  br label %100

29:                                               ; preds = %22
  %30 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %31 = call i32 @usbd_get_config_descriptor(%struct.usb_device* %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call %struct.usb_hid_descriptor* @hid_get_descriptor_from_usb(i32 %31, i32* %34)
  store %struct.usb_hid_descriptor* %35, %struct.usb_hid_descriptor** %15, align 8
  %36 = load %struct.usb_hid_descriptor*, %struct.usb_hid_descriptor** %15, align 8
  %37 = icmp eq %struct.usb_hid_descriptor* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* @USB_ERR_IOERROR, align 8
  store i64 %39, i64* %7, align 8
  br label %100

40:                                               ; preds = %29
  %41 = load %struct.usb_hid_descriptor*, %struct.usb_hid_descriptor** %15, align 8
  %42 = getelementptr inbounds %struct.usb_hid_descriptor, %struct.usb_hid_descriptor* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UGETW(i32 %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @USB_ERR_IOERROR, align 8
  store i64 %53, i64* %7, align 8
  br label %100

54:                                               ; preds = %40
  %55 = load %struct.mtx*, %struct.mtx** %9, align 8
  %56 = icmp ne %struct.mtx* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.mtx*, %struct.mtx** %9, align 8
  %59 = call i32 @mtx_unlock(%struct.mtx* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.malloc_type*, %struct.malloc_type** %12, align 8
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = load i32, i32* @M_WAITOK, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @malloc(i32 %62, %struct.malloc_type* %63, i32 %66)
  %68 = load i8**, i8*** %10, align 8
  store i8* %67, i8** %68, align 8
  %69 = load %struct.mtx*, %struct.mtx** %9, align 8
  %70 = icmp ne %struct.mtx* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.mtx*, %struct.mtx** %9, align 8
  %73 = call i32 @mtx_lock(%struct.mtx* %72)
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @USB_ERR_NOMEM, align 8
  store i64 %79, i64* %7, align 8
  br label %100

80:                                               ; preds = %74
  %81 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %82 = load %struct.mtx*, %struct.mtx** %9, align 8
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @usbd_req_get_report_descriptor(%struct.usb_device* %81, %struct.mtx* %82, i8* %84, i32 %86, i32 %87)
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.malloc_type*, %struct.malloc_type** %12, align 8
  %95 = call i32 @free(i8* %93, %struct.malloc_type* %94)
  %96 = load i8**, i8*** %10, align 8
  store i8* null, i8** %96, align 8
  %97 = load i64, i64* %16, align 8
  store i64 %97, i64* %7, align 8
  br label %100

98:                                               ; preds = %80
  %99 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %98, %91, %78, %52, %38, %27
  %101 = load i64, i64* %7, align 8
  ret i64 %101
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_hid_descriptor* @hid_get_descriptor_from_usb(i32, i32*) #1

declare dso_local i32 @usbd_get_config_descriptor(%struct.usb_device*) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i8* @malloc(i32, %struct.malloc_type*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i64 @usbd_req_get_report_descriptor(%struct.usb_device*, %struct.mtx*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*, %struct.malloc_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
