; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_type_hrdwtso.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_log_type_hrdwtso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tcp_rack = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_HDWR_TLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*, i32, i32, i32, i32)* @rack_log_type_hrdwtso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_log_type_hrdwtso(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca %struct.tcp_rack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.tcp_log_stackspecific, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca i8*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %7, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %6
  %22 = call i32 @memset(%union.tcp_log_stackspecific* %13, i32 0, i32 40)
  %23 = call i8* @tcp_get_usecs(%struct.timeval* %14)
  store i8* %23, i8** %15, align 8
  %24 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %25 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %31 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = call i8* @tcp_get_usecs(%struct.timeval* %14)
  %55 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %58 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %61 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ctf_flight_size(i32 %59, i32 %63)
  %65 = bitcast %union.tcp_log_stackspecific* %13 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %68 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* @TCP_HDWR_TLS, align 4
  %81 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %67, i32* null, i32* %73, i32* %79, i32 %80, i32 0, i32 0, %union.tcp_log_stackspecific* %13, i32 0, %struct.timeval* %14)
  br label %82

82:                                               ; preds = %21, %6
  ret void
}

declare dso_local i32 @memset(%union.tcp_log_stackspecific*, i32, i32) #1

declare dso_local i8* @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @ctf_flight_size(i32, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
