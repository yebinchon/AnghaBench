; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_load_ddc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_hw.c_iwmbt_load_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device_handle = type { i32 }
%struct.iwmbt_firmware = type { i32, i64*, i32 }
%struct.iwmbt_hci_cmd = type { i64, i32, i32 }

@IWMBT_HCI_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"file=%s, size=%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"transferring %d bytes, offset %d\00", align 1
@IWMBT_HCI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Intel Write DDC failed: code=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwmbt_load_ddc(%struct.libusb_device_handle* %0, %struct.iwmbt_firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb_device_handle*, align 8
  %5 = alloca %struct.iwmbt_firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iwmbt_hci_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.libusb_device_handle* %0, %struct.libusb_device_handle** %4, align 8
  store %struct.iwmbt_firmware* %1, %struct.iwmbt_firmware** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @IWMBT_HCI_MAX_CMD_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = bitcast i32* %17 to %struct.iwmbt_hci_cmd*
  store %struct.iwmbt_hci_cmd* %18, %struct.iwmbt_hci_cmd** %12, align 8
  %19 = load %struct.iwmbt_firmware*, %struct.iwmbt_firmware** %5, align 8
  %20 = getelementptr inbounds %struct.iwmbt_firmware, %struct.iwmbt_firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.iwmbt_firmware*, %struct.iwmbt_firmware** %5, align 8
  %23 = getelementptr inbounds %struct.iwmbt_firmware, %struct.iwmbt_firmware* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i32, ...) @iwmbt_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %97, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %27
  %31 = mul nuw i64 4, %15
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %17, i32 0, i32 %32)
  %34 = call i32 @htole16(i32 64651)
  %35 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %36 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iwmbt_firmware*, %struct.iwmbt_firmware** %5, align 8
  %38 = getelementptr inbounds %struct.iwmbt_firmware, %struct.iwmbt_firmware* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %46 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %48 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iwmbt_firmware*, %struct.iwmbt_firmware** %5, align 8
  %51 = getelementptr inbounds %struct.iwmbt_firmware, %struct.iwmbt_firmware* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load %struct.iwmbt_firmware*, %struct.iwmbt_firmware** %5, align 8
  %57 = getelementptr inbounds %struct.iwmbt_firmware, %struct.iwmbt_firmware* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @XMIN(i64 %62, i32 %63)
  %65 = call i32 @memcpy(i32 %49, i64* %55, i32 %64)
  %66 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %67 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, i32, ...) @iwmbt_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %73 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %80 = getelementptr inbounds %struct.iwmbt_hci_cmd, %struct.iwmbt_hci_cmd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load %struct.libusb_device_handle*, %struct.libusb_device_handle** %4, align 8
  %87 = load %struct.iwmbt_hci_cmd*, %struct.iwmbt_hci_cmd** %12, align 8
  %88 = mul nuw i64 4, %15
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @IWMBT_HCI_CMD_TIMEOUT, align 4
  %91 = call i32 @iwmbt_hci_command(%struct.libusb_device_handle* %86, %struct.iwmbt_hci_cmd* %87, i32* %17, i32 %89, i32* %9, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %30
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i8*, i32, ...) @iwmbt_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %99

97:                                               ; preds = %30
  br label %27

98:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iwmbt_debug(i8*, i32, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @memcpy(i32, i64*, i32) #2

declare dso_local i32 @XMIN(i64, i32) #2

declare dso_local i32 @iwmbt_hci_command(%struct.libusb_device_handle*, %struct.iwmbt_hci_cmd*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
