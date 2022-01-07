; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.smsc_softc = type { i32* }
%struct.ifnet = type { i32, i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setting MAC address failed\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@SMSC_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @smsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.smsc_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.smsc_softc* %6, %struct.smsc_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc* %9, i32 %10)
  %12 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = call i32 @IF_LLADDR(%struct.ifnet* %13)
  %15 = call i64 @smsc_setmacaddress(%struct.smsc_softc* %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %19 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %73

28:                                               ; preds = %20
  %29 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %30 = call i32 @smsc_stop(%struct.usb_ether* %29)
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFCAP_RXCSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @IFCAP_RXCSUM, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @IFCAP_RXCSUM, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %37, %28
  %51 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %52 = call i32 @smsc_reset(%struct.smsc_softc* %51)
  %53 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %54 = call i32 @smsc_setmulti(%struct.usb_ether* %53)
  %55 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %56 = call i32 @smsc_sethwcsum(%struct.smsc_softc* %55)
  %57 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @SMSC_BULK_DT_WR, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usbd_xfer_set_stall(i32 %62)
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = call i32 @smsc_ifmedia_upd(%struct.ifnet* %69)
  %71 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %72 = call i32 @smsc_start(%struct.usb_ether* %71)
  br label %73

73:                                               ; preds = %50, %27
  ret void
}

declare dso_local %struct.smsc_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc*, i32) #1

declare dso_local i64 @smsc_setmacaddress(%struct.smsc_softc*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @smsc_dbg_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i32 @smsc_stop(%struct.usb_ether*) #1

declare dso_local i32 @smsc_reset(%struct.smsc_softc*) #1

declare dso_local i32 @smsc_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @smsc_sethwcsum(%struct.smsc_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @smsc_ifmedia_upd(%struct.ifnet*) #1

declare dso_local i32 @smsc_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
