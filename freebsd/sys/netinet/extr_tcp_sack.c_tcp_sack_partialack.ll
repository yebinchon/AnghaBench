; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_partialack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_partialack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64, i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.tcpcb*)* }
%struct.TYPE_3__ = type { i64 }
%struct.tcphdr = type { i32 }

@TT_REXMT = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sack_partialack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(i32 %8)
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = load i32, i32* @TT_REXMT, align 4
  %12 = call i32 @tcp_timer_activate(%struct.tcpcb* %10, i32 %11, i32 0)
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %17 = call i32 @BYTES_THIS_ACK(%struct.tcpcb* %15, %struct.tcphdr* %16)
  %18 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %17, %20
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = add nsw i64 %28, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %36, %42
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %24
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %24
  %60 = load i32, i32* @TF_ACKNOW, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %68, align 8
  %70 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %71 = call i32 %69(%struct.tcpcb* %70)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

declare dso_local i32 @BYTES_THIS_ACK(%struct.tcpcb*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
