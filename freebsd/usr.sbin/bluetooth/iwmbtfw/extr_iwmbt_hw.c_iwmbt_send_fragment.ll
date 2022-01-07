; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_send_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_send_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device_handle = type { i32 }
%struct.iwmbt_hci_cmd = type { i8**, i8*, i32 }

@IWMBT_HCI_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@IWMBT_BULK_OUT_ENDPOINT_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"libusb_bulk_transfer() failed: err=%s, size=%zu\00", align 1
@IWMBT_BULK_IN_ENDPOINT_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"libusb_bulk_transfer() failed: err=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb_device_handle*, i8*, i8*, i8*, i32)* @iwmbt_send_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwmbt_send_fragment(%struct.libusb_device_handle* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb_device_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.iwmbt_hci_cmd*, align 8
  %17 = alloca i32, align 4
  store %struct.libusb_device_handle* %0, %struct.libusb_device_handle** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @IWMBT_HCI_MAX_CMD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = bitcast i8** %21 to %struct.iwmbt_hci_cmd*
  store %struct.iwmbt_hci_cmd* %22, %struct.iwmbt_hci_cmd** %16, align 8
  %23 = mul nuw i64 8, %19
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i8** %21, i32 0, i32 %24)
  %26 = call i32 @htole16(i32 64521)
  %27 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %28 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr i8, i8* %29, i64 1
  %31 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %32 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %35 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %39 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @memcpy(i8** %41, i8* %42, i8* %43)
  %45 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %7, align 8
  %46 = load i32, i32* @IWMBT_BULK_OUT_ENDPOINT_ADDR, align 4
  %47 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %48 = bitcast %struct.iwmbt_hci_cmd* %47 to i8**
  %49 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %50 = call i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd* %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @libusb_bulk_transfer(%struct.libusb_device_handle* %45, i32 %46, i8** %48, i32 %50, i32* %13, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %5
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %58 = call i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd* %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %5
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @libusb_strerror(i32 %61)
  %63 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %16, align 8
  %64 = call i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd* %63)
  %65 = call i32 (i8*, i32, ...) @iwmbt_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

66:                                               ; preds = %55
  %67 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %7, align 8
  %68 = load i32, i32* @IWMBT_BULK_IN_ENDPOINT_ADDR, align 4
  %69 = mul nuw i64 8, %19
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @libusb_bulk_transfer(%struct.libusb_device_handle* %67, i32 %68, i8** %21, i32 %70, i32* %13, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @libusb_strerror(i32 %76)
  %78 = call i32 (i8*, i32, ...) @iwmbt_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

79:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %75, %60
  %81 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @memcpy(i8**, i8*, i8*) #2

declare dso_local i32 @libusb_bulk_transfer(%struct.libusb_device_handle*, i32, i8**, i32, i32*, i32) #2

declare dso_local i32 @IWMBT_HCI_CMD_SIZE(%struct.iwmbt_hci_cmd*) #2

declare dso_local i32 @iwmbt_err(i8*, i32, ...) #2

declare dso_local i32 @libusb_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
