; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { i32*, i32, i32, i32, %struct.ifnet*, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.nf10bmac_softc* }
%struct.TYPE_3__ = type { i64 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ETHER_MAX_LEN_JUMBO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"if_alloc() failed\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@nf10bmac_ioctl = common dso_local global i32 0, align 4
@nf10bmac_start = common dso_local global i32 0, align 4
@nf10bmac_init = common dso_local global i32 0, align 4
@NF10BMAC_MAX_PKTS = common dso_local global i64 0, align 8
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@nf10bmac_media_change = common dso_local global i32 0, align 4
@nf10bmac_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nf10bmac_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"enabling RX IRQ failed\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"no DEVICE_POLLING in kernel and no IRQs\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@nf10bmac_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf10bmac_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf10bmac_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.nf10bmac_softc* @device_get_softc(i32 %6)
  store %struct.nf10bmac_softc* %7, %struct.nf10bmac_softc** %3, align 8
  %8 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %9 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %9, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @ETHER_MAX_LEN_JUMBO, align 4
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call i32 @malloc(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %22 = call i32 @nf10bmac_reset(%struct.nf10bmac_softc* %21)
  %23 = load i32, i32* @IFT_ETHER, align 4
  %24 = call %struct.ifnet* @if_alloc(i32 %23)
  %25 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %26 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %25, i32 0, i32 4
  store %struct.ifnet* %24, %struct.ifnet** %26, align 8
  store %struct.ifnet* %24, %struct.ifnet** %4, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = icmp eq %struct.ifnet* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOSPC, align 4
  store i32 %32, i32* %5, align 4
  br label %149

33:                                               ; preds = %1
  %34 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 8
  store %struct.nf10bmac_softc* %34, %struct.nf10bmac_softc** %36, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @device_get_name(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i32 @if_initname(%struct.ifnet* %37, i32 %39, i32 %41)
  %43 = load i32, i32* @IFF_BROADCAST, align 4
  %44 = load i32, i32* @IFF_SIMPLEX, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @nf10bmac_ioctl, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @nf10bmac_start, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @nf10bmac_init, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 4
  %59 = load i64, i64* @NF10BMAC_MAX_PKTS, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %58, i64 %60)
  %62 = load i64, i64* @NF10BMAC_MAX_PKTS, align 8
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 4
  %69 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %72 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ether_ifattach(%struct.ifnet* %70, i32 %73)
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  store i32 4, i32* %76, align 4
  %77 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %88 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %87, i32 0, i32 2
  %89 = load i32, i32* @nf10bmac_media_change, align 4
  %90 = load i32, i32* @nf10bmac_media_status, align 4
  %91 = call i32 @ifmedia_init(i32* %88, i32 0, i32 %89, i32 %90)
  %92 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %93 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %92, i32 0, i32 2
  %94 = load i32, i32* @IFM_ETHER, align 4
  %95 = load i32, i32* @IFM_10G_T, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ifmedia_add(i32* %93, i32 %96, i32 0, i32* null)
  %98 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %99 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %98, i32 0, i32 2
  %100 = load i32, i32* @IFM_ETHER, align 4
  %101 = load i32, i32* @IFM_10G_T, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @ifmedia_set(i32* %99, i32 %102)
  store i32 0, i32* %5, align 4
  %104 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %105 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %33
  %109 = load i32, i32* %2, align 4
  %110 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %111 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @INTR_TYPE_NET, align 4
  %114 = load i32, i32* @INTR_MPSAFE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @nf10bmac_intr, align 4
  %117 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %118 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %119 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %118, i32 0, i32 1
  %120 = call i32 @bus_setup_intr(i32 %109, i32* %112, i32 %115, i32* null, i32 %116, %struct.nf10bmac_softc* %117, i32* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %108
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @device_printf(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = call i32 @ether_ifdetach(%struct.ifnet* %126)
  br label %149

128:                                              ; preds = %108
  br label %129

129:                                              ; preds = %128, %33
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IFCAP_POLLING, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %138 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136, %129
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %5, align 4
  br label %148

145:                                              ; preds = %136
  %146 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %147 = call i32 @NF10BMAC_RX_INTR_ENABLE(%struct.nf10bmac_softc* %146)
  br label %148

148:                                              ; preds = %145, %141
  br label %149

149:                                              ; preds = %148, %123, %29
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %2, align 4
  %154 = call i32 @nf10bmac_detach(i32 %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.nf10bmac_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @nf10bmac_reset(%struct.nf10bmac_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.nf10bmac_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @NF10BMAC_RX_INTR_ENABLE(%struct.nf10bmac_softc*) #1

declare dso_local i32 @nf10bmac_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
