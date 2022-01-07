; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kue_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i64, i32 }

@KUE_CTL_WRITE = common dso_local global i64 0, align 8
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kue_softc*, i64, i64, i32, i8*, i32)* @kue_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kue_ctl(%struct.kue_softc* %0, i64 %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.kue_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_request, align 8
  store %struct.kue_softc* %0, %struct.kue_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @KUE_CTL_WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  br label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @USETW(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USETW(i32 %31, i32 0)
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @USETW(i32 %34, i32 %35)
  %37 = load %struct.kue_softc*, %struct.kue_softc** %7, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @kue_do_request(%struct.kue_softc* %37, %struct.usb_device_request* %13, i8* %38)
  ret i32 %39
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @kue_do_request(%struct.kue_softc*, %struct.usb_device_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
