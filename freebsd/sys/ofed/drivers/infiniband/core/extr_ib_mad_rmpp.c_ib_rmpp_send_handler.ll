; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_ib_rmpp_send_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_ib_rmpp_send_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_rmpp_send_handler(%struct.ib_mad_send_wc* %0) #0 {
  %2 = alloca %struct.ib_mad_send_wc*, align 8
  store %struct.ib_mad_send_wc* %0, %struct.ib_mad_send_wc** %2, align 8
  %3 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %2, align 8
  %18 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ib_destroy_ah(i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %2, align 8
  %25 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @ib_free_send_mad(%struct.TYPE_2__* %26)
  ret void
}

declare dso_local i32 @ib_destroy_ah(i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
