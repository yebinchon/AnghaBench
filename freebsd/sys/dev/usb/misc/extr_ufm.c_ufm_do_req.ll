; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_do_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_do_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufm_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufm_softc*, i32, i32, i32, i32*)* @ufm_do_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufm_do_req(%struct.ufm_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufm_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_request, align 4
  %14 = alloca [1 x i32], align 4
  store %struct.ufm_softc* %0, %struct.ufm_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @USETW(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @USETW(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USETW(i32 %28, i32 1)
  %30 = load %struct.ufm_softc*, %struct.ufm_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %34 = call i32 @usbd_do_request(i32 %32, i32* null, %struct.usb_device_request* %13, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %5
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
