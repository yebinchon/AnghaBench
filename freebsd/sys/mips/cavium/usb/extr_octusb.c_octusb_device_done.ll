; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.octusb_td**, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.octusb_td = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i64)* @octusb_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_device_done(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.octusb_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @USB_BUS_LOCK_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %13, i32 %16, i64 %17)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %2
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 0
  %30 = load %struct.octusb_td**, %struct.octusb_td*** %29, align 8
  %31 = getelementptr inbounds %struct.octusb_td*, %struct.octusb_td** %30, i64 0
  %32 = load %struct.octusb_td*, %struct.octusb_td** %31, align 8
  store %struct.octusb_td* %32, %struct.octusb_td** %5, align 8
  %33 = load %struct.octusb_td*, %struct.octusb_td** %5, align 8
  %34 = call i32 @octusb_host_free_endpoint(%struct.octusb_td* %33)
  br label %35

35:                                               ; preds = %27, %24
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @usbd_transfer_done(%struct.usb_xfer* %36, i64 %37)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32, i64) #1

declare dso_local i32 @octusb_host_free_endpoint(%struct.octusb_td*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
