; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i64 }
%struct.timeval = type { i32, i32 }

@M_TSTMP_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rack_do_segment(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 4
  store %struct.mbuf* %0, %struct.mbuf** %8, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %9, align 8
  store %struct.socket* %2, %struct.socket** %10, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = load %struct.socket*, %struct.socket** %10, align 8
  %22 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %23 = call i64 @ctf_do_queued_segments(%struct.socket* %21, %struct.tcpcb* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  br label %67

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %7
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @M_TSTMP_LRO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1000000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, 1000000000
  %48 = sdiv i32 %47, 1000
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %52

50:                                               ; preds = %29
  %51 = call i32 @tcp_get_usecs(%struct.timeval* %15)
  br label %52

52:                                               ; preds = %50, %36
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %55 = load %struct.socket*, %struct.socket** %10, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @rack_do_segment_nounlock(%struct.mbuf* %53, %struct.tcphdr* %54, %struct.socket* %55, %struct.tcpcb* %56, i32 %57, i32 %58, i32 %59, i32 0, %struct.timeval* %15)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @INP_WUNLOCK(i32 %65)
  br label %67

67:                                               ; preds = %25, %62, %52
  ret void
}

declare dso_local i64 @ctf_do_queued_segments(%struct.socket*, %struct.tcpcb*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i64 @rack_do_segment_nounlock(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, %struct.timeval*) #1

declare dso_local i32 @INP_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
