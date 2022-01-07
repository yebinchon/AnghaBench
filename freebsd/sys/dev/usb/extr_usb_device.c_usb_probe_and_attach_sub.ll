; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_probe_and_attach_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_probe_and_attach_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_attach_arg = type { i32*, %struct.usb_interface* }
%struct.usb_interface = type { i64, i32* }

@USB_IFACE_INDEX_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"device_delete_child() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Device creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Suspend failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_attach_arg*)* @usb_probe_and_attach_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_probe_and_attach_sub(%struct.usb_device* %0, %struct.usb_attach_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_attach_arg* %1, %struct.usb_attach_arg** %5, align 8
  %9 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %10 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %9, i32 0, i32 1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  store %struct.usb_interface* %11, %struct.usb_interface** %6, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @device_is_attached(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %113

29:                                               ; preds = %24
  %30 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @device_delete_child(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @device_add_child(i32* %49, i32* null, i32 -1)
  %51 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %52 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %54 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @device_printf(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %113

62:                                               ; preds = %46
  %63 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %64 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %67 = call i32 @device_set_ivars(i32* %65, %struct.usb_attach_arg* %66)
  %68 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %69 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @device_quiet(i32* %70)
  br label %72

72:                                               ; preds = %62, %41
  %73 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %74 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %79 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @device_probe_and_attach(i32* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %72
  %84 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %85 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %87 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @device_set_ivars(i32* %88, %struct.usb_attach_arg* null)
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %83
  %96 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @DEVICE_SUSPEND(i32* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %104 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @device_printf(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %83
  store i32 0, i32* %3, align 4
  br label %113

109:                                              ; preds = %72
  %110 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %108, %57, %28, %17
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local i64 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.usb_attach_arg*) #1

declare dso_local i32 @device_quiet(i32*) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @DEVICE_SUSPEND(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
