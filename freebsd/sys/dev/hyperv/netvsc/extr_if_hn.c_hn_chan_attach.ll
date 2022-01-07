; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, %struct.hn_tx_ring*, %struct.hn_rx_ring* }
%struct.hn_tx_ring = type { i32, %struct.vmbus_channel* }
%struct.hn_rx_ring = type { i32, %struct.TYPE_2__, i32, %struct.vmbus_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmbus_chan_br = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"invalid channel index %d, should > 0 && < %d\00", align 1
@HN_RX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RX ring %d already attached\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"link RX ring %d to chan%u\0A\00", align 1
@HN_TX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"TX ring %d already attached\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"link TX ring %d to chan%u\0A\00", align 1
@HN_TXBR_SIZE = common dso_local global i32 0, align 4
@HN_RXBR_SIZE = common dso_local global i32 0, align 4
@hn_chan_callback = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"bufring is connected after chan%u open failure\0A\00", align 1
@HN_RX_FLAG_BR_REF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"open chan%u failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, %struct.vmbus_channel*)* @hn_chan_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_chan_attach(%struct.hn_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.vmbus_chan_br, align 4
  %6 = alloca %struct.hn_rx_ring*, align 8
  %7 = alloca %struct.hn_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  store %struct.hn_tx_ring* null, %struct.hn_tx_ring** %7, align 8
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %11 = call i32 @vmbus_chan_subidx(%struct.vmbus_channel* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %22, i8* %28)
  %30 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 4
  %32 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %32, i64 %34
  store %struct.hn_rx_ring* %35, %struct.hn_rx_ring** %6, align 8
  %36 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HN_RX_FLAG_ATTACHED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %42, i8* %45)
  %47 = load i32, i32* @HN_RX_FLAG_ATTACHED, align 4
  %48 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %53 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %53, i32 0, i32 3
  store %struct.vmbus_channel* %52, %struct.vmbus_channel** %54, align 8
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %20
  %58 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %59 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %63 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %62)
  %64 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %57, %20
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %65
  %72 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 3
  %74 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %74, i64 %76
  store %struct.hn_tx_ring* %77, %struct.hn_tx_ring** %7, align 8
  %78 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %79 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HN_TX_FLAG_ATTACHED, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %84, i8* %87)
  %89 = load i32, i32* @HN_TX_FLAG_ATTACHED, align 4
  %90 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %91 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %95 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %96 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %95, i32 0, i32 1
  store %struct.vmbus_channel* %94, %struct.vmbus_channel** %96, align 8
  %97 = load i64, i64* @bootverbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %71
  %100 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %101 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %105 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %104)
  %106 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %99, %71
  br label %108

108:                                              ; preds = %107, %65
  %109 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %110 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @HN_RING_IDX2CPU(%struct.hn_softc* %110, i32 %111)
  %113 = call i32 @vmbus_chan_cpu_set(%struct.vmbus_channel* %109, i32 %112)
  %114 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %115 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %5, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %119 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %5, i32 0, i32 2
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @HN_TXBR_SIZE, align 4
  %124 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %5, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @HN_RXBR_SIZE, align 4
  %126 = getelementptr inbounds %struct.vmbus_chan_br, %struct.vmbus_chan_br* %5, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %128 = load i32, i32* @hn_chan_callback, align 4
  %129 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %130 = call i32 @vmbus_chan_open_br(%struct.vmbus_channel* %127, %struct.vmbus_chan_br* %5, i32* null, i32 0, i32 %128, %struct.hn_rx_ring* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %108
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @EISCONN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %139 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %142 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %141)
  %143 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @HN_RX_FLAG_BR_REF, align 4
  %145 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %6, align 8
  %146 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %157

149:                                              ; preds = %133
  %150 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %151 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %154 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %153)
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %137
  br label %158

158:                                              ; preds = %157, %108
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @vmbus_chan_subidx(%struct.vmbus_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @vmbus_chan_id(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_cpu_set(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @HN_RING_IDX2CPU(%struct.hn_softc*, i32) #1

declare dso_local i32 @vmbus_chan_open_br(%struct.vmbus_channel*, %struct.vmbus_chan_br*, i32*, i32, i32, %struct.hn_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
