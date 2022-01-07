; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_drop_syn_sent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_drop_syn_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.tcpcb = type { i64, i32 }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcb* @tcp_drop_syn_sent(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @NET_EPOCH_ASSERT()
  %8 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %8)
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INP_TIMEWAIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INP_DROPPED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %24, %struct.inpcb** %3, align 8
  br label %53

25:                                               ; preds = %16
  %26 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %27 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %26)
  store %struct.tcpcb* %27, %struct.tcpcb** %6, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TCPS_SYN_SENT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %34, %struct.inpcb** %3, align 8
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_FASTOPEN(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %43 = call i32 @tcp_fastopen_disable_path(%struct.tcpcb* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %45, i32 %46)
  store %struct.tcpcb* %47, %struct.tcpcb** %6, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %49 = icmp ne %struct.tcpcb* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %51, %struct.inpcb** %3, align 8
  br label %53

52:                                               ; preds = %44
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  br label %53

53:                                               ; preds = %52, %50, %33, %23
  %54 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  ret %struct.inpcb* %54
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i64 @IS_FASTOPEN(i32) #1

declare dso_local i32 @tcp_fastopen_disable_path(%struct.tcpcb*) #1

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
