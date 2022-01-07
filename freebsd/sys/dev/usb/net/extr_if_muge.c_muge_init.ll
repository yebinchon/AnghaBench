; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.muge_softc = type { i32* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Calling muge_init.\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"setting MAC address failed\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MUGE_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @muge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.muge_softc* %6, %struct.muge_softc** %3, align 8
  %7 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %8 = call i32 @muge_dbg_printf(%struct.muge_softc* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %10 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %11, i32 %12)
  %14 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = call i32 @IF_LLADDR(%struct.ifnet* %15)
  %17 = call i64 @lan78xx_setmacaddress(%struct.muge_softc* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %21 = call i32 @muge_dbg_printf(%struct.muge_softc* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %55

30:                                               ; preds = %22
  %31 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %32 = call i32 @muge_stop(%struct.usb_ether* %31)
  %33 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %34 = call i32 @muge_reset(%struct.muge_softc* %33)
  %35 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %36 = call i32 @muge_setmulti(%struct.usb_ether* %35)
  %37 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %38 = call i32 @muge_sethwcsum(%struct.muge_softc* %37)
  %39 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @MUGE_BULK_DT_WR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usbd_xfer_set_stall(i32 %44)
  %46 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = call i32 @muge_ifmedia_upd(%struct.ifnet* %51)
  %53 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %54 = call i32 @muge_start(%struct.usb_ether* %53)
  br label %55

55:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i64 @lan78xx_setmacaddress(%struct.muge_softc*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @muge_stop(%struct.usb_ether*) #1

declare dso_local i32 @muge_reset(%struct.muge_softc*) #1

declare dso_local i32 @muge_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @muge_sethwcsum(%struct.muge_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @muge_ifmedia_upd(%struct.ifnet*) #1

declare dso_local i32 @muge_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
