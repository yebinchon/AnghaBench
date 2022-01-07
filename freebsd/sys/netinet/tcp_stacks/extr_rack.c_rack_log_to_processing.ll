; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_to_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TO_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32, i8*, i8*)* @rack_log_to_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_to_processing(%struct.tcp_rack* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.tcp_rack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.tcp_log_stackspecific, align 8
  %10 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %4
  %19 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %20 = call i32 @memset(%struct.TYPE_10__* %19, i32 0, i32 40)
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = call i32 @tcp_get_usecs(%struct.timeval* %10)
  %49 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ctf_flight_size(%struct.TYPE_11__* %53, i32 %57)
  %59 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %62 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %71 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* @BBR_LOG_TO_PROCESS, align 4
  %77 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %63, i32* null, i32* %69, i32* %75, i32 %76, i32 0, i32 0, %union.tcp_log_stackspecific* %9, i32 0, %struct.timeval* %10)
  br label %78

78:                                               ; preds = %18, %4
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
