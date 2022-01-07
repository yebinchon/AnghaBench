; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_retran_reason.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_retran_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.rack_sendmap = type { i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_SETTINGS_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.rack_sendmap*, i8*, i8*, i32)* @rack_log_retran_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_retran_reason(%struct.tcp_rack* %0, %struct.rack_sendmap* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca %struct.rack_sendmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 8
  %12 = alloca %struct.timeval, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %6, align 8
  store %struct.rack_sendmap* %1, %struct.rack_sendmap** %7, align 8
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
  br i1 %19, label %20, label %96

20:                                               ; preds = %5
  %21 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %22 = call i32 @memset(%struct.TYPE_10__* %21, i32 0, i32 56)
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 10
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %30 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %35 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %40 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %45 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %60 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  %67 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %70 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %73 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ctf_flight_size(%struct.TYPE_11__* %71, i32 %75)
  %77 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %80 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %83 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %89 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* @BBR_LOG_SETTINGS_CHG, align 4
  %95 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %81, i32* null, i32* %87, i32* %93, i32 %94, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %96

96:                                               ; preds = %20, %5
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
