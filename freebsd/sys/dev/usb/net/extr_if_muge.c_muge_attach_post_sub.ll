; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_attach_post_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_attach_post_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.TYPE_4__*, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.muge_softc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Calling muge_attach_post_sub.\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@uether_start = common dso_local global i32 0, align 4
@muge_ioctl = common dso_local global i32 0, align 4
@uether_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@MUGE_DEFAULT_RX_CSUM_ENABLE = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@MUGE_DEFAULT_TX_CSUM_ENABLE = common dso_local global i64 0, align 8
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@MUGE_DEFAULT_TSO_CSUM_ENABLE = common dso_local global i64 0, align 8
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@uether_ifmedia_upd = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ether*)* @muge_attach_post_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muge_attach_post_sub(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.muge_softc* %7, %struct.muge_softc** %3, align 8
  %8 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %9 = call i32 @muge_dbg_printf(%struct.muge_softc* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load i32, i32* @IFF_BROADCAST, align 4
  %14 = load i32, i32* @IFF_SIMPLEX, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IFF_MULTICAST, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @uether_start, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @muge_ioctl, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @uether_init, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 4
  %31 = load i32, i32* @ifqmaxlen, align 4
  %32 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %30, i32 %31)
  %33 = load i32, i32* @ifqmaxlen, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 4
  %39 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %38)
  %40 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = load i64, i64* @MUGE_DEFAULT_RX_CSUM_ENABLE, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %1
  %50 = load i32, i32* @IFCAP_RXCSUM, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %1
  %56 = load i64, i64* @MUGE_DEFAULT_TX_CSUM_ENABLE, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @IFCAP_TXCSUM, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i64, i64* @MUGE_DEFAULT_TSO_CSUM_ENABLE, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @IFCAP_TSO4, align 4
  %69 = load i32, i32* @IFCAP_TSO6, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %64
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = call i32 @mtx_lock(i32* @Giant)
  %82 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %83 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %86 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %85, i32 0, i32 1
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = load i32, i32* @uether_ifmedia_upd, align 4
  %89 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %90 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %95 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %96 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MII_OFFSET_ANY, align 4
  %99 = call i32 @mii_attach(i32 %84, i32* %86, %struct.ifnet* %87, i32 %88, i32 %93, i32 %94, i32 %97, i32 %98, i32 0)
  store i32 %99, i32* %5, align 4
  %100 = call i32 @mtx_unlock(i32* @Giant)
  ret i32 0
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*) #1

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
