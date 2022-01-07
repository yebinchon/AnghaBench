; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_tr_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_tr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i64 0, align 8
@UDMASS_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"transfer error, %s -> reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i64)* @umass_tr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_tr_error(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.umass_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.umass_softc* %7, %struct.umass_softc** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @USB_ERR_CANCELLED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %13 = load i32, i32* @UDMASS_GEN, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @usbd_errstr(i64 %14)
  %16 = call i32 @DPRINTF(%struct.umass_softc* %12, i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %19 = call i32 @umass_cancel_ccb(%struct.umass_softc* %18)
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @umass_cancel_ccb(%struct.umass_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
