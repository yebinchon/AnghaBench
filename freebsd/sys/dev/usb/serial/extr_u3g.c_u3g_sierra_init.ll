; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_sierra_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_sierra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_VENDOR = common dso_local global i32 0, align 4
@UR_SET_INTERFACE = common dso_local global i32 0, align 4
@UF_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@UHF_PORT_CONNECTION = common dso_local global i32 0, align 4
@USB_MS_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @u3g_sierra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3g_sierra_init(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %4 = load i32, i32* @UT_VENDOR, align 4
  %5 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @UR_SET_INTERFACE, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UF_DEVICE_REMOTE_WAKEUP, align 4
  %11 = call i32 @USETW(i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UHF_PORT_CONNECTION, align 4
  %15 = call i32 @USETW(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USETW(i32 %17, i32 0)
  %19 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %20 = load i32, i32* @USB_MS_HZ, align 4
  %21 = call i64 @usbd_do_request_flags(%struct.usb_device* %19, i32* null, %struct.usb_device_request* %3, i32* null, i32 0, i32* null, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %1
  ret i32 0
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
