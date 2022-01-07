; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tseg_qent = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.mbuf = type { %struct.mbuf* }

@TH_FIN = common dso_local global i32 0, align 4
@tcps_rcvoopack = common dso_local global i32 0, align 4
@tcps_rcvoobyte = common dso_local global i32 0, align 4
@TCP_R_LOG_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tseg_qent*, %struct.mbuf*, %struct.tcphdr*, i32, %struct.mbuf*, i32)* @tcp_reass_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reass_append(%struct.tcpcb* %0, %struct.tseg_qent* %1, %struct.mbuf* %2, %struct.tcphdr* %3, i32 %4, %struct.mbuf* %5, i32 %6) #0 {
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tseg_qent*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %8, align 8
  store %struct.tseg_qent* %1, %struct.tseg_qent** %9, align 8
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.mbuf* %5, %struct.mbuf** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %17 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %22 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %20
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TH_FIN, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %34 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %38 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %39 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %38, i32 0, i32 5
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  store %struct.mbuf* %37, %struct.mbuf** %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %43 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %44 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %43, i32 0, i32 5
  store %struct.mbuf* %42, %struct.mbuf** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %47 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @tcps_rcvoopack, align 4
  %55 = call i32 @TCPSTAT_INC(i32 %54)
  %56 = load i32, i32* @tcps_rcvoobyte, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @TCPSTAT_ADD(i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
