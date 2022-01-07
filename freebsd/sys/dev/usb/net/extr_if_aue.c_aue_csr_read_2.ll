; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_csr_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_csr_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@AUE_UR_READREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aue_softc*, i32)* @aue_csr_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aue_csr_read_2(%struct.aue_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aue_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.aue_softc* %0, %struct.aue_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @AUE_UR_READREG, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @USETW(i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @USETW(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USETW(i32 %21, i32 2)
  %23 = load %struct.aue_softc*, %struct.aue_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %23, i32 0, i32 0
  %25 = call i64 @uether_do_request(i32* %24, %struct.usb_device_request* %6, i32* %8, i32 1000)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @le16toh(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @uether_do_request(i32*, %struct.usb_device_request*, i32*, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
