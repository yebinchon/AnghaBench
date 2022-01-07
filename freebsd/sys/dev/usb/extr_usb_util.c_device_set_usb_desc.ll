; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_util.c_device_set_usb_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_util.c_device_set_usb_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.usb_interface*, %struct.usb_device* }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.usb_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"<%s> on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_set_usb_desc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.usb_attach_arg*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %87

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32* %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %3, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %3, align 8
  %16 = icmp eq %struct.usb_attach_arg* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %87

18:                                               ; preds = %12
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %3, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 1
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %4, align 8
  %22 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %3, align 8
  %23 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %22, i32 0, i32 0
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  store %struct.usb_interface* %24, %struct.usb_interface** %5, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = icmp eq %struct.usb_interface* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %18
  %28 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp eq %struct.TYPE_5__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %27, %18
  %40 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %40, i64* %7, align 8
  br label %42

41:                                               ; preds = %32
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %41, %39
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = call i64 @usbd_ctrl_lock(%struct.usb_device* %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @usbd_req_get_string_any(%struct.usb_device* %53, i32* null, i8* %54, i32 8, i64 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %52, %42
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @usb_devinfo(%struct.usb_device* %65, i8* %66, i32 8)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %73 = call i32 @usbd_ctrl_unlock(%struct.usb_device* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %2, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @device_set_desc_copy(i32* %75, i8* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @device_get_nameunit(i32 %84)
  %86 = call i32 @device_printf(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %85)
  br label %87

87:                                               ; preds = %74, %17, %11
  ret void
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32*) #1

declare dso_local i64 @usbd_ctrl_lock(%struct.usb_device*) #1

declare dso_local i64 @usbd_req_get_string_any(%struct.usb_device*, i32*, i8*, i32, i64) #1

declare dso_local i32 @usb_devinfo(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @usbd_ctrl_unlock(%struct.usb_device*) #1

declare dso_local i32 @device_set_desc_copy(i32*, i8*) #1

declare dso_local i32 @device_printf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
