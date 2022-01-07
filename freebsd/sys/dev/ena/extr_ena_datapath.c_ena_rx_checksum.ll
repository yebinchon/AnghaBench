; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ena_com_rx_ctx = type { i64, i64, i64, i64 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENA_ETH_IO_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@ENA_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RX IPv4 header checksum error\0A\00", align 1
@ENA_ETH_IO_L4_PROTO_TCP = common dso_local global i64 0, align 8
@ENA_ETH_IO_L4_PROTO_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"RX L4 checksum error\0A\00", align 1
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_com_rx_ctx*, %struct.mbuf*)* @ena_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_rx_checksum(%struct.ena_ring* %0, %struct.ena_com_rx_ctx* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_com_rx_ctx*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store %struct.ena_com_rx_ctx* %1, %struct.ena_com_rx_ctx** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ENA_ETH_IO_L3_PROTO_IPV4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %27 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @counter_u64_add(i32 %29, i32 1)
  %31 = load i32, i32* @ENA_DBG, align 4
  %32 = call i32 @ena_trace(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %73

33:                                               ; preds = %17
  %34 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ENA_ETH_IO_L4_PROTO_TCP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ENA_ETH_IO_L4_PROTO_UDP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %39, %33
  %46 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %55 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @counter_u64_add(i32 %57, i32 1)
  %59 = load i32, i32* @ENA_DBG, align 4
  %60 = call i32 @ena_trace(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %72

61:                                               ; preds = %45
  %62 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @CSUM_IP_VALID, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %50
  br label %73

73:                                               ; preds = %22, %72, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
