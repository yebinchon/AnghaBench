; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_rtt_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_rtt_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64 }
%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_BBRRTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*, i32, i8*, i8*)* @rack_log_rtt_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_rtt_upd(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_rack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.tcp_log_stackspecific, align 8
  %12 = alloca %struct.timeval, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %112

18:                                               ; preds = %5
  %19 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %20 = call i32 @memset(%struct.TYPE_10__* %19, i32 0, i32 64)
  %21 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %22 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 12
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %29 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %59 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %73 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %79 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  %85 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %88 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %91 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ctf_flight_size(i32 %89, i32 %93)
  %95 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %98 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %99 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %105 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* @BBR_LOG_BBRRTT, align 4
  %111 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %97, i32* null, i32* %103, i32* %109, i32 %110, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %112

112:                                              ; preds = %18, %5
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(i32, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
