; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_process_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_process_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_wc = type { i32 }

@SDP_NUM_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tx irq on destroyed tx_cq\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@sk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Waking sendmsg. inflight=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*)* @sdp_process_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_process_tx_cq(%struct.sdp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  %10 = load i32, i32* @SDP_NUM_WC, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.ib_wc, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %15 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %14)
  %16 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdp_dbg(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %72

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %50, %26
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDP_NUM_WC, align 4
  %33 = call i32 @ib_poll_cq(i32 %31, i32 %32, %struct.ib_wc* %13)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i64 %41
  %43 = call i32 @sdp_process_tx_wc(%struct.sdp_sock* %39, %struct.ib_wc* %42)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SDP_NUM_WC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %27, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %59 = load i32, i32* @M_NOWAIT, align 4
  %60 = call i32 @sdp_post_sends(%struct.sdp_sock* %58, i32 %59)
  %61 = load i32, i32* @sk, align 4
  %62 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %63 = call i64 @tx_ring_posted(%struct.sdp_sock* %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sdp_prf1(i32 %61, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %67 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sowwakeup(i32 %68)
  br label %70

70:                                               ; preds = %57, %54
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %21
  %73 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #2

declare dso_local i32 @sdp_dbg(i32, i8*) #2

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #2

declare dso_local i32 @sdp_process_tx_wc(%struct.sdp_sock*, %struct.ib_wc*) #2

declare dso_local i32 @sdp_post_sends(%struct.sdp_sock*, i32) #2

declare dso_local i32 @sdp_prf1(i32, i32*, i8*, i32) #2

declare dso_local i64 @tx_ring_posted(%struct.sdp_sock*) #2

declare dso_local i32 @sowwakeup(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
