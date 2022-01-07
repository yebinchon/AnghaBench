; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_get_partnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_get_partnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uslcom_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@USLCOM_READ = common dso_local global i32 0, align 4
@USLCOM_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@USLCOM_GET_PARTNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GET_PARTNUM failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uslcom_softc*)* @uslcom_get_partnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uslcom_get_partnum(%struct.uslcom_softc* %0) #0 {
  %2 = alloca %struct.uslcom_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i64, align 8
  store %struct.uslcom_softc* %0, %struct.uslcom_softc** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @USLCOM_READ, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @USLCOM_VENDOR_SPECIFIC, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @USLCOM_GET_PARTNUM, align 4
  %12 = call i32 @USETW(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uslcom_softc*, %struct.uslcom_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USETW(i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USETW(i32 %20, i32 8)
  %22 = load %struct.uslcom_softc*, %struct.uslcom_softc** %2, align 8
  %23 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @usbd_do_request_flags(i32 %24, i32* null, %struct.usb_device_request* %3, i64* %4, i32 0, i32* null, i32 1000)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i64*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
