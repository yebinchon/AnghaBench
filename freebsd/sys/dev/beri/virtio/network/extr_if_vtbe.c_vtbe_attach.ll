; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i32, i32, %struct.ifnet*, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.ifnet = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.vtbe_softc*, i32 }
%struct.TYPE_3__ = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@vtbe_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pio-send\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pio-recv\00", align 1
@VIRTIO_ID_NETWORK = common dso_local global i32 0, align 4
@VIRTIO_MMIO_DEVICE_ID = common dso_local global i32 0, align 4
@DESC_COUNT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_NUM_MAX = common dso_local global i32 0, align 4
@VIRTIO_NET_F_MAC = common dso_local global i32 0, align 4
@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_MMIO_HOST_FEATURES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"can't get mac\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@vtbe_txstart = common dso_local global i32 0, align 4
@vtbe_ioctl = common dso_local global i32 0, align 4
@vtbe_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtbe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtbe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vtbe_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.vtbe_softc* @device_get_softc(i32 %14)
  store %struct.vtbe_softc* %15, %struct.vtbe_softc** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %18 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %20 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %19, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @vtbe_spec, align 4
  %23 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %24 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @bus_alloc_resources(i32 %21, i32 %22, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

32:                                               ; preds = %1
  %33 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %34 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rman_get_bustag(i32 %37)
  %39 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %40 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %42 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rman_get_bushandle(i32 %45)
  %47 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %48 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %50 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %49, i32 0, i32 7
  %51 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %52 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_get_nameunit(i32 %53)
  %55 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %56 = load i32, i32* @MTX_DEF, align 4
  %57 = call i32 @mtx_init(i32* %50, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %60 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %59, i32 0, i32 6
  %61 = call i64 @setup_offset(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %32
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

65:                                               ; preds = %32
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %68 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %67, i32 0, i32 5
  %69 = call i64 @setup_pio(i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %76 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %75, i32 0, i32 4
  %77 = call i64 @setup_pio(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

81:                                               ; preds = %73
  %82 = load i32, i32* @VIRTIO_ID_NETWORK, align 4
  %83 = call i32 @htobe32(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %85 = load i32, i32* @VIRTIO_MMIO_DEVICE_ID, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @WRITE4(%struct.vtbe_softc* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @DESC_COUNT, align 4
  %89 = call i32 @htobe32(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %91 = load i32, i32* @VIRTIO_MMIO_QUEUE_NUM_MAX, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @WRITE4(%struct.vtbe_softc* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @VIRTIO_NET_F_MAC, align 4
  %95 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @htobe32(i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %99 = load i32, i32* @VIRTIO_MMIO_HOST_FEATURES, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @WRITE4(%struct.vtbe_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %103 = call i64 @vtbe_get_hwaddr(%struct.vtbe_softc* %102, i32* %13)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %81
  %106 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %107 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

111:                                              ; preds = %81
  %112 = load i32, i32* @IFT_ETHER, align 4
  %113 = call %struct.ifnet* @if_alloc(i32 %112)
  store %struct.ifnet* %113, %struct.ifnet** %7, align 8
  %114 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %115 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %114, i32 0, i32 2
  store %struct.ifnet* %113, %struct.ifnet** %115, align 8
  %116 = call i32 @IF_Gbps(i32 10)
  %117 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %121 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %120, i32 0, i32 8
  store %struct.vtbe_softc* %119, %struct.vtbe_softc** %121, align 8
  %122 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @device_get_name(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_get_unit(i32 %125)
  %127 = call i32 @if_initname(%struct.ifnet* %122, i32 %124, i32 %126)
  %128 = load i32, i32* @IFF_BROADCAST, align 4
  %129 = load i32, i32* @IFF_SIMPLEX, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @IFF_MULTICAST, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @IFF_PROMISC, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @vtbe_txstart, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @vtbe_ioctl, align 4
  %149 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @vtbe_init, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %155 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %154, i32 0, i32 2
  %156 = load i32, i32* @DESC_COUNT, align 4
  %157 = sub nsw i32 %156, 1
  %158 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %155, i32 %157)
  %159 = load i32, i32* @DESC_COUNT, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %162 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 2
  %166 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %165)
  %167 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 1
  store i32 4, i32* %168, align 4
  %169 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %170 = call i32 @ether_ifattach(%struct.ifnet* %169, i32* %13)
  %171 = load %struct.vtbe_softc*, %struct.vtbe_softc** %6, align 8
  %172 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %173

173:                                              ; preds = %111, %105, %79, %71, %63, %28
  %174 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vtbe_softc* @device_get_softc(i32) #2

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i32) #2

declare dso_local i32 @rman_get_bushandle(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i64 @setup_offset(i32, i32*) #2

declare dso_local i64 @setup_pio(i32, i8*, i32*) #2

declare dso_local i32 @htobe32(i32) #2

declare dso_local i32 @WRITE4(%struct.vtbe_softc*, i32, i32) #2

declare dso_local i64 @vtbe_get_hwaddr(%struct.vtbe_softc*, i32*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @IF_Gbps(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
