; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_rtt_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_rtt_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_LOG_RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32)* @rack_log_rtt_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_rtt_sample(%struct.tcp_rack* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_rack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tcp_log_stackspecific, align 4
  %6 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %2
  %15 = call i32 @memset(%union.tcp_log_stackspecific* %5, i32 0, i32 32)
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = call i32 @tcp_get_usecs(%struct.timeval* %6)
  %50 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %56 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ctf_flight_size(%struct.TYPE_11__* %54, i32 %58)
  %60 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %72 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* @TCP_LOG_RTT, align 4
  %78 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %64, i32* null, i32* %70, i32* %76, i32 %77, i32 0, i32 0, %union.tcp_log_stackspecific* %5, i32 0, %struct.timeval* %6)
  br label %79

79:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @memset(%union.tcp_log_stackspecific*, i32, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_11__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
