; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_clear_stall_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_clear_stall_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.udbp_softc = type { i32, %struct.usb_xfer** }

@UDBP_T_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"stall cleared\0A\00", align 1
@UDBP_FLAG_READ_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udbp_bulk_read_clear_stall_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbp_bulk_read_clear_stall_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udbp_softc*, align 8
  %6 = alloca %struct.usb_xfer*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = call %struct.udbp_softc* @usbd_xfer_softc(%struct.usb_xfer* %7)
  store %struct.udbp_softc* %8, %struct.udbp_softc** %5, align 8
  %9 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %10 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %9, i32 0, i32 1
  %11 = load %struct.usb_xfer**, %struct.usb_xfer*** %10, align 8
  %12 = load i64, i64* @UDBP_T_RD, align 8
  %13 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %11, i64 %12
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %13, align 8
  store %struct.usb_xfer* %14, %struct.usb_xfer** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %17 = call i64 @usbd_clear_stall_callback(%struct.usb_xfer* %15, %struct.usb_xfer* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @UDBP_FLAG_READ_STALL, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %24 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %28 = call i32 @usbd_transfer_start(%struct.usb_xfer* %27)
  br label %29

29:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.udbp_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i64 @usbd_clear_stall_callback(%struct.usb_xfer*, %struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_transfer_start(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
