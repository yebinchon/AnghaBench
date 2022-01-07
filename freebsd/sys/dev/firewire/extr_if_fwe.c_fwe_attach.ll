; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwe_softc = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.ifnet*, %struct.fwe_softc* }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32*, i32 }
%struct.TYPE_14__ = type { i64, %struct.fw_eui64 }
%struct.fw_eui64 = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"fwe\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@stream_ch = common dso_local global i32 0, align 4
@tx_speed = common dso_local global i64 0, align 8
@FWTCODE_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"if_fwe%d: Fake Ethernet address: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@fwe_init = common dso_local global i32 0, align 4
@fwe_start = common dso_local global i32 0, align 4
@fwe_ioctl = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@TX_MAX_QUEUE = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"interface created\0A\00", align 1
@GROUP = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fwe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwe_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca %struct.fw_eui64*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.fwe_softc*
  store %struct.fwe_softc* %12, %struct.fwe_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_unit(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %16 = call i32 @bzero(%struct.fwe_softc* %15, i32 88)
  %17 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %18 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %17, i32 0, i32 5
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* @stream_ch, align 4
  %22 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %23 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %25 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_14__* @device_get_ivars(i32 %26)
  %28 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %29 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %30, align 8
  %31 = load i64, i64* @tx_speed, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %35 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @tx_speed, align 8
  br label %40

40:                                               ; preds = %33, %1
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %43 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %46 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %49 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store %struct.fwe_softc* %48, %struct.fwe_softc** %51, align 8
  %52 = load i32, i32* @FWTCODE_STREAM, align 4
  %53 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %54 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 8
  %58 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %59 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %64 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %67 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %72 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store %struct.fw_eui64* %75, %struct.fw_eui64** %9, align 8
  %76 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %77 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %76, i32 0)
  %78 = or i32 %77, 2
  %79 = and i32 %78, -2
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 %79, i32* %80, align 16
  %81 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %82 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %81, i32 1)
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %85 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %84, i32 2)
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  store i32 %85, i32* %86, align 8
  %87 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %88 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %87, i32 5)
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %91 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %90, i32 6)
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  store i32 %91, i32* %92, align 16
  %93 = load %struct.fw_eui64*, %struct.fw_eui64** %9, align 8
  %94 = call i32 @FW_EUI64_BYTE(%struct.fw_eui64* %93, i32 7)
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %108)
  %110 = load i32, i32* @IFT_ETHER, align 4
  %111 = call %struct.ifnet* @if_alloc(i32 %110)
  %112 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %113 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store %struct.ifnet* %111, %struct.ifnet** %114, align 8
  store %struct.ifnet* %111, %struct.ifnet** %5, align 8
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = icmp eq %struct.ifnet* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %40
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @ENOSPC, align 4
  store i32 %120, i32* %2, align 4
  br label %173

121:                                              ; preds = %40
  %122 = load %struct.fwe_softc*, %struct.fwe_softc** %4, align 8
  %123 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %122, i32 0, i32 1
  %124 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %125, align 8
  %126 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @device_get_name(i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @if_initname(%struct.ifnet* %126, i32 %128, i32 %129)
  %131 = load i32, i32* @fwe_init, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @fwe_start, align 4
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @fwe_ioctl, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @IFF_BROADCAST, align 4
  %141 = load i32, i32* @IFF_SIMPLEX, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @IFF_MULTICAST, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @TX_MAX_QUEUE, align 4
  %148 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %149 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = call i32 (...) @splimp()
  store i32 %151, i32* %7, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %154 = call i32 @ether_ifattach(%struct.ifnet* %152, i32* %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @splx(i32 %155)
  %157 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %158 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %157, i32 0, i32 1
  store i32 4, i32* %158, align 4
  %159 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %160 = load i32, i32* @IFCAP_POLLING, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %172 = call i32 @FWEDEBUG(%struct.ifnet* %171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %121, %117
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bzero(%struct.fwe_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @device_get_ivars(i32) #1

declare dso_local i32 @FW_EUI64_BYTE(%struct.fw_eui64*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @FWEDEBUG(%struct.ifnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
