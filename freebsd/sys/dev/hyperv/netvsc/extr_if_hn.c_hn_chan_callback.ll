; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.hn_rx_ring = type { i32, i32, %struct.TYPE_2__*, %struct.vmbus_chanpkt_hdr* }
%struct.TYPE_2__ = type { %struct.hn_softc* }
%struct.hn_softc = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"expand pktbuf %d -> %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"vmbus_chan_recv_pkt failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown chan pkt %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i8*)* @hn_chan_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_chan_callback(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hn_rx_ring*, align 8
  %6 = alloca %struct.hn_softc*, align 8
  %7 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.hn_rx_ring*
  store %struct.hn_rx_ring* %13, %struct.hn_rx_ring** %5, align 8
  %14 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.hn_softc*, %struct.hn_softc** %17, align 8
  store %struct.hn_softc* %18, %struct.hn_softc** %6, align 8
  br label %19

19:                                               ; preds = %115, %47, %2
  %20 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %20, i32 0, i32 3
  %22 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %21, align 8
  store %struct.vmbus_chanpkt_hdr* %22, %struct.vmbus_chanpkt_hdr** %7, align 8
  %23 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %24 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %27 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %28 = call i32 @vmbus_chan_recv_pkt(%struct.vmbus_channel* %26, %struct.vmbus_chanpkt_hdr* %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %19
  %36 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %44, %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %11, align 4
  br label %40

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = call i8* @malloc(i32 %48, i32 %49, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %53 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %56 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @if_printf(%struct.TYPE_2__* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %60, i32 0, i32 3
  %62 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.vmbus_chanpkt_hdr* %62, i32 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = bitcast i8* %65 to %struct.vmbus_chanpkt_hdr*
  %67 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %67, i32 0, i32 3
  store %struct.vmbus_chanpkt_hdr* %66, %struct.vmbus_chanpkt_hdr** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %19

72:                                               ; preds = %19
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @__predict_false(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %116

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @KASSERT(i32 %85, i8* %88)
  %90 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %91 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %107 [
    i32 130, label %93
    i32 128, label %98
    i32 129, label %103
  ]

93:                                               ; preds = %81
  %94 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %95 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %96 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %97 = call i32 @hn_nvs_handle_comp(%struct.hn_softc* %94, %struct.vmbus_channel* %95, %struct.vmbus_chanpkt_hdr* %96)
  br label %115

98:                                               ; preds = %81
  %99 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %100 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %101 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %102 = call i32 @hn_nvs_handle_rxbuf(%struct.hn_rx_ring* %99, %struct.vmbus_channel* %100, %struct.vmbus_chanpkt_hdr* %101)
  br label %115

103:                                              ; preds = %81
  %104 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %105 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %106 = call i32 @hn_nvs_handle_notify(%struct.hn_softc* %104, %struct.vmbus_chanpkt_hdr* %105)
  br label %115

107:                                              ; preds = %81
  %108 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %109 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %7, align 8
  %112 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @if_printf(%struct.TYPE_2__* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107, %103, %98, %93
  br label %19

116:                                              ; preds = %79
  %117 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %118 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %119 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @hn_chan_rollup(%struct.hn_rx_ring* %117, i32 %120)
  ret void
}

declare dso_local i32 @vmbus_chan_recv_pkt(%struct.vmbus_channel*, %struct.vmbus_chanpkt_hdr*, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @if_printf(%struct.TYPE_2__*, i8*, i32, ...) #1

declare dso_local i32 @free(%struct.vmbus_chanpkt_hdr*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_nvs_handle_comp(%struct.hn_softc*, %struct.vmbus_channel*, %struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @hn_nvs_handle_rxbuf(%struct.hn_rx_ring*, %struct.vmbus_channel*, %struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @hn_nvs_handle_notify(%struct.hn_softc*, %struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @hn_chan_rollup(%struct.hn_rx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
