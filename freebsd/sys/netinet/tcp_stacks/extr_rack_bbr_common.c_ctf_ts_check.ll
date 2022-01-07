; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_ts_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_ts_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcpcb = type { i64, i64 }

@TCP_PAWS_IDLE = common dso_local global i64 0, align 8
@tcps_rcvduppack = common dso_local global i32 0, align 4
@tcps_rcvdupbyte = common dso_local global i32 0, align 4
@tcps_pawsdrop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_ts_check(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.tcpcb* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %8, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %9, align 8
  store %struct.tcpcb* %2, %struct.tcpcb** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %14 = call i64 (...) @tcp_ts_getticks()
  %15 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* @TCP_PAWS_IDLE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %47

24:                                               ; preds = %6
  %25 = load i32, i32* @tcps_rcvduppack, align 4
  %26 = call i32 @TCPSTAT_INC(i32 %25)
  %27 = load i32, i32* @tcps_rcvdupbyte, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @TCPSTAT_ADD(i32 %27, i64 %28)
  %30 = load i32, i32* @tcps_pawsdrop, align 4
  %31 = call i32 @TCPSTAT_INC(i32 %30)
  %32 = load i64*, i64** %13, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %37 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %38 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64*, i64** %13, align 8
  %42 = call i32 @ctf_do_dropafterack(%struct.mbuf* %36, %struct.tcpcb* %37, %struct.tcphdr* %38, i64 %39, i64 %40, i64* %41)
  br label %46

43:                                               ; preds = %24
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = call i32 @ctf_do_drop(%struct.mbuf* %44, i32* null)
  br label %46

46:                                               ; preds = %43, %35
  store i32 1, i32* %7, align 4
  br label %48

47:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i64 @tcp_ts_getticks(...) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i64) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i64, i64, i64*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
