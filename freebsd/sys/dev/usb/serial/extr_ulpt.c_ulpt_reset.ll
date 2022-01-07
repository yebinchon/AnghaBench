; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpt_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UR_SOFT_RESET = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_OTHER = common dso_local global i32 0, align 4
@USB_MS_HZ = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ulpt_softc*)* @ulpt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulpt_reset(%struct.ulpt_softc* %0) #0 {
  %2 = alloca %struct.ulpt_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  store %struct.ulpt_softc* %0, %struct.ulpt_softc** %2, align 8
  %4 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @UR_SOFT_RESET, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @USETW(i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @USETW(i32 %11, i32 %14)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USETW(i32 %17, i32 0)
  %19 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* @UT_WRITE_CLASS_OTHER, align 4
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %27, i32 0, i32 0
  %29 = load i32, i32* @USB_MS_HZ, align 4
  %30 = mul nsw i32 2, %29
  %31 = call i64 @usbd_do_request_flags(i32 %26, i32* %28, %struct.usb_device_request* %3, i32* null, i32 0, i32* null, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %1
  %34 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %39, i32 0, i32 0
  %41 = load i32, i32* @USB_MS_HZ, align 4
  %42 = mul nsw i32 2, %41
  %43 = call i64 @usbd_do_request_flags(i32 %38, i32* %40, %struct.usb_device_request* %3, i32* null, i32 0, i32* null, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.ulpt_softc*, %struct.ulpt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
