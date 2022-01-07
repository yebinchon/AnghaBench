; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_attach_post_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_attach_post_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.TYPE_4__*, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.axe_softc = type { i32, i32 }

@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@uether_start = common dso_local global i32 0, align 4
@axe_ioctl = common dso_local global i32 0, align 4
@uether_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@AXE_FLAG_772B = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AXE_CSUM_FEATURES = common dso_local global i32 0, align 4
@AXE_FLAG_772A = common dso_local global i32 0, align 4
@AXE_FLAG_178 = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i64 0, align 8
@Giant = common dso_local global i32 0, align 4
@uether_ifmedia_upd = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ether*)* @axe_attach_post_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axe_attach_post_sub(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %7)
  store %struct.axe_softc* %8, %struct.axe_softc** %3, align 8
  %9 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %10 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load i32, i32* @IFF_BROADCAST, align 4
  %13 = load i32, i32* @IFF_SIMPLEX, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IFF_MULTICAST, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @uether_start, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @axe_ioctl, align 4
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @uether_init, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 4
  %30 = load i32, i32* @ifqmaxlen, align 4
  %31 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %29, i32 %30)
  %32 = load i32, i32* @ifqmaxlen, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 4
  %38 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %37)
  %39 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %40 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %1
  %49 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AXE_FLAG_772B, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* @IFCAP_TXCSUM, align 4
  %57 = load i32, i32* @IFCAP_RXCSUM, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @AXE_CSUM_FEATURES, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %73 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AXE_FLAG_772A, align 4
  %76 = load i32, i32* @AXE_FLAG_772B, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AXE_FLAG_178, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %74, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i64, i64* @MIIF_DOPAUSE, align 8
  store i64 %83, i64* %5, align 8
  br label %85

84:                                               ; preds = %66
  store i64 0, i64* %5, align 8
  br label %85

85:                                               ; preds = %84, %82
  %86 = call i32 @mtx_lock(i32* @Giant)
  %87 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %88 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %91 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %90, i32 0, i32 1
  %92 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %93 = load i32, i32* @uether_ifmedia_upd, align 4
  %94 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %95 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %100 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %101 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MII_OFFSET_ANY, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @mii_attach(i32 %89, i32* %91, %struct.ifnet* %92, i32 %93, i32 %98, i32 %99, i32 %102, i32 %103, i64 %104)
  store i32 %105, i32* %6, align 4
  %106 = call i32 @mtx_unlock(i32* @Giant)
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i64 @AXE_IS_178_FAMILY(%struct.axe_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
