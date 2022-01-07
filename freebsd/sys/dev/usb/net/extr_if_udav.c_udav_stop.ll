; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.udav_softc* }
%struct.udav_softc = type { i32, i32*, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@UDAV_FLAG_NO_PHY = common dso_local global i32 0, align 4
@UDAV_FLAG_LINK = common dso_local global i32 0, align 4
@UDAV_BULK_DT_WR = common dso_local global i64 0, align 8
@UDAV_BULK_DT_RD = common dso_local global i64 0, align 8
@UDAV_INTR_DT_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @udav_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_stop(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.udav_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %5, i32 0, i32 0
  %7 = load %struct.udav_softc*, %struct.udav_softc** %6, align 8
  store %struct.udav_softc* %7, %struct.udav_softc** %3, align 8
  %8 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %9 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %8, i32 0, i32 2
  %10 = call %struct.ifnet* @uether_getifp(i32* %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @UDAV_LOCK_ASSERT(%struct.udav_softc* %11, i32 %12)
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %21 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UDAV_FLAG_NO_PHY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @UDAV_FLAG_LINK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %30 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %35 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @UDAV_BULK_DT_WR, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usbd_transfer_stop(i32 %39)
  %41 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %42 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @UDAV_BULK_DT_RD, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usbd_transfer_stop(i32 %46)
  %48 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %49 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @UDAV_INTR_DT_RD, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usbd_transfer_stop(i32 %53)
  %55 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %56 = call i32 @udav_reset(%struct.udav_softc* %55)
  ret void
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @UDAV_LOCK_ASSERT(%struct.udav_softc*, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @udav_reset(%struct.udav_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
