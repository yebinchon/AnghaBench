; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_check_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_check_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.oce_rq = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@OCE_RQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, %struct.oce_rq*)* @oce_check_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_check_rx_bufs(%struct.TYPE_6__* %0, i64 %1, %struct.oce_rq* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.oce_rq*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.oce_rq* %2, %struct.oce_rq** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %12 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @oce_arm_cq(%struct.TYPE_6__* %10, i32 %15, i64 %16, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %9
  %24 = load i32, i32* @OCE_RQ_PACKET_ARRAY_SIZE, align 4
  %25 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %26 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %32 = load i32, i32* @OCE_RQ_PACKET_ARRAY_SIZE, align 4
  %33 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %34 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @oce_alloc_rx_bufs(%struct.oce_rq* %31, i32 %37)
  br label %39

39:                                               ; preds = %30, %23
  br label %52

40:                                               ; preds = %9
  %41 = load i32, i32* @OCE_RQ_PACKET_ARRAY_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %44 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = icmp sgt i32 %46, 64
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.oce_rq*, %struct.oce_rq** %6, align 8
  %50 = call i32 @oce_alloc_rx_bufs(%struct.oce_rq* %49, i32 64)
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @oce_arm_cq(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @oce_alloc_rx_bufs(%struct.oce_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
