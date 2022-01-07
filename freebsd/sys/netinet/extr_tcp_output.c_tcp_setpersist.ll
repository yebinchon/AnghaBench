; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_output.c_tcp_setpersist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_output.c_tcp_setpersist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i64, i32 }

@TF_PREVVALID = common dso_local global i32 0, align 4
@TT_REXMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"tcp_setpersist: retransmit pending\00", align 1
@tcp_backoff = common dso_local global i32* null, align 8
@tcp_persmin = common dso_local global i32 0, align 4
@tcp_persmax = common dso_local global i32 0, align 4
@TT_PERSIST = common dso_local global i32 0, align 4
@TCP_MAXRXTSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_setpersist(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = ashr i32 %7, 2
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @TF_PREVVALID, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %21 = load i32, i32* @TT_REXMT, align 4
  %22 = call i64 @tcp_timer_active(%struct.tcpcb* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @tcp_backoff, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %28, %34
  %36 = load i32, i32* @tcp_persmin, align 4
  %37 = load i32, i32* @tcp_persmax, align 4
  %38 = call i32 @TCPT_RANGESET(i32 %27, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = load i32, i32* @TT_PERSIST, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @tcp_timer_activate(%struct.tcpcb* %39, i32 %40, i32 %41)
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TCP_MAXRXTSHIFT, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %26
  %49 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %26
  ret void
}

declare dso_local i64 @tcp_timer_active(%struct.tcpcb*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
