; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cue_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i64, i32 }

@CUE_CMD_READSRAM = common dso_local global i64 0, align 8
@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cue_softc*, i64, i32, i8*, i32)* @cue_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cue_mem(%struct.cue_softc* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.cue_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device_request, align 8
  store %struct.cue_softc* %0, %struct.cue_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @CUE_CMD_READSRAM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  br label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 3
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @USETW(i32 %25, i32 0)
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @USETW(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @USETW(i32 %32, i32 %33)
  %35 = load %struct.cue_softc*, %struct.cue_softc** %6, align 8
  %36 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %35, i32 0, i32 0
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @uether_do_request(i32* %36, %struct.usb_device_request* %11, i8* %37, i32 1000)
  ret i32 %38
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @uether_do_request(i32*, %struct.usb_device_request*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
