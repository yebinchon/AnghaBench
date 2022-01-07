; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.inpcb* }
%struct.TYPE_4__ = type { i32 (%struct.tcpcb*, i32, i32)* }
%struct.TYPE_3__ = type { i32, %struct.callout, %struct.callout, %struct.callout, %struct.callout, %struct.callout }
%struct.callout = type { i32 }
%struct.inpcb = type { i32 }

@TT_STOPPED = common dso_local global i32 0, align 4
@tcp_timer_delack = common dso_local global i32* null, align 8
@tcp_timer_rexmt = common dso_local global i32* null, align 8
@tcp_timer_persist = common dso_local global i32* null, align 8
@tcp_timer_keep = common dso_local global i32* null, align 8
@tcp_timer_2msl = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"tp %p bad timer_type %#x\00", align 1
@TF_TOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_timer_activate(%struct.tcpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.callout*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 3
  %13 = load %struct.inpcb*, %struct.inpcb** %12, align 8
  store %struct.inpcb* %13, %struct.inpcb** %9, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %15 = call i32 @inp_to_cpuid(%struct.inpcb* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TT_STOPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %91

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %57 [
    i32 131, label %27
    i32 128, label %33
    i32 129, label %39
    i32 130, label %45
    i32 132, label %51
  ]

27:                                               ; preds = %25
  %28 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store %struct.callout* %31, %struct.callout** %7, align 8
  %32 = load i32*, i32** @tcp_timer_delack, align 8
  store i32* %32, i32** %8, align 8
  br label %78

33:                                               ; preds = %25
  %34 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store %struct.callout* %37, %struct.callout** %7, align 8
  %38 = load i32*, i32** @tcp_timer_rexmt, align 8
  store i32* %38, i32** %8, align 8
  br label %78

39:                                               ; preds = %25
  %40 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store %struct.callout* %43, %struct.callout** %7, align 8
  %44 = load i32*, i32** @tcp_timer_persist, align 8
  store i32* %44, i32** %8, align 8
  br label %78

45:                                               ; preds = %25
  %46 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store %struct.callout* %49, %struct.callout** %7, align 8
  %50 = load i32*, i32** @tcp_timer_keep, align 8
  store i32* %50, i32** %8, align 8
  br label %78

51:                                               ; preds = %25
  %52 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store %struct.callout* %55, %struct.callout** %7, align 8
  %56 = load i32*, i32** @tcp_timer_2msl, align 8
  store i32* %56, i32** %8, align 8
  br label %78

57:                                               ; preds = %25
  %58 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.tcpcb*, i32, i32)*, i32 (%struct.tcpcb*, i32, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.tcpcb*, i32, i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.tcpcb*, i32, i32)*, i32 (%struct.tcpcb*, i32, i32)** %68, align 8
  %70 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 %69(%struct.tcpcb* %70, i32 %71, i32 %72)
  br label %91

74:                                               ; preds = %57
  %75 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.tcpcb* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %51, %45, %39, %33, %27
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.callout*, %struct.callout** %7, align 8
  %83 = call i32 @callout_stop(%struct.callout* %82)
  br label %91

84:                                               ; preds = %78
  %85 = load %struct.callout*, %struct.callout** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @callout_reset_on(%struct.callout* %85, i32 %86, i32* %87, %struct.tcpcb* %88, i32 %89)
  br label %91

91:                                               ; preds = %24, %64, %84, %81
  ret void
}

declare dso_local i32 @inp_to_cpuid(%struct.inpcb*) #1

declare dso_local i32 @panic(i8*, %struct.tcpcb*, i32) #1

declare dso_local i32 @callout_stop(%struct.callout*) #1

declare dso_local i32 @callout_reset_on(%struct.callout*, i32, i32*, %struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
