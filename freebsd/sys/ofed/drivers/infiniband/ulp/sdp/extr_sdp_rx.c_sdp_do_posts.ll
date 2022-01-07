; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_do_posts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_do_posts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.socket* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"QP is deactivated\0A\00", align 1
@TCPS_TIME_WAIT = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@SDP_MIN_TX_CREDITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Processing to free pending sends\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Sending credit update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_do_posts(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 5
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %10 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %9)
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = call i32 @sdp_dbg(%struct.socket* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %83

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %24, %18
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 3
  %22 = call %struct.mbuf* @mbufq_dequeue(i32* %21)
  store %struct.mbuf* %22, %struct.mbuf** %5, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = call i32 @sdp_process_rx_ctl_mb(%struct.sdp_sock* %25, %struct.mbuf* %26)
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %30 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCPS_TIME_WAIT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %83

35:                                               ; preds = %28
  %36 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %37 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %43 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41, %35
  br label %83

48:                                               ; preds = %41
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %50 = call i32 @sdp_post_recvs(%struct.sdp_sock* %49)
  %51 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %52 = call i64 @tx_ring_posted(%struct.sdp_sock* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %56 = call i32 @sdp_xmit_poll(%struct.sdp_sock* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %59 = load i32, i32* @M_NOWAIT, align 4
  %60 = call i32 @sdp_post_sends(%struct.sdp_sock* %58, i32 %59)
  %61 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %62 = call i64 @tx_credits(%struct.sdp_sock* %61)
  %63 = load i64, i64* @SDP_MIN_TX_CREDITS, align 8
  %64 = icmp slt i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %67 = call i64 @credit_update_needed(%struct.sdp_sock* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69, %57
  %73 = load %struct.socket*, %struct.socket** %3, align 8
  %74 = call i32 @sdp_prf(%struct.socket* %73, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @sdp_xmit_poll(%struct.sdp_sock* %75, i32 %76)
  %78 = load %struct.socket*, %struct.socket** %3, align 8
  %79 = call i32 @sdp_prf(%struct.socket* %78, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %81 = load i32, i32* @M_NOWAIT, align 4
  %82 = call i32 @sdp_post_sends(%struct.sdp_sock* %80, i32 %81)
  br label %83

83:                                               ; preds = %15, %34, %47, %72, %69
  ret void
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_dbg(%struct.socket*, i8*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @sdp_process_rx_ctl_mb(%struct.sdp_sock*, %struct.mbuf*) #1

declare dso_local i32 @sdp_post_recvs(%struct.sdp_sock*) #1

declare dso_local i64 @tx_ring_posted(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_xmit_poll(%struct.sdp_sock*, i32) #1

declare dso_local i32 @sdp_post_sends(%struct.sdp_sock*, i32) #1

declare dso_local i64 @tx_credits(%struct.sdp_sock*) #1

declare dso_local i64 @credit_update_needed(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_prf(%struct.socket*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
