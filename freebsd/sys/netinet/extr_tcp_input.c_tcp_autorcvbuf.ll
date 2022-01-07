; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_autorcvbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_autorcvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcpcb = type { i32, i64, i32 }

@V_tcp_do_autorcvbuf = common dso_local global i64 0, align 8
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@V_tcp_autorcvbuf_max = common dso_local global i32 0, align 4
@receive__autoresize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_autorcvbuf(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store %struct.socket* %2, %struct.socket** %8, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* @V_tcp_do_autorcvbuf, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %5
  %15 = load %struct.socket*, %struct.socket** %8, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SB_AUTOSIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %14
  %23 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %22
  %28 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %27
  %33 = call i64 (...) @tcp_ts_getticks()
  %34 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i32 @TCP_TS_TO_TICKS(i64 %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %32
  %47 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.socket*, %struct.socket** %8, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = sdiv i32 %54, 4
  %56 = mul nsw i32 %55, 3
  %57 = icmp sgt i32 %49, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %46
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V_tcp_autorcvbuf_max, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.socket*, %struct.socket** %8, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.socket*, %struct.socket** %8, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %69, %74
  %76 = load i32, i32* @V_tcp_autorcvbuf_max, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %65, %58, %46
  %79 = load i32, i32* @receive__autoresize, align 4
  %80 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %83 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @TCP_PROBE6(i32 %79, i32* null, %struct.tcpcb* %80, %struct.mbuf* %81, %struct.tcpcb* %82, %struct.tcphdr* %83, i32 %84)
  %86 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %96

90:                                               ; preds = %32, %27, %22, %14, %5
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %78
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @TCP_TS_TO_TICKS(i64) #1

declare dso_local i64 @tcp_ts_getticks(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TCP_PROBE6(i32, i32*, %struct.tcpcb*, %struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
