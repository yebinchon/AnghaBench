; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_dropwithreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_dropwithreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcpcb = type { i32 }
%struct.tcphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctf_do_dropwithreset(%struct.mbuf* %0, %struct.tcpcb* %1, %struct.tcphdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %12 = icmp ne %struct.tcpcb* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %5
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @tcp_dropwithreset(%struct.mbuf* %14, %struct.tcphdr* %15, %struct.tcpcb* %16, i32 %17, i32 %18)
  %20 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @INP_WUNLOCK(i32 %22)
  br label %30

24:                                               ; preds = %5
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @tcp_dropwithreset(%struct.mbuf* %25, %struct.tcphdr* %26, %struct.tcpcb* null, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @tcp_dropwithreset(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32) #1

declare dso_local i32 @INP_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
