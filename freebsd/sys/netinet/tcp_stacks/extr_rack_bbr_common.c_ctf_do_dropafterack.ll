; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_dropafterack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_dropafterack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcpcb = type { i64, i32, i32, i32 }
%struct.tcphdr = type { i32 }

@TCPS_SYN_RECEIVED = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctf_do_dropafterack(%struct.mbuf* %0, %struct.tcpcb* %1, %struct.tcphdr* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCPS_SYN_RECEIVED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TH_ACK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @SEQ_GT(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @SEQ_GT(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32, %23
  %42 = load i32*, i32** %12, align 8
  store i32 1, i32* %42, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %45 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %46 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %43, %struct.tcpcb* %44, %struct.tcphdr* %45, i32 %46, i32 %47)
  br label %62

49:                                               ; preds = %32, %18, %6
  %50 = load i32*, i32** %12, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* @TF_ACKNOW, align 4
  %53 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  br label %62

62:                                               ; preds = %41, %59, %51
  ret void
}

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @ctf_do_dropwithreset(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
