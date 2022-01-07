; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_doseg_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_doseg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_DOSEG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, i32, i8*, i8*, i32)* @rack_log_doseg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_doseg_done(%struct.tcp_rack* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 8
  %12 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %5
  %21 = call i32 @memset(%union.tcp_log_stackspecific* %11, i32 0, i32 48)
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %44 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  %60 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ctf_flight_size(%struct.TYPE_11__* %64, i32 %68)
  %70 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %73 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %76 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %82 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* @BBR_LOG_DOSEG_DONE, align 4
  %88 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %74, i32* null, i32* %80, i32* %86, i32 %87, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %89

89:                                               ; preds = %20, %5
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
