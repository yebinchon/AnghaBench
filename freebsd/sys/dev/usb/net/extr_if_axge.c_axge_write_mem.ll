; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_write_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axge_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axge_softc*, i32, i32, i32, i8*, i32)* @axge_write_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_write_mem(%struct.axge_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.axge_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_request, align 4
  store %struct.axge_softc* %0, %struct.axge_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.axge_softc*, %struct.axge_softc** %7, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %14, i32 %15)
  %17 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @USETW(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @USETW(i32 %30, i32 %31)
  %33 = load %struct.axge_softc*, %struct.axge_softc** %7, align 8
  %34 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %33, i32 0, i32 0
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @uether_do_request(i32* %34, %struct.usb_device_request* %13, i8* %35, i32 1000)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %38, %6
  ret void
}

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @uether_do_request(i32*, %struct.usb_device_request*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
