; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_unicast_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_unicast_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { %struct.TYPE_9__, %struct.mbuf*, i64 }
%struct.TYPE_9__ = type { %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64 }
%struct.mbuf = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.m_tag = type { i32 }
%struct.fwip_softc = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ifnet* }
%struct.fw_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@FWTCODE_WREQB = common dso_local global i64 0, align 8
@FWRCODE_ER_TYPE = common dso_local global i32 0, align 4
@INET_FIFO = common dso_local global i32 0, align 4
@FWRCODE_ER_ADDR = common dso_local global i32 0, align 4
@FWRCODE_COMPLETE = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@MTAG_FIREWIRE = common dso_local global i32 0, align 4
@MTAG_FIREWIRE_SENDER_EUID = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xfer*)* @fwip_unicast_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwip_unicast_input(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.fwip_softc*, align 8
  %8 = alloca %struct.fw_pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_device*, align 8
  %11 = alloca i64*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %12 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fwip_softc*
  store %struct.fwip_softc* %15, %struct.fwip_softc** %7, align 8
  %16 = load %struct.fwip_softc*, %struct.fwip_softc** %7, align 8
  %17 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %6, align 8
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %21 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %20, i32 0, i32 1
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  store %struct.mbuf* %22, %struct.mbuf** %4, align 8
  %23 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %23, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %24, align 8
  %25 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %26 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store %struct.fw_pkt* %27, %struct.fw_pkt** %8, align 8
  %28 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %29 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 32
  %35 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %36 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %34, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %42 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FWTCODE_WREQB, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @FWRCODE_ER_TYPE, align 4
  store i32 %49, i32* %9, align 4
  br label %59

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @INET_FIFO, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @FWRCODE_ER_ADDR, align 4
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @FWRCODE_COMPLETE, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.fwip_softc*, %struct.fwip_softc** %7, align 8
  %61 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %62 = call i32 @fwip_unicast_input_recycle(%struct.fwip_softc* %60, %struct.fw_xfer* %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @FWRCODE_COMPLETE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = call i32 @m_freem(%struct.mbuf* %67)
  %69 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %70 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %71 = call i32 @if_inc_counter(%struct.ifnet* %69, i32 %70, i32 1)
  br label %153

72:                                               ; preds = %59
  %73 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @bpf_peers_present(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %72
  %79 = load i32, i32* @MTAG_FIREWIRE, align 4
  %80 = load i32, i32* @MTAG_FIREWIRE_SENDER_EUID, align 4
  %81 = load i32, i32* @M_NOWAIT, align 4
  %82 = call %struct.m_tag* @m_tag_alloc(i32 %79, i32 %80, i32 16, i32 %81)
  store %struct.m_tag* %82, %struct.m_tag** %5, align 8
  %83 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %84 = icmp ne %struct.m_tag* %83, null
  br i1 %84, label %85, label %126

85:                                               ; preds = %78
  %86 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %87 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %86, i64 1
  %88 = bitcast %struct.m_tag* %87 to i64*
  store i64* %88, i64** %11, align 8
  %89 = load %struct.fwip_softc*, %struct.fwip_softc** %7, align 8
  %90 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %94 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 63
  %99 = call %struct.fw_device* @fw_noderesolve_nodeid(i32 %92, i32 %98)
  store %struct.fw_device* %99, %struct.fw_device** %10, align 8
  %100 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %101 = icmp ne %struct.fw_device* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %85
  %103 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %104 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @htonl(i32 %106)
  %108 = load i64*, i64** %11, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.fw_device*, %struct.fw_device** %10, align 8
  %111 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @htonl(i32 %113)
  %115 = load i64*, i64** %11, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  store i64 %114, i64* %116, align 8
  br label %122

117:                                              ; preds = %85
  %118 = load i64*, i64** %11, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 0, i64* %119, align 8
  %120 = load i64*, i64** %11, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %117, %102
  %123 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %124 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %125 = call i32 @m_tag_prepend(%struct.mbuf* %123, %struct.m_tag* %124)
  br label %126

126:                                              ; preds = %122, %78
  br label %127

127:                                              ; preds = %126, %72
  %128 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %129 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  %136 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 8
  %138 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %139 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  store %struct.ifnet* %138, %struct.ifnet** %141, align 8
  %142 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %143 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %144 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %145 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @firewire_input(%struct.ifnet* %142, %struct.mbuf* %143, i32 %148)
  %150 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %151 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %152 = call i32 @if_inc_counter(%struct.ifnet* %150, i32 %151, i32 1)
  br label %153

153:                                              ; preds = %127, %66
  ret void
}

declare dso_local i32 @fwip_unicast_input_recycle(%struct.fwip_softc*, %struct.fw_xfer*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local %struct.fw_device* @fw_noderesolve_nodeid(i32, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @firewire_input(%struct.ifnet*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
