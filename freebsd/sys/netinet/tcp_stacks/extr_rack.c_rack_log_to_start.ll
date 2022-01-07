; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@BBR_LOG_TIMERSTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32, i32, i32, i32)* @rack_log_to_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_to_start(%struct.tcp_rack* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 4
  %12 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %5
  %21 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %22 = call i32 @memset(%struct.TYPE_10__* %21, i32 0, i32 52)
  %23 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = call i32 @TICKS_2_MSEC(i32 %29)
  %31 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %60 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %68 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %74 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %81 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  %88 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %91 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %94 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ctf_flight_size(%struct.TYPE_11__* %92, i32 %96)
  %98 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %101 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %104 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %110 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* @BBR_LOG_TIMERSTAR, align 4
  %116 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %102, i32* null, i32* %108, i32* %114, i32 %115, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %117

117:                                              ; preds = %20, %5
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @TICKS_2_MSEC(i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_11__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
