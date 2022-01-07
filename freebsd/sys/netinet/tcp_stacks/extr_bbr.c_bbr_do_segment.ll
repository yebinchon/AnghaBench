; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i64 }
%struct.timeval = type { i32, i32 }

@M_TSTMP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32)* @bbr_do_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_do_segment(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %8, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %9, align 8
  store %struct.socket* %2, %struct.socket** %10, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %7
  %22 = load %struct.socket*, %struct.socket** %10, align 8
  %23 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %24 = call i64 @ctf_do_queued_segments(%struct.socket* %22, %struct.tcpcb* %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  br label %69

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %7
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @M_TSTMP_LRO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 1000000000
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 1000000000
  %49 = sdiv i32 %48, 1000
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  br label %53

51:                                               ; preds = %30
  %52 = call i32 @tcp_get_usecs(%struct.timeval* %15)
  br label %53

53:                                               ; preds = %51, %37
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %56 = load %struct.socket*, %struct.socket** %10, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @bbr_do_segment_nounlock(%struct.mbuf* %54, %struct.tcphdr* %55, %struct.socket* %56, %struct.tcpcb* %57, i32 %58, i32 %59, i32 %60, i32 0, %struct.timeval* %15)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @INP_WUNLOCK(i32 %67)
  br label %69

69:                                               ; preds = %26, %64, %53
  ret void
}

declare dso_local i64 @ctf_do_queued_segments(%struct.socket*, %struct.tcpcb*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @bbr_do_segment_nounlock(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, %struct.timeval*) #1

declare dso_local i32 @INP_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
