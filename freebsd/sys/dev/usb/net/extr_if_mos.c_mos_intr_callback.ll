; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.mos_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"actlen %i\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @mos_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mos_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.mos_softc* %11, %struct.mos_softc** %5, align 8
  %12 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %12, i32 0, i32 0
  %14 = call %struct.ifnet* @uether_getifp(i32* %13)
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %17 = call i32 @if_inc_counter(%struct.ifnet* %15, i32 %16, i32 1)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %9, i32* null, i32* null, i32* null)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = call i32 @USB_GET_STATE(%struct.usb_xfer* %22)
  switch i32 %23, label %31 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %2
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %25, i32 0)
  store %struct.usb_page_cache* %26, %struct.usb_page_cache** %7, align 8
  %27 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %28 = call i32 @usbd_copy_out(%struct.usb_page_cache* %27, i32 0, i32* %8, i32 4)
  br label %29

29:                                               ; preds = %2, %24
  br label %30

30:                                               ; preds = %35, %29
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %36)
  br label %30

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  ret void
}

declare dso_local %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MOS_DPRINTFN(i8*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
