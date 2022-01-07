; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_emul.c_usb_data_xfer_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_emul.c_usb_data_xfer_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_xfer_block = type { i32, i32, i64, i64, i8*, i8* }
%struct.usb_data_xfer = type { i32, i64, %struct.usb_data_xfer_block* }

@USB_MAX_XFER_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_data_xfer_block* @usb_data_xfer_append(%struct.usb_data_xfer* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.usb_data_xfer_block*, align 8
  %7 = alloca %struct.usb_data_xfer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_data_xfer_block*, align 8
  store %struct.usb_data_xfer* %0, %struct.usb_data_xfer** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %14 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @USB_MAX_XFER_BLOCKS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.usb_data_xfer_block* null, %struct.usb_data_xfer_block** %6, align 8
  br label %57

19:                                               ; preds = %5
  %20 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %21 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %20, i32 0, i32 2
  %22 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %21, align 8
  %23 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %24 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %22, i64 %25
  store %struct.usb_data_xfer_block* %26, %struct.usb_data_xfer_block** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %29 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %32 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %35 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %38 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %40 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  %42 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %44 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %48 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = load i32, i32* @USB_MAX_XFER_BLOCKS, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %55 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %12, align 8
  store %struct.usb_data_xfer_block* %56, %struct.usb_data_xfer_block** %6, align 8
  br label %57

57:                                               ; preds = %19, %18
  %58 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %6, align 8
  ret %struct.usb_data_xfer_block* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
