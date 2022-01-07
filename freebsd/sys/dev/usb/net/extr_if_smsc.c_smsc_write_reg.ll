; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_write_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@SMSC_UR_WRITE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to write register 0x%0x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc_softc*, i32, i32)* @smsc_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_write_reg(%struct.smsc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.smsc_softc* %0, %struct.smsc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.smsc_softc*, %struct.smsc_softc** %4, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @htole32(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SMSC_UR_WRITE_REG, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USETW(i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @USETW(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USETW(i32 %27, i32 4)
  %29 = load %struct.smsc_softc*, %struct.smsc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %29, i32 0, i32 0
  %31 = call i64 @uether_do_request(i32* %30, %struct.usb_device_request* %7, i32* %8, i32 1000)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.smsc_softc*, %struct.smsc_softc** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @smsc_warn_printf(%struct.smsc_softc* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  ret i32 %40
}

declare dso_local i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @uether_do_request(i32*, %struct.usb_device_request*, i32*, i32) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
