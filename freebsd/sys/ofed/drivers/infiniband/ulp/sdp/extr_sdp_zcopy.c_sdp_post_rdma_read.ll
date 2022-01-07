; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_post_rdma_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_post_rdma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rx_srcavail_state = type { i32, i64, i64, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sdp_sock = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rx_srcavail_state* }
%struct.ib_send_wr = type { i32, i64, %struct.ib_sge*, %struct.TYPE_12__, i32, i32*, i32, i32* }
%struct.ib_sge = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@SDP_OP_RDMA = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.rx_srcavail_state*)* @sdp_post_rdma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_post_rdma_read(%struct.socket* %0, %struct.rx_srcavail_state* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rx_srcavail_state*, align 8
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca %struct.ib_sge, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.rx_srcavail_state* %1, %struct.rx_srcavail_state** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %9)
  store %struct.sdp_sock* %10, %struct.sdp_sock** %5, align 8
  %11 = bitcast %struct.ib_send_wr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 72, i1 false)
  %12 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 6
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 5
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @SDP_OP_RDMA, align 4
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %18 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %26 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.rx_srcavail_state* %24, %struct.rx_srcavail_state** %27, align 8
  %28 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %29 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %35 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %41 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %49 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %52 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store %struct.ib_sge* %8, %struct.ib_sge** %59, align 8
  %60 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %4, align 8
  %61 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i64, i64* @IB_SEND_SIGNALED, align 8
  %65 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %67 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ib_post_send(i32 %68, %struct.ib_send_wr* %7, %struct.ib_send_wr** %6)
  ret i32 %69
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
