; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_usb_msc_read_10.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_usb_msc_read_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.bbb_transfer = type { i32 }

@UICLASS_MASS = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@DIR_IN = common dso_local global i32 0, align 4
@SCSI_FIXED_BLOCK_SIZE = common dso_local global i32 0, align 4
@USB_MS_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_msc_read_10(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bbb_transfer*, align 8
  %13 = alloca [10 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  store i32 40, i32* %15, align 16
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 24
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 16
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 0
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 5
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 6
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 7
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 8
  store i32 %33, i32* %34, align 16
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 9
  store i32 0, i32* %35, align 4
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @UICLASS_MASS, align 4
  %39 = call %struct.bbb_transfer* @bbb_attach(%struct.usb_device* %36, i32 %37, i32 %38)
  store %struct.bbb_transfer* %39, %struct.bbb_transfer** %12, align 8
  %40 = load %struct.bbb_transfer*, %struct.bbb_transfer** %12, align 8
  %41 = icmp eq %struct.bbb_transfer* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %57

44:                                               ; preds = %5
  %45 = load %struct.bbb_transfer*, %struct.bbb_transfer** %12, align 8
  %46 = load i32, i32* @DIR_IN, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @SCSI_FIXED_BLOCK_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %52 = load i32, i32* @USB_MS_HZ, align 4
  %53 = call i32 @bbb_command_start(%struct.bbb_transfer* %45, i32 %46, i32 0, i8* %47, i32 %50, i32* %51, i32 10, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.bbb_transfer*, %struct.bbb_transfer** %12, align 8
  %55 = call i32 @bbb_detach(%struct.bbb_transfer* %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %44, %42
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.bbb_transfer* @bbb_attach(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @bbb_command_start(%struct.bbb_transfer*, i32, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @bbb_detach(%struct.bbb_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
