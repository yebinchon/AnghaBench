; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_start_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_start_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_start_rq(%struct.oce_rq* %0) #0 {
  %2 = alloca %struct.oce_rq*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.oce_rq* %0, %struct.oce_rq** %2, align 8
  %5 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %6 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %16 = call i32 @oce_alloc_rx_bufs(%struct.oce_rq* %15, i32 960)
  store i32 %16, i32* %4, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %19 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %20 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @oce_alloc_rx_bufs(%struct.oce_rq* %18, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %30 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %33 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @oce_arm_cq(i32 %31, i32 %36, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @oce_alloc_rx_bufs(%struct.oce_rq*, i32) #1

declare dso_local i32 @oce_arm_cq(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
