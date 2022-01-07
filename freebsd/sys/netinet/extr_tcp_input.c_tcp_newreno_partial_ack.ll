; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_newreno_partial_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_newreno_partial_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }
%struct.tcphdr = type { i32 }

@TT_REXMT = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_newreno_partial_ack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = call i64 @tcp_maxseg(%struct.tcpcb* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @INP_WLOCK_ASSERT(i32 %18)
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = load i32, i32* @TT_REXMT, align 4
  %22 = call i32 @tcp_timer_activate(%struct.tcpcb* %20, i32 %21, i32 0)
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %33 = call i64 @BYTES_THIS_ACK(%struct.tcpcb* %31, %struct.tcphdr* %32)
  %34 = add nsw i64 %30, %33
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @TF_ACKNOW, align 4
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %45, align 8
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = call i32 %46(%struct.tcpcb* %47)
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @SEQ_GT(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %2
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %67 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %68 = call i64 @BYTES_THIS_ACK(%struct.tcpcb* %66, %struct.tcphdr* %67)
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %73 = call i64 @BYTES_THIS_ACK(%struct.tcpcb* %71, %struct.tcphdr* %72)
  %74 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %81

78:                                               ; preds = %62
  %79 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  ret void
}

declare dso_local i64 @tcp_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

declare dso_local i64 @BYTES_THIS_ACK(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
