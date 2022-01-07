; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_drop_in_pkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_drop_in_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_drop_in_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_drop_in_pkts(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %7, %struct.mbuf** %3, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %9 = icmp ne %struct.mbuf* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %13, %struct.mbuf** %4, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  br label %18

18:                                               ; preds = %31, %15
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %24, %struct.mbuf** %3, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %26 = icmp ne %struct.mbuf* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  store %struct.mbuf* %30, %struct.mbuf** %4, align 8
  br label %31

31:                                               ; preds = %27, %21
  br label %18

32:                                               ; preds = %18
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
