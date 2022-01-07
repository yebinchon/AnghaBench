; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sackhole = type { i32, i32 }
%struct.tcpcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.sackhole* }

@scblink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sackhole* @tcp_sack_output(%struct.tcpcb* %0, i32* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.sackhole* null, %struct.sackhole** %5, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(i32 %8)
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.sackhole*, %struct.sackhole** %17, align 8
  store %struct.sackhole* %18, %struct.sackhole** %5, align 8
  %19 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %20 = icmp eq %struct.sackhole* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %23 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %26 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @SEQ_LT(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21, %2
  br label %53

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %51, %31
  %33 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %34 = load i32, i32* @scblink, align 4
  %35 = call %struct.sackhole* @TAILQ_NEXT(%struct.sackhole* %33, i32 %34)
  store %struct.sackhole* %35, %struct.sackhole** %5, align 8
  %36 = icmp ne %struct.sackhole* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %39 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %42 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SEQ_LT(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store %struct.sackhole* %47, %struct.sackhole** %50, align 8
  br label %52

51:                                               ; preds = %37
  br label %32

52:                                               ; preds = %46, %32
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  ret %struct.sackhole* %54
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local %struct.sackhole* @TAILQ_NEXT(%struct.sackhole*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
