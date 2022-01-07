; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_hci_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_hci_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device_handle = type { i32 }
%struct.iwmbt_hci_cmd = type { i32 }

@LIBUSB_REQUEST_TYPE_CLASS = common dso_local global i32 0, align 4
@LIBUSB_RECIPIENT_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"libusb_control_transfer() failed: err=%s\00", align 1
@IWMBT_INTERRUPT_ENDPOINT_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"libusb_interrupt_transfer() failed: err=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb_device_handle*, %struct.iwmbt_hci_cmd*, i8*, i32, i32*, i32)* @iwmbt_hci_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwmbt_hci_command(%struct.libusb_device_handle* %0, %struct.iwmbt_hci_cmd* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.libusb_device_handle*, align 8
  %9 = alloca %struct.iwmbt_hci_cmd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.libusb_device_handle* %0, %struct.libusb_device_handle** %8, align 8
  store %struct.iwmbt_hci_cmd* %1, %struct.iwmbt_hci_cmd** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %16 = load i32, i32* @LIBUSB_REQUEST_TYPE_CLASS, align 4
  %17 = load i32, i32* @LIBUSB_RECIPIENT_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %9, align 8
  %20 = bitcast %struct.iwmbt_hci_cmd* %19 to i32*
  %21 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %9, align 8
  %22 = call i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd* %21)
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @libusb_control_transfer(%struct.libusb_device_handle* %15, i32 %18, i32 0, i32 0, i32 0, i32* %20, i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @libusb_strerror(i32 %28)
  %30 = call i32 @iwmbt_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %6
  %33 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %8, align 8
  %34 = load i32, i32* @IWMBT_INTERRUPT_ENDPOINT_ADDR, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @libusb_interrupt_transfer(%struct.libusb_device_handle* %33, i32 %34, i8* %35, i32 %36, i32* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @libusb_strerror(i32 %43)
  %45 = call i32 @iwmbt_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %27
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @libusb_control_transfer(%struct.libusb_device_handle*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd*) #1

declare dso_local i32 @iwmbt_err(i8*, i32) #1

declare dso_local i32 @libusb_strerror(i32) #1

declare dso_local i32 @libusb_interrupt_transfer(%struct.libusb_device_handle*, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
