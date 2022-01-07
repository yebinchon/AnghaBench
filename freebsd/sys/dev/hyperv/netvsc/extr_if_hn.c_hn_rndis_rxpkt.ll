; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rxpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rxpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_rx_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rndis_msghdr = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"invalid RNDIS msg\0A\00", align 1
@REMOTE_NDIS_PACKET_MSG = common dso_local global i64 0, align 8
@REMOTE_NDIS_INDICATE_STATUS_MSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_rx_ring*, i8*, i32)* @hn_rndis_rxpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rndis_rxpkt(%struct.hn_rx_ring* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hn_rx_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_msghdr*, align 8
  store %struct.hn_rx_ring* %0, %struct.hn_rx_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 8
  %11 = zext i1 %10 to i32
  %12 = call i64 @__predict_false(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @if_printf(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %59

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.rndis_msghdr*
  store %struct.rndis_msghdr* %21, %struct.rndis_msghdr** %7, align 8
  %22 = load %struct.rndis_msghdr*, %struct.rndis_msghdr** %7, align 8
  %23 = getelementptr inbounds %struct.rndis_msghdr, %struct.rndis_msghdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REMOTE_NDIS_PACKET_MSG, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @__predict_true(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hn_rndis_rx_data(%struct.hn_rx_ring* %31, i8* %32, i32 %33)
  br label %59

35:                                               ; preds = %19
  %36 = load %struct.rndis_msghdr*, %struct.rndis_msghdr** %7, align 8
  %37 = getelementptr inbounds %struct.rndis_msghdr, %struct.rndis_msghdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REMOTE_NDIS_INDICATE_STATUS_MSG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hn_rndis_rx_status(i32 %46, i8* %47, i32 %48)
  br label %59

50:                                               ; preds = %35
  %51 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @hn_rndis_rx_ctrl(i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %14, %30, %50, %41
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @if_printf(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @hn_rndis_rx_data(%struct.hn_rx_ring*, i8*, i32) #1

declare dso_local i32 @hn_rndis_rx_status(i32, i8*, i32) #1

declare dso_local i32 @hn_rndis_rx_ctrl(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
