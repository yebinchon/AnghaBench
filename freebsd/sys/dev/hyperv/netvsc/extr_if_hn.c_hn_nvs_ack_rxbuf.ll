; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_ack_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_ack_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_rx_ring = type { i64, i32 }
%struct.vmbus_channel = type { i32 }
%struct.hn_nvs_rndis_ack = type { i32, i32 }

@HN_NVS_TYPE_RNDIS_ACK = common dso_local global i32 0, align 4
@HN_NVS_STATUS_OK = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_TYPE_COMP = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_FLAG_NONE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RXBUF ack retry\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RXBUF ack failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_rx_ring*, %struct.vmbus_channel*, i32)* @hn_nvs_ack_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_nvs_ack_rxbuf(%struct.hn_rx_ring* %0, %struct.vmbus_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.hn_rx_ring*, align 8
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hn_nvs_rndis_ack, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hn_rx_ring* %0, %struct.hn_rx_ring** %4, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @HN_NVS_TYPE_RNDIS_ACK, align 4
  %11 = getelementptr inbounds %struct.hn_nvs_rndis_ack, %struct.hn_nvs_rndis_ack* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @HN_NVS_STATUS_OK, align 4
  %13 = getelementptr inbounds %struct.hn_nvs_rndis_ack, %struct.hn_nvs_rndis_ack* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %45, %3
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %16 = load i32, i32* @VMBUS_CHANPKT_TYPE_COMP, align 4
  %17 = load i32, i32* @VMBUS_CHANPKT_FLAG_NONE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vmbus_chan_send(%struct.vmbus_channel* %15, i32 %16, i32 %17, %struct.hn_nvs_rndis_ack* %7, i32 8, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @__predict_false(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %14
  %27 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @if_printf(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %38 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @DELAY(i32 100)
  br label %14

47:                                               ; preds = %36
  %48 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @if_printf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @vmbus_chan_send(%struct.vmbus_channel*, i32, i32, %struct.hn_nvs_rndis_ack*, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
