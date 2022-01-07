; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, %struct.hn_tx_ring*, %struct.hn_rx_ring* }
%struct.hn_tx_ring = type { i32 }
%struct.hn_rx_ring = type { i32 }
%struct.vmbus_channel = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"invalid channel index %d, should > 0 && < %d\00", align 1
@HN_RX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RX ring %d is not attached\00", align 1
@HN_TX_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"TX ring %d is not attached attached\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"chan%u bufring is connected after being closed\0A\00", align 1
@HN_RX_FLAG_BR_REF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"chan%u close failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.vmbus_channel*)* @hn_chan_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_chan_detach(%struct.hn_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.hn_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %10 = call i32 @vmbus_chan_subidx(%struct.vmbus_channel* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %21, i8* %27)
  %29 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 4
  %31 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %31, i64 %33
  store %struct.hn_rx_ring* %34, %struct.hn_rx_ring** %5, align 8
  %35 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %36 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HN_RX_FLAG_ATTACHED, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %39, i8* %42)
  %44 = load i32, i32* @HN_RX_FLAG_ATTACHED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %19
  %56 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %57 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %56, i32 0, i32 3
  %58 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %58, i64 %60
  store %struct.hn_tx_ring* %61, %struct.hn_tx_ring** %8, align 8
  %62 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %8, align 8
  %63 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HN_TX_FLAG_ATTACHED, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @KASSERT(i32 %66, i8* %69)
  %71 = load i32, i32* @HN_TX_FLAG_ATTACHED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %8, align 8
  %74 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %55, %19
  %78 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %79 = call i32 @vmbus_chan_close_direct(%struct.vmbus_channel* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EISCONN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %85 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %88 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %87)
  %89 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @HN_RX_FLAG_BR_REF, align 4
  %91 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %107

95:                                               ; preds = %77
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %100 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %103 = call i32 @vmbus_chan_id(%struct.vmbus_channel* %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %95
  br label %107

107:                                              ; preds = %106, %83
  ret void
}

declare dso_local i32 @vmbus_chan_subidx(%struct.vmbus_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmbus_chan_close_direct(%struct.vmbus_channel*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @vmbus_chan_id(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
