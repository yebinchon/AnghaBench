; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_progress_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_progress_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.tcpcb = type { i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.tcpcb*, i32, i32, i32)* @bbr_log_progress_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_progress_event(%struct.tcp_bbr* %0, %struct.tcpcb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %6, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @bbr_verbose_logging, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %5
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %14
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %23, %struct.TYPE_9__* %24, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* @BBR_LOG_PROGRESS, align 4
  %65 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %65, i32 0, i32 0
  %67 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %51, i32* null, i32* %57, i32* %63, i32 %64, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, i32* %66)
  br label %68

68:                                               ; preds = %22, %14, %5
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
