; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_as_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_as_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwe_softc = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.fw_xferq* }
%struct.fw_xferq = type { i32, i32, i32 (%struct.TYPE_14__*)* }
%struct.ifnet = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.mbuf = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.fw_xfer = type { %struct.TYPE_11__, %struct.mbuf* }
%struct.TYPE_11__ = type { i32, %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@link = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwe_softc*, %struct.ifnet*)* @fwe_as_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwe_as_output(%struct.fwe_softc* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.fwe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.fw_xfer*, align 8
  %7 = alloca %struct.fw_xferq*, align 8
  %8 = alloca %struct.fw_pkt*, align 8
  %9 = alloca i32, align 4
  store %struct.fwe_softc* %0, %struct.fwe_softc** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  store i32 0, i32* %9, align 4
  store %struct.fw_xfer* null, %struct.fw_xfer** %6, align 8
  %10 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  store %struct.fw_xferq* %15, %struct.fw_xferq** %7, align 8
  br label %16

16:                                               ; preds = %122, %2
  %17 = load %struct.fw_xferq*, %struct.fw_xferq** %7, align 8
  %18 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fw_xferq*, %struct.fw_xferq** %7, align 8
  %21 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %25, %16
  %32 = phi i1 [ false, %16 ], [ %30, %25 ]
  br i1 %32, label %33, label %123

33:                                               ; preds = %31
  %34 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %35 = call i32 @FWE_LOCK(%struct.fwe_softc* %34)
  %36 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %36, i32 0, i32 2
  %38 = call %struct.fw_xfer* @STAILQ_FIRST(i32* %37)
  store %struct.fw_xfer* %38, %struct.fw_xfer** %6, align 8
  %39 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %40 = icmp eq %struct.fw_xfer* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %43 = call i32 @FWE_UNLOCK(%struct.fwe_softc* %42)
  br label %123

44:                                               ; preds = %33
  %45 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %46 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %45, i32 0, i32 2
  %47 = load i32, i32* @link, align 4
  %48 = call i32 @STAILQ_REMOVE_HEAD(i32* %46, i32 %47)
  %49 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %50 = call i32 @FWE_UNLOCK(%struct.fwe_softc* %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = call i32 @IF_DEQUEUE(%struct.TYPE_15__* %52, %struct.mbuf* %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %44
  %58 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %59 = call i32 @FWE_LOCK(%struct.fwe_softc* %58)
  %60 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %61 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %60, i32 0, i32 2
  %62 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %63 = load i32, i32* @link, align 4
  %64 = call i32 @STAILQ_INSERT_HEAD(i32* %61, %struct.fw_xfer* %62, i32 %63)
  %65 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %66 = call i32 @FWE_UNLOCK(%struct.fwe_softc* %65)
  br label %123

67:                                               ; preds = %44
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %70 = call i32 @BPF_MTAP(%struct.ifnet* %68, %struct.mbuf* %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %72 = load i32, i32* @ETHER_ALIGN, align 4
  %73 = load i32, i32* @M_NOWAIT, align 4
  %74 = call i32 @M_PREPEND(%struct.mbuf* %71, i32 %72, i32 %73)
  %75 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %76 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store %struct.fw_pkt* %77, %struct.fw_pkt** %8, align 8
  %78 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %79 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %82 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = bitcast %struct.fw_pkt* %83 to i32*
  store i32 %80, i32* %84, align 4
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fw_pkt*, %struct.fw_pkt** %8, align 8
  %90 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %94 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %95 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %94, i32 0, i32 1
  store %struct.mbuf* %93, %struct.mbuf** %95, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %101 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %104 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %108 = call i64 @fw_asyreq(%struct.TYPE_14__* %106, i32 -1, %struct.fw_xfer* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %67
  %111 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %112 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %113 = call i32 @if_inc_counter(%struct.ifnet* %111, i32 %112, i32 1)
  %114 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %115 = call i32 @fwe_output_callback(%struct.fw_xfer* %114)
  br label %122

116:                                              ; preds = %67
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %119 = call i32 @if_inc_counter(%struct.ifnet* %117, i32 %118, i32 1)
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %116, %110
  br label %16

123:                                              ; preds = %57, %41, %31
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.fw_xferq*, %struct.fw_xferq** %7, align 8
  %128 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %127, i32 0, i32 2
  %129 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %128, align 8
  %130 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %131 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = call i32 %129(%struct.TYPE_14__* %133)
  br label %135

135:                                              ; preds = %126, %123
  ret void
}

declare dso_local i32 @FWE_LOCK(%struct.fwe_softc*) #1

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @FWE_UNLOCK(%struct.fwe_softc*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @IF_DEQUEUE(%struct.TYPE_15__*, %struct.mbuf*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.fw_xfer*, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @M_PREPEND(%struct.mbuf*, i32, i32) #1

declare dso_local i64 @fw_asyreq(%struct.TYPE_14__*, i32, %struct.fw_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @fwe_output_callback(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
