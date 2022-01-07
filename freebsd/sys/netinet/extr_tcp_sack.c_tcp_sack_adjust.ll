; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32 }
%struct.sackhole = type { i32, i32 }

@scblink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sack_adjust(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.sackhole*, align 8
  %4 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 3
  %7 = call %struct.sackhole* @TAILQ_FIRST(i32* %6)
  store %struct.sackhole* %7, %struct.sackhole** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @INP_WLOCK_ASSERT(i32 %10)
  %12 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %13 = icmp eq %struct.sackhole* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @SEQ_GEQ(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %75

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %58, %25
  %27 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %28 = load i32, i32* @scblink, align 4
  %29 = call %struct.sackhole* @TAILQ_NEXT(%struct.sackhole* %27, i32 %28)
  store %struct.sackhole* %29, %struct.sackhole** %3, align 8
  %30 = icmp ne %struct.sackhole* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %36 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SEQ_LT(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %75

41:                                               ; preds = %31
  %42 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  %46 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @SEQ_GEQ(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  store %struct.sackhole* %51, %struct.sackhole** %4, align 8
  br label %58

52:                                               ; preds = %41
  %53 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  %54 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %75

58:                                               ; preds = %50
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %64 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @SEQ_LT(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %75

69:                                               ; preds = %59
  %70 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %68, %52, %40, %24, %14
  ret void
}

declare dso_local %struct.sackhole* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local %struct.sackhole* @TAILQ_NEXT(%struct.sackhole*, i32) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
