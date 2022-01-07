; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i32, i32, i32, i32, i32 }

@HID_MODE = common dso_local global i32 0, align 4
@ATP_ENABLED = common dso_local global i32 0, align 4
@ATP_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.atp_softc* @device_get_softc(i32 %4)
  store %struct.atp_softc* %5, %struct.atp_softc** %3, align 8
  %6 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %7 = load i32, i32* @HID_MODE, align 4
  %8 = call i32 @atp_set_device_mode(%struct.atp_softc* %6, i32 %7)
  %9 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %13 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %12, i32 0, i32 4
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %16 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATP_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %23 = call i32 @atp_disable(%struct.atp_softc* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %26 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %25, i32 0, i32 1
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %29 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %28, i32 0, i32 3
  %30 = call i32 @usb_fifo_detach(i32* %29)
  %31 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %32 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATP_N_TRANSFER, align 4
  %35 = call i32 @usbd_transfer_unsetup(i32 %33, i32 %34)
  %36 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %36, i32 0, i32 1
  %38 = call i32 @mtx_destroy(i32* %37)
  ret i32 0
}

declare dso_local %struct.atp_softc* @device_get_softc(i32) #1

declare dso_local i32 @atp_set_device_mode(%struct.atp_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @atp_disable(%struct.atp_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usb_fifo_detach(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
