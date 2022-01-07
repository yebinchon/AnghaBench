; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_writemac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_writemac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@MOS_UR_WRITEREG = common dso_local global i32 0, align 4
@MOS_MAC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mos_writemac error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mos_softc*, i32*)* @mos_writemac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos_writemac(%struct.mos_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mos_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca i64, align 8
  store %struct.mos_softc* %0, %struct.mos_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @MOS_UR_WRITEREG, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @USETW(i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MOS_MAC, align 4
  %18 = call i32 @USETW(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %22 = call i32 @USETW(i32 %20, i32 %21)
  %23 = load %struct.mos_softc*, %struct.mos_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @uether_do_request(i32* %24, %struct.usb_device_request* %6, i32* %25, i32 1000)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @uether_do_request(i32*, %struct.usb_device_request*, i32*, i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
