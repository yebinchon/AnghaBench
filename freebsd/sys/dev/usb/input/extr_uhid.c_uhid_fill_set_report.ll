; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_fill_set_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_fill_set_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device_request*, i64, i64, i64, i32)* @uhid_fill_set_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_fill_set_report(%struct.usb_device_request* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_device_request* %0, %struct.usb_device_request** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %12 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @UR_SET_REPORT, align 4
  %15 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @USETW2(i32 %19, i64 %20, i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.usb_device_request*, %struct.usb_device_request** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @USETW(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @USETW2(i32, i64, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
