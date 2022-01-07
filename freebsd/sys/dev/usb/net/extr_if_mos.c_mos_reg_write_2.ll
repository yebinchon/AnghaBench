; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_reg_write_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_reg_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@MOS_UR_WRITEREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mos_reg_write_2 error, reg: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mos_softc*, i32, i32)* @mos_reg_write_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos_reg_write_2(%struct.mos_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mos_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device_request, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mos_softc* %0, %struct.mos_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @USETW(i32 %11, i32 %12)
  %14 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MOS_UR_WRITEREG, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @USETW(i32 %26, i32 2)
  %28 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %29 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %28, i32 0, i32 0
  %30 = call i64 @uether_do_request(i32* %29, %struct.usb_device_request* %8, i32* %10, i32 1000)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @uether_do_request(i32*, %struct.usb_device_request*, i32*, i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
