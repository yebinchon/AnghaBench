; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_queued_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_queued_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tcpcb = type { i32*, %struct.mbuf* }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_do_queued_segments(%struct.socket* %0, %struct.tcpcb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 1
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 1
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %18, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ctf_process_inbound_raw(%struct.tcpcb* %21, %struct.socket* %22, %struct.mbuf* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %30

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @ctf_process_inbound_raw(%struct.tcpcb*, %struct.socket*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
