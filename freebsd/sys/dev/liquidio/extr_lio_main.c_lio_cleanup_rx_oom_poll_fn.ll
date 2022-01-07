; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_cleanup_rx_oom_poll_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_cleanup_rx_oom_poll_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @lio_cleanup_rx_oom_poll_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cleanup_rx_oom_poll_fn(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lio*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.lio* @if_getsoftc(%struct.ifnet* %4)
  store %struct.lio* %5, %struct.lio** %3, align 8
  %6 = load %struct.lio*, %struct.lio** %3, align 8
  %7 = getelementptr inbounds %struct.lio, %struct.lio* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %22, %11
  %13 = load %struct.lio*, %struct.lio** %3, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.lio*, %struct.lio** %3, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i64 @taskqueue_cancel_timeout(i32* %16, i32* %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.lio*, %struct.lio** %3, align 8
  %24 = getelementptr inbounds %struct.lio, %struct.lio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.lio*, %struct.lio** %3, align 8
  %28 = getelementptr inbounds %struct.lio, %struct.lio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @taskqueue_drain_timeout(i32* %26, i32* %29)
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.lio*, %struct.lio** %3, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @taskqueue_free(i32* %35)
  %37 = load %struct.lio*, %struct.lio** %3, align 8
  %38 = getelementptr inbounds %struct.lio, %struct.lio* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %1
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @taskqueue_cancel_timeout(i32*, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
