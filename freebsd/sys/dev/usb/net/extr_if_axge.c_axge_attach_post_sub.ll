; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_attach_post_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_attach_post_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.TYPE_4__*, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.axge_softc = type { i32 }

@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@uether_start = common dso_local global i32 0, align 4
@axge_ioctl = common dso_local global i32 0, align 4
@uether_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AXGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@uether_ifmedia_upd = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@AXGE_PHY_ADDR = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ether*)* @axge_attach_post_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axge_attach_post_sub(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.axge_softc* %7, %struct.axge_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %8, i32 0, i32 3
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load i32, i32* @IFF_BROADCAST, align 4
  %12 = load i32, i32* @IFF_SIMPLEX, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IFF_MULTICAST, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @uether_start, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @axge_ioctl, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @uether_init, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 4
  %29 = load i32, i32* @ifqmaxlen, align 4
  %30 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %28, i32 %29)
  %31 = load i32, i32* @ifqmaxlen, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 4
  %37 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %36)
  %38 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %39 = load i32, i32* @IFCAP_TXCSUM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IFCAP_RXCSUM, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @AXGE_CSUM_FEATURES, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = call i32 @mtx_lock(i32* @Giant)
  %56 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %57 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %60 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %59, i32 0, i32 1
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = load i32, i32* @uether_ifmedia_upd, align 4
  %63 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %64 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %69 = load i32, i32* @AXGE_PHY_ADDR, align 4
  %70 = load i32, i32* @MII_OFFSET_ANY, align 4
  %71 = load i32, i32* @MIIF_DOPAUSE, align 4
  %72 = call i32 @mii_attach(i32 %58, i32* %60, %struct.ifnet* %61, i32 %62, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = call i32 @mtx_unlock(i32* @Giant)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
