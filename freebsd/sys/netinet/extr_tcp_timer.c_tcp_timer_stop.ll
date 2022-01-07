; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.callout, %struct.callout, %struct.callout, %struct.callout, %struct.callout, i32 }
%struct.callout = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.tcpcb*, i32)* }

@TT_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tp %p bad timer_type %#x\00", align 1
@tcp_timer_discard = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_timer_stop(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.callout*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TT_STOPPED, align 4
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %6
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %39 [
    i32 131, label %14
    i32 128, label %19
    i32 129, label %24
    i32 130, label %29
    i32 132, label %34
  ]

14:                                               ; preds = %2
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store %struct.callout* %18, %struct.callout** %5, align 8
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store %struct.callout* %23, %struct.callout** %5, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store %struct.callout* %28, %struct.callout** %5, align 8
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.callout* %33, %struct.callout** %5, align 8
  br label %59

34:                                               ; preds = %2
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store %struct.callout* %38, %struct.callout** %5, align 8
  br label %59

39:                                               ; preds = %2
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.tcpcb*, i32)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %50, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %51(%struct.tcpcb* %52, i32 %53)
  br label %71

55:                                               ; preds = %39
  %56 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.tcpcb* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %34, %29, %24, %19, %14
  %60 = load %struct.callout*, %struct.callout** %5, align 8
  %61 = load i32, i32* @tcp_timer_discard, align 4
  %62 = call i64 @callout_async_drain(%struct.callout* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %46, %64, %59
  ret void
}

declare dso_local i32 @panic(i8*, %struct.tcpcb*, i32) #1

declare dso_local i64 @callout_async_drain(%struct.callout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
