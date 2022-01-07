; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_MSR = common dso_local global i32 0, align 4
@MSR_RE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AXGE_FLAG_LINK = common dso_local global i32 0, align 4
@AXGE_BULK_DT_WR = common dso_local global i64 0, align 8
@AXGE_BULK_DT_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_stop(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.axge_softc* %7, %struct.axge_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %10, i32 %11)
  %13 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %14 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %15 = load i32, i32* @AXGE_MSR, align 4
  %16 = call i32 @axge_read_cmd_2(%struct.axge_softc* %13, i32 %14, i32 2, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @MSR_RE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %22 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %23 = load i32, i32* @AXGE_MSR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @axge_write_cmd_2(%struct.axge_softc* %21, i32 %22, i32 2, i32 %23, i32 %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = icmp ne %struct.ifnet* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %1
  %38 = load i32, i32* @AXGE_FLAG_LINK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @AXGE_BULK_DT_WR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_transfer_stop(i32 %49)
  %51 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @AXGE_BULK_DT_RD, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usbd_transfer_stop(i32 %56)
  ret void
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #1

declare dso_local i32 @axge_read_cmd_2(%struct.axge_softc*, i32, i32, i32) #1

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
