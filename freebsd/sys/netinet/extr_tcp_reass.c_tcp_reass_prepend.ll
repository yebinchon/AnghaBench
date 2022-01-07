; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tseg_qent = type { i32, i32, i32, %struct.mbuf* }
%struct.tcphdr = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { i32 }

@tcps_rcvoopack = common dso_local global i32 0, align 4
@tcps_rcvoobyte = common dso_local global i32 0, align 4
@TCP_R_LOG_PREPEND = common dso_local global i32 0, align 4
@TCP_R_LOG_TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tseg_qent*, %struct.mbuf*, %struct.tcphdr*, i32, %struct.mbuf*, i32)* @tcp_reass_prepend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reass_prepend(%struct.tcpcb* %0, %struct.tseg_qent* %1, %struct.mbuf* %2, %struct.tcphdr* %3, i32 %4, %struct.mbuf* %5, i32 %6) #0 {
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tseg_qent*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %8, align 8
  store %struct.tseg_qent* %1, %struct.tseg_qent** %9, align 8
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.mbuf* %5, %struct.mbuf** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %22 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @SEQ_GT(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %7
  %27 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %33 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %15, align 4
  %36 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %37 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %36, i32 0, i32 3
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @m_adj(%struct.mbuf* %38, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %43 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %48 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %26, %7
  %52 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %53 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %52, i32 0, i32 3
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  store %struct.mbuf* %54, %struct.mbuf** %56, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %58 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %59 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %58, i32 0, i32 3
  store %struct.mbuf* %57, %struct.mbuf** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %62 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %69 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %71 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %74 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %73, i32 0, i32 3
  %75 = load %struct.mbuf*, %struct.mbuf** %74, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.tseg_qent*, %struct.tseg_qent** %9, align 8
  %80 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @tcps_rcvoopack, align 4
  %88 = call i32 @TCPSTAT_INC(i32 %87)
  %89 = load i32, i32* @tcps_rcvoobyte, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @TCPSTAT_ADD(i32 %89, i32 %90)
  ret void
}

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
