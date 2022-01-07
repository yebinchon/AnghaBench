; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_softc = type { i32, i32, i64, i32, i32 }

@UHID_N_TRANSFER = common dso_local global i32 0, align 4
@UHID_FLAG_STATIC_DESC = common dso_local global i32 0, align 4
@M_USBDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uhid_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhid_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uhid_softc* @device_get_softc(i32 %4)
  store %struct.uhid_softc* %5, %struct.uhid_softc** %3, align 8
  %6 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %6, i32 0, i32 4
  %8 = call i32 @usb_fifo_detach(i32* %7)
  %9 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UHID_N_TRANSFER, align 4
  %13 = call i32 @usbd_transfer_unsetup(i32 %11, i32 %12)
  %14 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UHID_FLAG_STATIC_DESC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @M_USBDEV, align 4
  %30 = call i32 @free(i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.uhid_softc*, %struct.uhid_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %33, i32 0, i32 1
  %35 = call i32 @mtx_destroy(i32* %34)
  ret i32 0
}

declare dso_local %struct.uhid_softc* @device_get_softc(i32) #1

declare dso_local i32 @usb_fifo_detach(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
