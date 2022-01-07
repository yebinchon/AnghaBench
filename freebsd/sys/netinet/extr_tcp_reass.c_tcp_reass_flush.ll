; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i32 }
%struct.tseg_qent = type { i32 }

@tqe_q = common dso_local global i32 0, align 4
@tcp_reass_zone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"TCP reass queue %p segment count is %d instead of 0 after flush.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_reass_flush(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tseg_qent*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @INP_WLOCK_ASSERT(i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 2
  %11 = call %struct.tseg_qent* @TAILQ_FIRST(i32* %10)
  store %struct.tseg_qent* %11, %struct.tseg_qent** %3, align 8
  %12 = icmp ne %struct.tseg_qent* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 2
  %16 = load %struct.tseg_qent*, %struct.tseg_qent** %3, align 8
  %17 = load i32, i32* @tqe_q, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.tseg_qent* %16, i32 %17)
  %19 = load %struct.tseg_qent*, %struct.tseg_qent** %3, align 8
  %20 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @m_freem(i32 %21)
  %23 = load i32, i32* @tcp_reass_zone, align 4
  %24 = load %struct.tseg_qent*, %struct.tseg_qent** %3, align 8
  %25 = call i32 @uma_zfree(i32 %23, %struct.tseg_qent* %24)
  %26 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %37, i8* %42)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local %struct.tseg_qent* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tseg_qent*, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.tseg_qent*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
