; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_complete_rmpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_complete_rmpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_recv_wc = type { i32 }
%struct.mad_rmpp_recv = type { i32, i32, %struct.TYPE_4__*, %struct.ib_mad_recv_wc*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_recv_wc* (%struct.mad_rmpp_recv*)* @complete_rmpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_recv_wc* @complete_rmpp(%struct.mad_rmpp_recv* %0) #0 {
  %2 = alloca %struct.mad_rmpp_recv*, align 8
  %3 = alloca %struct.ib_mad_recv_wc*, align 8
  store %struct.mad_rmpp_recv* %0, %struct.mad_rmpp_recv** %2, align 8
  %4 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %5 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %6 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %5, i32 0, i32 3
  %7 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %8 = call i32 @ack_recv(%struct.mad_rmpp_recv* %4, %struct.ib_mad_recv_wc* %7)
  %9 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %10 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %15 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %14, i32 0, i32 4
  %16 = call i32 @cancel_delayed_work(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %19 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %18, i32 0, i32 3
  %20 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %19, align 8
  store %struct.ib_mad_recv_wc* %20, %struct.ib_mad_recv_wc** %3, align 8
  %21 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %22 = call i32 @get_mad_len(%struct.mad_rmpp_recv* %21)
  %23 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  %24 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %26 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %35 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %34, i32 0, i32 1
  %36 = call i32 @msecs_to_jiffies(i32 10000)
  %37 = call i32 @queue_delayed_work(i32 %33, i32* %35, i32 %36)
  %38 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  ret %struct.ib_mad_recv_wc* %38
}

declare dso_local i32 @ack_recv(%struct.mad_rmpp_recv*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @get_mad_len(%struct.mad_rmpp_recv*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
