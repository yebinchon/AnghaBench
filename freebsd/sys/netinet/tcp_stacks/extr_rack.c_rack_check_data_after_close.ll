; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_check_data_after_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_check_data_after_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcpcb = type { i32, i64, i64 }
%struct.tcphdr = type { i64 }
%struct.socket = type { i32 }
%struct.tcp_rack = type { i64, i32 }

@tcps_rcvafterclose = common dso_local global i32 0, align 4
@BANDLIM_UNLIMITED = common dso_local global i32 0, align 4
@TF2_DROP_AF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcpcb*, i64*, %struct.tcphdr*, %struct.socket*)* @rack_check_data_after_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_check_data_after_close(%struct.mbuf* %0, %struct.tcpcb* %1, i64* %2, %struct.tcphdr* %3, %struct.socket* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.tcp_rack*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %10, align 8
  store %struct.socket* %4, %struct.socket** %11, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tcp_rack*
  store %struct.tcp_rack* %16, %struct.tcp_rack** %12, align 8
  %17 = load %struct.tcp_rack*, %struct.tcp_rack** %12, align 8
  %18 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %39, %21
  %23 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %24 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %23)
  store %struct.tcpcb* %24, %struct.tcpcb** %8, align 8
  %25 = load i32, i32* @tcps_rcvafterclose, align 4
  %26 = call i32 @TCPSTAT_INC(i32 %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %30 = load i32, i32* @BANDLIM_UNLIMITED, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %27, %struct.tcpcb* %28, %struct.tcphdr* %29, i32 %30, i64 %32)
  store i32 1, i32* %6, align 4
  br label %57

34:                                               ; preds = %5
  %35 = load %struct.socket*, %struct.socket** %11, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = call i64 @sbavail(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %22

40:                                               ; preds = %34
  %41 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %43, %45
  %47 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @TF2_DROP_AF_DATA, align 4
  %50 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %12, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 0, i64* %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %40, %22
  %58 = load i32, i32* %6, align 4
  ret i32 %58
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
