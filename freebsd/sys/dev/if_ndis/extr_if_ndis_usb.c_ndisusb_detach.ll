; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, %struct.ndisusb_ep*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.ndisusb_ep = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NDISUSB_STATUS_DETACH = common dso_local global i32 0, align 4
@NDIS_PNP_EVENT_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@NDISUSB_STATUS_SETUP_EP = common dso_local global i32 0, align 4
@NDISUSB_ENDPT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ndisusb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisusb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ndis_softc*, align 8
  %5 = alloca %struct.ndisusb_ep*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ndis_softc* @device_get_softc(i32 %6)
  store %struct.ndis_softc* %7, %struct.ndis_softc** %4, align 8
  %8 = load i32, i32* @NDISUSB_STATUS_DETACH, align 4
  %9 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NDIS_PNP_EVENT_SURPRISE_REMOVED, align 4
  %15 = call i32 @ndis_pnpevent_nic(i32 %13, i32 %14)
  %16 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NDISUSB_STATUS_SETUP_EP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usbd_transfer_unsetup(i32 %26, i32 1)
  %28 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usbd_transfer_unsetup(i32 %31, i32 1)
  br label %33

33:                                               ; preds = %22, %1
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NDISUSB_ENDPT_MAX, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %39, i32 0, i32 2
  %41 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %41, i64 %43
  store %struct.ndisusb_ep* %44, %struct.ndisusb_ep** %5, align 8
  %45 = load %struct.ndisusb_ep*, %struct.ndisusb_ep** %5, align 8
  %46 = getelementptr inbounds %struct.ndisusb_ep, %struct.ndisusb_ep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usbd_transfer_unsetup(i32 %47, i32 1)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ndis_detach(i32 %53)
  %55 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %55, i32 0, i32 1
  %57 = call i32 @mtx_destroy(i32* %56)
  ret i32 0
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @ndis_pnpevent_nic(i32, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @ndis_detach(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
