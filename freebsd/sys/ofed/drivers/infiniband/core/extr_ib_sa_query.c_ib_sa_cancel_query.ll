; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_cancel_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_cancel_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { %struct.ib_mad_send_buf*, %struct.TYPE_2__* }
%struct.ib_mad_send_buf = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }

@idr_lock = common dso_local global i32 0, align 4
@query_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_sa_cancel_query(i32 %0, %struct.ib_sa_query* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_sa_query*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ib_mad_agent*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ib_sa_query* %1, %struct.ib_sa_query** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ib_sa_query* @idr_find(i32* @query_idr, i32 %10)
  %12 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %13 = icmp ne %struct.ib_sa_query* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %15)
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %19 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %21, align 8
  store %struct.ib_mad_agent* %22, %struct.ib_mad_agent** %6, align 8
  %23 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %24 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %23, i32 0, i32 0
  %25 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %24, align 8
  store %struct.ib_mad_send_buf* %25, %struct.ib_mad_send_buf** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %26)
  br label %28

28:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_sa_query* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
