; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_progress_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_progress_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tcpcb = type { i64, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@rack_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.tcpcb*, i32, i32, i32)* @rack_log_progress_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_progress_event(%struct.tcp_rack* %0, %struct.tcpcb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 4
  %12 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %6, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* @rack_verbose_logging, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %85

15:                                               ; preds = %5
  %16 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %15
  %22 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %23 = call i32 @memset(%struct.TYPE_8__* %22, i32 0, i32 36)
  %24 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  %58 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %61 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %64 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ctf_flight_size(i32 %62, i32 %66)
  %68 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %71 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %72 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %78 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* @BBR_LOG_PROGRESS, align 4
  %84 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %70, i32* null, i32* %76, i32* %82, i32 %83, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %85

85:                                               ; preds = %21, %15, %5
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(i32, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
