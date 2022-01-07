; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_getmetrics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_getmetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i64, i32, i32, i32 }
%struct.rt_metrics = type { i64, i32, i32, i32 }

@time_uptime = common dso_local global i64 0, align 8
@time_second = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.rt_metrics*)* @rt_getmetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_getmetrics(%struct.rtentry* %0, %struct.rt_metrics* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rt_metrics*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.rt_metrics* %1, %struct.rt_metrics** %4, align 8
  %5 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %6 = call i32 @bzero(%struct.rt_metrics* %5, i32 24)
  %7 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %8 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %11 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %16 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @counter_u64_fetch(i32 %19)
  %21 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %22 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %24 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %29 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @time_uptime, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @time_second, align 8
  %34 = add nsw i64 %32, %33
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i64 [ %34, %27 ], [ 0, %35 ]
  %38 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %39 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.rt_metrics*, i32) #1

declare dso_local i32 @counter_u64_fetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
