; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32 }
%struct.tseg_qent = type { i32, i32, i32, %struct.mbuf*, i32, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Tp:%p seg queue goes negative\00", align 1
@tcps_rcvoopack = common dso_local global i32 0, align 4
@tcps_rcvoobyte = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TCP_R_LOG_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tseg_qent*, %struct.mbuf*, i32, i32, %struct.mbuf*, i32, i32)* @tcp_reass_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reass_replace(%struct.tcpcb* %0, %struct.tseg_qent* %1, %struct.mbuf* %2, i32 %3, i32 %4, %struct.mbuf* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca %struct.tseg_qent*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %9, align 8
  store %struct.tseg_qent* %1, %struct.tseg_qent** %10, align 8
  store %struct.mbuf* %2, %struct.mbuf** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.mbuf* %5, %struct.mbuf** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %19 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %18, i32 0, i32 3
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  %22 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %26 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %31 = bitcast %struct.tcpcb* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  %33 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %34 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %42 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %44 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %45 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %44, i32 0, i32 3
  store %struct.mbuf* %43, %struct.mbuf** %45, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %47 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %48 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %47, i32 0, i32 5
  store %struct.mbuf* %46, %struct.mbuf** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %51 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %54 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %60 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %17, align 4
  br label %64

63:                                               ; preds = %8
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @tcps_rcvoopack, align 4
  %70 = call i32 @TCPSTAT_INC(i32 %69)
  %71 = load i32, i32* @tcps_rcvoobyte, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @TCPSTAT_ADD(i32 %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %76 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @TH_FIN, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %81 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %83 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tseg_qent*, %struct.tseg_qent** %10, align 8
  %86 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %85, i32 0, i32 3
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %92 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
