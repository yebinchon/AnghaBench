; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_find_data_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_find_data_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.usb_interface_descriptor = type { i64, i64, i32 }
%struct.usb_interface = type { i32 }

@UICLASS_CDC_DATA = common dso_local global i64 0, align 8
@UISUBCLASS_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Match at index %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_attach_arg*, i32, i32*, i32*)* @umodem_find_data_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umodem_find_data_iface(%struct.usb_attach_arg* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  store %struct.usb_attach_arg* %0, %struct.usb_attach_arg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %12 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.usb_interface* @usbd_get_iface(i32 %13, i32 %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = icmp eq %struct.usb_interface* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %48

19:                                               ; preds = %4
  %20 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %21 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %20)
  store %struct.usb_interface_descriptor* %21, %struct.usb_interface_descriptor** %9, align 8
  %22 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %23 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UICLASS_CDC_DATA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UISUBCLASS_DATA, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27, %19
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %48

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %27
  %40 = load i32*, i32** %8, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %45 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %37, %18
  ret void
}

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
