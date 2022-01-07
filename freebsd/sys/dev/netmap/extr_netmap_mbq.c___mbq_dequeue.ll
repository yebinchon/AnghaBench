; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mbq.c___mbq_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mbq.c___mbq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.mbq = type { i32, i32*, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbq*)* @__mbq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @__mbq_dequeue(%struct.mbq* %0) #0 {
  %2 = alloca %struct.mbq*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mbq* %0, %struct.mbq** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  %4 = load %struct.mbq*, %struct.mbq** %2, align 8
  %5 = getelementptr inbounds %struct.mbq, %struct.mbq* %4, i32 0, i32 2
  %6 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %7 = icmp ne %struct.mbuf* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.mbq*, %struct.mbq** %2, align 8
  %10 = getelementptr inbounds %struct.mbq, %struct.mbq* %9, i32 0, i32 2
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %11, %struct.mbuf** %3, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %15 = load %struct.mbq*, %struct.mbq** %2, align 8
  %16 = getelementptr inbounds %struct.mbq, %struct.mbq* %15, i32 0, i32 2
  store %struct.mbuf* %14, %struct.mbuf** %16, align 8
  %17 = load %struct.mbq*, %struct.mbq** %2, align 8
  %18 = getelementptr inbounds %struct.mbq, %struct.mbq* %17, i32 0, i32 2
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %20 = icmp eq %struct.mbuf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load %struct.mbq*, %struct.mbq** %2, align 8
  %23 = getelementptr inbounds %struct.mbq, %struct.mbq* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %8
  %25 = load %struct.mbq*, %struct.mbq** %2, align 8
  %26 = getelementptr inbounds %struct.mbq, %struct.mbq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %30, align 8
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
