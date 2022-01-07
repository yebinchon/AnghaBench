; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_probe_iface_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_probe_iface_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_config_descriptor = type { i32 }

@UHSO_IF_NET = common dso_local global i32 0, align 4
@UHSO_IF_MUX = common dso_local global i32 0, align 4
@UHSO_PORT_SERIAL = common dso_local global i32 0, align 4
@UHSO_PORT_NETWORK = common dso_local global i32 0, align 4
@UHSO_PORT_TYPE_NETWORK = common dso_local global i32 0, align 4
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UHSO_PORT_TYPE_DIAG = common dso_local global i32 0, align 4
@UHSO_PORT_TYPE_MODEM = common dso_local global i32 0, align 4
@UHSO_PORT_TYPE_DIAG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @uhso_probe_iface_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_probe_iface_static(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device* %7)
  store %struct.usb_config_descriptor* %8, %struct.usb_config_descriptor** %6, align 8
  %9 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %10 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 3
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %34 [
    i32 0, label %15
    i32 1, label %24
    i32 2, label %29
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @UHSO_IF_NET, align 4
  %17 = load i32, i32* @UHSO_IF_MUX, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %20 = load i32, i32* @UHSO_PORT_NETWORK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UHSO_PORT_TYPE_NETWORK, align 4
  %23 = call i32 @UHSO_IFACE_SPEC(i32 %18, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %13
  %25 = load i32, i32* @UHSO_IF_BULK, align 4
  %26 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %27 = load i32, i32* @UHSO_PORT_TYPE_DIAG, align 4
  %28 = call i32 @UHSO_IFACE_SPEC(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %13
  %30 = load i32, i32* @UHSO_IF_BULK, align 4
  %31 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %32 = load i32, i32* @UHSO_PORT_TYPE_MODEM, align 4
  %33 = call i32 @UHSO_IFACE_SPEC(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %13
  br label %62

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %61 [
    i32 0, label %37
    i32 1, label %46
    i32 2, label %51
    i32 3, label %56
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @UHSO_IF_NET, align 4
  %39 = load i32, i32* @UHSO_IF_MUX, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %42 = load i32, i32* @UHSO_PORT_NETWORK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UHSO_PORT_TYPE_NETWORK, align 4
  %45 = call i32 @UHSO_IFACE_SPEC(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %35
  %47 = load i32, i32* @UHSO_IF_BULK, align 4
  %48 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %49 = load i32, i32* @UHSO_PORT_TYPE_DIAG2, align 4
  %50 = call i32 @UHSO_IFACE_SPEC(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %35
  %52 = load i32, i32* @UHSO_IF_BULK, align 4
  %53 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %54 = load i32, i32* @UHSO_PORT_TYPE_MODEM, align 4
  %55 = call i32 @UHSO_IFACE_SPEC(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %35
  %57 = load i32, i32* @UHSO_IF_BULK, align 4
  %58 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %59 = load i32, i32* @UHSO_PORT_TYPE_DIAG, align 4
  %60 = call i32 @UHSO_IFACE_SPEC(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61, %34
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56, %51, %46, %37, %29, %24, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device*) #1

declare dso_local i32 @UHSO_IFACE_SPEC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
