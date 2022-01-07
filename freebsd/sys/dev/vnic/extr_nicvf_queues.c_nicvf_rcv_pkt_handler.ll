; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rcv_pkt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rcv_pkt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rcv_queue* }
%struct.rcv_queue = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cmp_queue = type { i32 }
%struct.cqe_rx_t = type { i32, i64, i64, i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Packet not received\0A\00", align 1
@L3TYPE_IPV4 = common dso_local global i64 0, align 8
@L4TYPE_TCP = common dso_local global i64 0, align 8
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.cmp_queue*, %struct.cqe_rx_t*, i32)* @nicvf_rcv_pkt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_rcv_pkt_handler(%struct.nicvf* %0, %struct.cmp_queue* %1, %struct.cqe_rx_t* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.cmp_queue*, align 8
  %8 = alloca %struct.cqe_rx_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.rcv_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %6, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %7, align 8
  store %struct.cqe_rx_t* %2, %struct.cqe_rx_t** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %15 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %18 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.rcv_queue*, %struct.rcv_queue** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %21, i64 %23
  store %struct.rcv_queue* %24, %struct.rcv_queue** %11, align 8
  %25 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %26 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %27 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %28 = call i32 @nicvf_check_cqe_rx_errs(%struct.nicvf* %25, %struct.cmp_queue* %26, %struct.cqe_rx_t* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %33 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %109

37:                                               ; preds = %31, %4
  %38 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %39 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %40 = call %struct.mbuf* @nicvf_get_rcv_mbuf(%struct.nicvf* %38, %struct.cqe_rx_t* %39)
  store %struct.mbuf* %40, %struct.mbuf** %10, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dprintf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %109

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %53 = call i32 @m_freem(%struct.mbuf* %52)
  store i32 0, i32* %5, align 4
  br label %109

54:                                               ; preds = %48
  %55 = load %struct.rcv_queue*, %struct.rcv_queue** %11, align 8
  %56 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %61 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @L3TYPE_IPV4, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %59
  %66 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %8, align 8
  %67 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @L4TYPE_TCP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CSUM_DATA_VALID, align 4
  %77 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @CSUM_DATA_VALID, align 4
  %81 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %71
  %85 = load %struct.rcv_queue*, %struct.rcv_queue** %11, align 8
  %86 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.rcv_queue*, %struct.rcv_queue** %11, align 8
  %92 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %91, i32 0, i32 0
  %93 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %94 = call i64 @tcp_lro_rx(%struct.TYPE_6__* %92, %struct.mbuf* %93, i32 0)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %109

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97, %71, %65, %59, %54
  %99 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %100 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %103 = call i32 @buf_ring_enqueue(i32 %101, %struct.mbuf* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %109

108:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %106, %96, %51, %43, %36
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @nicvf_check_cqe_rx_errs(%struct.nicvf*, %struct.cmp_queue*, %struct.cqe_rx_t*) #1

declare dso_local %struct.mbuf* @nicvf_get_rcv_mbuf(%struct.nicvf*, %struct.cqe_rx_t*) #1

declare dso_local i32 @dprintf(i32, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @tcp_lro_rx(%struct.TYPE_6__*, %struct.mbuf*, i32) #1

declare dso_local i32 @buf_ring_enqueue(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
