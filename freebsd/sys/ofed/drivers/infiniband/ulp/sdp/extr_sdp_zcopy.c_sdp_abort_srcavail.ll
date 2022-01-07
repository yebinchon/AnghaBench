; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_abort_srcavail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_abort_srcavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { i32, %struct.tx_srcavail_state*, i32 }
%struct.tx_srcavail_state = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_abort_srcavail(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.tx_srcavail_state*, align 8
  %5 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %6)
  store %struct.sdp_sock* %7, %struct.sdp_sock** %3, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 1
  %10 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %9, align 8
  store %struct.tx_srcavail_state* %10, %struct.tx_srcavail_state** %4, align 8
  %11 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %4, align 8
  %12 = icmp ne %struct.tx_srcavail_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 2
  %17 = call i32 @cancel_delayed_work(i32* %16)
  %18 = call i32 (...) @flush_scheduled_work()
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %20 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %4, align 8
  %25 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %24, i32 0, i32 1
  %26 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %4, align 8
  %27 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %26, i32 0, i32 0
  %28 = call i32 @sdp_free_fmr(%struct.socket* %23, i32* %25, i32* %27)
  %29 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %29, i32 0, i32 1
  store %struct.tx_srcavail_state* null, %struct.tx_srcavail_state** %30, align 8
  %31 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdp_free_fmr(%struct.socket*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
