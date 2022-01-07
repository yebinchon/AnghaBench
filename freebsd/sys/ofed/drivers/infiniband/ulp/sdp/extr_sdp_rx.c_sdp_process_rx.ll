; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_process_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ring destroyed. not polling it\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"processed %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"credits:  %d -> %d\00", align 1
@rx_comp_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_process_rx(%struct.sdp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 0
  %8 = call i32 @rx_ring_trylock(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sdp_dbg(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %17 = call i32 @tx_credits(%struct.sdp_sock* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %19 = call i32 @sdp_poll_rx_cq(%struct.sdp_sock* %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i32*, i8*, i32, ...) @sdp_prf(i32 %22, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %33 = call i32 @tx_credits(%struct.sdp_sock* %32)
  %34 = call i32 (i32, i32*, i8*, i32, ...) @sdp_prf(i32 %30, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* @rx_comp_wq, align 4
  %36 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %36, i32 0, i32 1
  %38 = call i32 @queue_work(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %41 = call i32 @sdp_arm_rx_cq(%struct.sdp_sock* %40)
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %42, i32 0, i32 0
  %44 = call i32 @rx_ring_unlock(i32* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rx_ring_trylock(i32*) #1

declare dso_local i32 @sdp_dbg(i32, i8*) #1

declare dso_local i32 @tx_credits(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_poll_rx_cq(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_prf(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @sdp_arm_rx_cq(%struct.sdp_sock*) #1

declare dso_local i32 @rx_ring_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
