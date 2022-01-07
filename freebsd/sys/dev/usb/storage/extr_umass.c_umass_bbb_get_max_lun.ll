; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_bbb_get_max_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_bbb_get_max_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i8*, i32, i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_BBB_GET_MAX_LUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Get Max Lun not supported (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.umass_softc*)* @umass_bbb_get_max_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umass_bbb_get_max_lun(%struct.umass_softc* %0) #0 {
  %2 = alloca %struct.umass_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* @UR_BBB_GET_MAX_LUN, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @USETW(i32 %11, i32 0)
  %13 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %14 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %15, i64* %18, align 8
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @USETW(i32 %23, i32 1)
  %25 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %26 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @usbd_do_request(i32 %27, i32* null, %struct.usb_device_request* %3, i64* %5)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %32 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %33 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i8* @usbd_errstr(i64 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request(i32, i32*, %struct.usb_device_request*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
