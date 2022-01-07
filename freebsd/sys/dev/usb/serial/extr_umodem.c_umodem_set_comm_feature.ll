; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_set_comm_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_set_comm_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }
%struct.usb_cdc_abstract_state = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"feature=%d state=%d\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_COMM_FEATURE = common dso_local global i32 0, align 4
@UCDC_ABSTRACT_STATE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i64, i32, i32)* @umodem_set_comm_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umodem_set_comm_feature(%struct.usb_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 8
  %10 = alloca %struct.usb_cdc_abstract_state, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @UCDC_SET_COMM_FEATURE, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @USETW(i32 %19, i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %22, i64* %25, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UCDC_ABSTRACT_STATE_LENGTH, align 4
  %32 = call i32 @USETW(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.usb_cdc_abstract_state, %struct.usb_cdc_abstract_state* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @USETW(i32 %34, i32 %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %38 = call i32 @usbd_do_request(%struct.usb_device* %37, i32* null, %struct.usb_device_request* %9, %struct.usb_cdc_abstract_state* %10)
  ret i32 %38
}

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, i32*, %struct.usb_device_request*, %struct.usb_cdc_abstract_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
