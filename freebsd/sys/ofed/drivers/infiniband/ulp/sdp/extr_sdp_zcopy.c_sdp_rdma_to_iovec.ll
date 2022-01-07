; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_rdma_to_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_rdma_to_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.iovec = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.sdp_sock = type { i64, i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.rx_srcavail_state = type { i32, i64, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"preparing RDMA read. len: 0x%x. buffer len: 0x%lx\0A\00", align 1
@SOCK_REF_RDMA_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"len:0x%x > rx_sa->len: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error allocating fmr: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ib_post_send failed with status %d.\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Finished posting(rc=%d), now to wait\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Finished waiting(rc=%d)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"QP destroyed during RDMA read\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Couldn't do RDMA - post sendsm\0A\00", align 1
@RX_SA_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_rdma_to_iovec(%struct.socket* %0, %struct.iovec* %1, %struct.mbuf* %2, i64* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sdp_sock*, align 8
  %10 = alloca %struct.rx_srcavail_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %15)
  store %struct.sdp_sock* %16, %struct.sdp_sock** %9, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = call %struct.rx_srcavail_state* @RX_SRCAVAIL_STATE(%struct.mbuf* %17)
  store %struct.rx_srcavail_state* %18, %struct.rx_srcavail_state** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %23 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.socket*
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.iovec*, %struct.iovec** %6, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = load i32, i32* @SOCK_REF_RDMA_RD, align 4
  %34 = call i32 @sock_hold(%struct.socket* %32, i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %37 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %44 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = call i32 @WARN_ON(i32 1)
  %48 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %49 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %40, %4
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = load %struct.iovec*, %struct.iovec** %6, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %58 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %57, i32 0, i32 5
  %59 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %60 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %59, i32 0, i32 4
  %61 = call i32 @sdp_alloc_fmr(%struct.socket* %52, i32 %55, i32 %56, i32* %58, %struct.TYPE_5__** %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %150

68:                                               ; preds = %51
  %69 = load %struct.socket*, %struct.socket** %5, align 8
  %70 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %71 = call i32 @sdp_post_rdma_read(%struct.socket* %69, %struct.rx_srcavail_state* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %80 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ECONNRESET, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @sdp_set_error(i32 %81, i32 %83)
  %85 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %86 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %85, i32 0, i32 4
  %87 = call i32 @wake_up(i32* %86)
  br label %143

88:                                               ; preds = %68
  %89 = load %struct.socket*, %struct.socket** %5, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @sdp_prf(%struct.socket* %89, %struct.mbuf* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %94 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %97 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load %struct.socket*, %struct.socket** %5, align 8
  %102 = call i32 @sdp_arm_tx_cq(%struct.socket* %101)
  %103 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %104 = call i32 @sdp_wait_rdma_wr_finished(%struct.sdp_sock* %103)
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @sdp_prf(%struct.socket* %105, %struct.mbuf* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %110 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %88
  %114 = load %struct.socket*, %struct.socket** %5, align 8
  %115 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @EPIPE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %143

118:                                              ; preds = %88
  %119 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %120 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %119, i32 0, i32 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %14, align 4
  %124 = load %struct.socket*, %struct.socket** %5, align 8
  %125 = load %struct.iovec*, %struct.iovec** %6, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @sdp_update_iov_used(%struct.socket* %124, %struct.iovec* %125, i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %130 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %135 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %134, i32 0, i32 3
  %136 = call i32 @atomic_add(i32 %133, i32* %135)
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %8, align 8
  store i64 %138, i64* %139, align 8
  %140 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %141 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %118, %113, %75
  %144 = load %struct.socket*, %struct.socket** %5, align 8
  %145 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %146 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %145, i32 0, i32 5
  %147 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %148 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %147, i32 0, i32 4
  %149 = call i32 @sdp_free_fmr(%struct.socket* %144, i32* %146, %struct.TYPE_5__** %148)
  br label %150

150:                                              ; preds = %143, %64
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %155 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.socket*, %struct.socket** %5, align 8
  %160 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %161 = load i32, i32* @RX_SA_ABORTED, align 4
  %162 = load %struct.rx_srcavail_state*, %struct.rx_srcavail_state** %10, align 8
  %163 = getelementptr inbounds %struct.rx_srcavail_state, %struct.rx_srcavail_state* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158, %153, %150
  %167 = load %struct.socket*, %struct.socket** %5, align 8
  %168 = load i32, i32* @SOCK_REF_RDMA_RD, align 4
  %169 = call i32 @sock_put(%struct.socket* %167, i32 %168)
  %170 = load i32, i32* %12, align 4
  ret i32 %170
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local %struct.rx_srcavail_state* @RX_SRCAVAIL_STATE(%struct.mbuf*) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, ...) #1

declare dso_local i32 @sock_hold(%struct.socket*, i32) #1

declare dso_local i32 @sdp_warn(%struct.socket*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sdp_alloc_fmr(%struct.socket*, i32, i32, i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @sdp_post_rdma_read(%struct.socket*, %struct.rx_srcavail_state*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sdp_set_error(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sdp_prf(%struct.socket*, %struct.mbuf*, i8*, i32) #1

declare dso_local i32 @sdp_arm_tx_cq(%struct.socket*) #1

declare dso_local i32 @sdp_wait_rdma_wr_finished(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_update_iov_used(%struct.socket*, %struct.iovec*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @sdp_free_fmr(%struct.socket*, i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @sock_put(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
