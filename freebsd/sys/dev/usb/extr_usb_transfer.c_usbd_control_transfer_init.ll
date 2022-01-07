; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_control_transfer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_control_transfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i32, i32 }

@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@UT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @usbd_control_transfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_control_transfer_init(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @usbd_copy_out(i32 %6, i32 0, %struct.usb_device_request* %3, i32 8)
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @UGETW(i32 %9)
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @UE_DIR_IN, align 4
  %15 = load i32, i32* @UE_DIR_OUT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UT_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @UE_DIR_IN, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @UE_DIR_OUT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  ret void
}

declare dso_local i32 @usbd_copy_out(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
