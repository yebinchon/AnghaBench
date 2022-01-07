; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { %struct.callout, %struct.callout, %struct.callout, %struct.callout, %struct.callout }
%struct.callout = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"tp %p bad timer_type %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_timer_active(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.callout*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %33 [
    i32 131, label %8
    i32 128, label %13
    i32 129, label %18
    i32 130, label %23
    i32 132, label %28
  ]

8:                                                ; preds = %2
  %9 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store %struct.callout* %12, %struct.callout** %6, align 8
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store %struct.callout* %17, %struct.callout** %6, align 8
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store %struct.callout* %22, %struct.callout** %6, align 8
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.callout* %27, %struct.callout** %6, align 8
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.callout* %32, %struct.callout** %6, align 8
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.tcpcb*, i32)**
  %39 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.tcpcb*, i32)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.tcpcb*, i32)**
  %47 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %46, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 %47(%struct.tcpcb* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %33
  %52 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.tcpcb* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %28, %23, %18, %13, %8
  %56 = load %struct.callout*, %struct.callout** %6, align 8
  %57 = call i32 @callout_active(%struct.callout* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @panic(i8*, %struct.tcpcb*, i32) #1

declare dso_local i32 @callout_active(%struct.callout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
