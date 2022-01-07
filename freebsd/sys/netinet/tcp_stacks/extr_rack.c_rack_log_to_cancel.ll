; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TIMERCANC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32, i32)* @rack_log_to_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_to_cancel(%struct.tcp_rack* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.tcp_log_stackspecific, align 8
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
  br i1 %15, label %16, label %92

16:                                               ; preds = %3
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %18 = call i32 @memset(%struct.TYPE_10__* %17, i32 0, i32 56)
  %19 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %20 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = call i32 @tcp_get_usecs(%struct.timeval* %8)
  %63 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %69 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ctf_flight_size(%struct.TYPE_11__* %67, i32 %71)
  %73 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_10__*
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %76 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %79 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %85 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* @BBR_LOG_TIMERCANC, align 4
  %91 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %77, i32* null, i32* %83, i32* %89, i32 %90, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, %struct.timeval* %8)
  br label %92

92:                                               ; preds = %16, %3
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
