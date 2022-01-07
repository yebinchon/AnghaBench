; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_init_shuttle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_init_shuttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, i64 }
%struct.usb_device_request = type { i32, i32, i64*, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UDMASS_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Shuttle init returned 0x%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umass_softc*)* @umass_init_shuttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_init_shuttle(%struct.umass_softc* %0) #0 {
  %2 = alloca %struct.umass_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.umass_softc* %0, %struct.umass_softc** %2, align 8
  %5 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @USETW(i32 %10, i32 0)
  %12 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %13 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %14, i64* %17, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 8)
  %24 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %25 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = bitcast [2 x i32]* %4 to i32**
  %28 = call i32 @usbd_do_request(i32 %26, i32* null, %struct.usb_device_request* %3, i32** %27)
  %29 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %30 = load i32, i32* @UDMASS_GEN, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DPRINTF(%struct.umass_softc* %29, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @USETW(i32, i32) #2

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.usb_device_request*, i32**) #2

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
