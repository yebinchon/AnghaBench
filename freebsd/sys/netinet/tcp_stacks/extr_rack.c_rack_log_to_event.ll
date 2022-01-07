; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_RTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32, i32)* @rack_log_to_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_to_event(%struct.tcp_rack* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.tcp_log_stackspecific, align 4
  %8 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %3
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %18 = call i32 @memset(%struct.TYPE_10__* %17, i32 0, i32 36)
  %19 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %20 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = call i32 @tcp_get_usecs(%struct.timeval* %8)
  %57 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %60 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ctf_flight_size(%struct.TYPE_11__* %61, i32 %65)
  %67 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %73 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %79 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* @BBR_LOG_RTO, align 4
  %85 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %71, i32* null, i32* %77, i32* %83, i32 %84, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, %struct.timeval* %8)
  br label %86

86:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_11__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
