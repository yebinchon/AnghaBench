; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.gx_softc*, i32, i32 }
%struct.gx_softc = type { i32, i32, i32, %struct.ifnet*, i32*, i32, i32, i32 }

@GXEMUL_ETHER_DEV_MAC = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_IRQ = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to allocate IRQ.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@gx_rx_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to setup interrupt.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot allocate ifnet.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@gx_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@gx_ioctl = common dso_local global i32 0, align 4
@gx_medchange = common dso_local global i32 0, align 4
@gx_medstat = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"GXemul Ethernet\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@gx_transmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.gx_softc*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.gx_softc* @device_get_softc(i32 %9)
  store %struct.gx_softc* %10, %struct.gx_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %13 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_unit(i32 %14)
  %16 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %17 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GXEMUL_ETHER_DEV_MAC, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %20 = ptrtoint i32* %19 to i64
  %21 = call i32 @GXEMUL_ETHER_DEV_WRITE(i32 %18, i64 %20)
  store i32 0, i32* %8, align 4
  %22 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %23 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load i64, i64* @GXEMUL_ETHER_DEV_IRQ, align 8
  %27 = sub nsw i64 %26, 2
  %28 = load i64, i64* @GXEMUL_ETHER_DEV_IRQ, align 8
  %29 = sub nsw i64 %28, 2
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i32* @bus_alloc_resource(i32 %24, i32 %25, i32* %8, i64 %27, i64 %29, i32 1, i32 %30)
  %32 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %33 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %35 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %157

42:                                               ; preds = %1
  %43 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %44 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %47 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @INTR_TYPE_NET, align 4
  %50 = load i32, i32* @gx_rx_intr, align 4
  %51 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %52 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %53 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %52, i32 0, i32 5
  %54 = call i32 @bus_setup_intr(i32 %45, i32* %48, i32 %49, i32* null, i32 %50, %struct.gx_softc* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %42
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %63 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 0, i32* %64)
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %157

67:                                               ; preds = %42
  %68 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %69 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %72 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %75 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bus_describe_intr(i32 %70, i32* %73, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @IFT_ETHER, align 4
  %79 = call %struct.ifnet* @if_alloc(i32 %78)
  store %struct.ifnet* %79, %struct.ifnet** %4, align 8
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = icmp eq %struct.ifnet* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %67
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYS_RES_IRQ, align 4
  %87 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %88 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %85, i32 %86, i32 0, i32* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %2, align 4
  br label %157

92:                                               ; preds = %67
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_get_name(i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_get_unit(i32 %96)
  %98 = call i32 @if_initname(%struct.ifnet* %93, i32 %95, i32 %97)
  %99 = load i32, i32* @ETHERMTU, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @gx_init, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 3
  store %struct.gx_softc* %105, %struct.gx_softc** %107, align 8
  %108 = load i32, i32* @IFF_BROADCAST, align 4
  %109 = load i32, i32* @IFF_SIMPLEX, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IFF_MULTICAST, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IFF_ALLMULTI, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @gx_ioctl, align 4
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %122 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %121, i32 0, i32 3
  store %struct.ifnet* %120, %struct.ifnet** %122, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %127 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %129 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %128, i32 0, i32 2
  %130 = load i32, i32* @gx_medchange, align 4
  %131 = load i32, i32* @gx_medstat, align 4
  %132 = call i32 @ifmedia_init(i32* %129, i32 0, i32 %130, i32 %131)
  %133 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %134 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %133, i32 0, i32 2
  %135 = load i32, i32* @IFM_ETHER, align 4
  %136 = load i32, i32* @IFM_AUTO, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @ifmedia_add(i32* %134, i32 %137, i32 0, i32* null)
  %139 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %140 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %139, i32 0, i32 2
  %141 = load i32, i32* @IFM_ETHER, align 4
  %142 = load i32, i32* @IFM_AUTO, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @ifmedia_set(i32* %140, i32 %143)
  %145 = load %struct.gx_softc*, %struct.gx_softc** %5, align 8
  %146 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %145, i32 0, i32 1
  %147 = load i32, i32* @MTX_DEF, align 4
  %148 = call i32 @mtx_init(i32* %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %147)
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %151 = call i32 @ether_ifattach(%struct.ifnet* %149, i32* %150)
  %152 = load i32, i32* @gx_transmit, align 4
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @bus_generic_attach(i32 %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %92, %82, %57, %38
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.gx_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @GXEMUL_ETHER_DEV_WRITE(i32, i64) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.gx_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
