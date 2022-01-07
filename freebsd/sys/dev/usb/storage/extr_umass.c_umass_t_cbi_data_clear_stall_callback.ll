; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_data_clear_stall_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_data_clear_stall_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32* }

@UMASS_T_CBI_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i64, i64, i32)* @umass_t_cbi_data_clear_stall_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_cbi_data_clear_stall_callback(%struct.usb_xfer* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.umass_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %11 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.umass_softc* %11, %struct.umass_softc** %9, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %39 [
    i32 128, label %14
    i32 129, label %27
  ]

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @UMASS_T_CBI_STATUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.umass_softc*, %struct.umass_softc** %9, align 8
  %21 = call i32 @umass_cbi_start_status(%struct.umass_softc* %20)
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.umass_softc*, %struct.umass_softc** %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @umass_transfer_start(%struct.umass_softc* %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %29 = load %struct.umass_softc*, %struct.umass_softc** %9, align 8
  %30 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usbd_clear_stall_callback(%struct.usb_xfer* %28, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %15

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @umass_tr_error(%struct.usb_xfer* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %38, %26
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @umass_cbi_start_status(%struct.umass_softc*) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i64) #1

declare dso_local i32 @usbd_clear_stall_callback(%struct.usb_xfer*, i32) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
