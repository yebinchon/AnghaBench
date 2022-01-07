; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_check_data_after_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_check_data_after_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcp_bbr = type { i64, i32 }
%struct.tcpcb = type { i32, i64 }
%struct.tcphdr = type { i64 }
%struct.socket = type { i32 }

@tcps_rcvafterclose = common dso_local global i32 0, align 4
@BANDLIM_UNLIMITED = common dso_local global i32 0, align 4
@TF2_DROP_AF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcp_bbr*, %struct.tcpcb*, i64*, %struct.tcphdr*, %struct.socket*)* @bbr_check_data_after_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_check_data_after_close(%struct.mbuf* %0, %struct.tcp_bbr* %1, %struct.tcpcb* %2, i64* %3, %struct.tcphdr* %4, %struct.socket* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.tcp_bbr*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.socket*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %8, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %9, align 8
  store %struct.tcpcb* %2, %struct.tcpcb** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.tcphdr* %4, %struct.tcphdr** %12, align 8
  store %struct.socket* %5, %struct.socket** %13, align 8
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %15 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %36, %18
  %20 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %21 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %20)
  store %struct.tcpcb* %21, %struct.tcpcb** %10, align 8
  %22 = load i32, i32* @tcps_rcvafterclose, align 4
  %23 = call i32 @TCPSTAT_INC(i32 %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %27 = load i32, i32* @BANDLIM_UNLIMITED, align 4
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %24, %struct.tcpcb* %25, %struct.tcphdr* %26, i32 %27, i64 %29)
  store i32 1, i32* %7, align 4
  br label %54

31:                                               ; preds = %6
  %32 = load %struct.socket*, %struct.socket** %13, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = call i64 @sbavail(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %19

37:                                               ; preds = %31
  %38 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @TF2_DROP_AF_DATA, align 4
  %47 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 0, i64* %53, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %37, %19
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @ctf_do_dropwithreset(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i64) #1

declare dso_local i64 @sbavail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
