; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_complete_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@CVMX_USB_CALLBACK_TRANSFER_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i32, i32, i8*)* @octusb_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_complete_cb(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.octusb_td*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @CVMX_USB_CALLBACK_TRANSFER_COMPLETE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %54

20:                                               ; preds = %7
  %21 = load i8*, i8** %14, align 8
  %22 = bitcast i8* %21 to %struct.octusb_td*
  store %struct.octusb_td* %22, %struct.octusb_td** %15, align 8
  %23 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %24 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %28 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %33 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %37 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 130, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %20, %20
  %42 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %43 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %45 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %54

46:                                               ; preds = %20
  %47 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %48 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %50 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %20
  %52 = load %struct.octusb_td*, %struct.octusb_td** %15, align 8
  %53 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %19, %51, %46, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
