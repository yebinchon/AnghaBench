; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_csum_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_csum_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CTCR_IP = common dso_local global i32 0, align 4
@CTCR_TCP = common dso_local global i32 0, align 4
@CTCR_UDP = common dso_local global i32 0, align 4
@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_CTCR = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@CRCR_IP = common dso_local global i32 0, align 4
@CRCR_TCP = common dso_local global i32 0, align 4
@CRCR_UDP = common dso_local global i32 0, align 4
@AXGE_CRCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axge_csum_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_csum_cfg(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.axge_softc* %7, %struct.axge_softc** %3, align 8
  %8 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %8, i32 %9)
  %11 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %12 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %11)
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFCAP_TXCSUM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @CTCR_IP, align 4
  %21 = load i32, i32* @CTCR_TCP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CTCR_UDP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %29 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %30 = load i32, i32* @AXGE_CTCR, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @axge_write_cmd_1(%struct.axge_softc* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFCAP_RXCSUM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* @CRCR_IP, align 4
  %41 = load i32, i32* @CRCR_TCP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CRCR_UDP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %49 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %50 = load i32, i32* @AXGE_CRCR, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @axge_write_cmd_1(%struct.axge_softc* %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @axge_write_cmd_1(%struct.axge_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
