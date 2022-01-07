; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_hrdwtso.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_hrdwtso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.tcp_bbr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_HDWR_TLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_bbr*, i32, i32, i32)* @bbr_log_type_hrdwtso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_hrdwtso(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_bbr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %5
  %20 = call i32 @tcp_get_usecs(%struct.timeval* %12)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %22 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %21, %struct.TYPE_8__* %22, i32 %23)
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  %50 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* @TCP_HDWR_TLS, align 4
  %64 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %50, i32* null, i32* %56, i32* %62, i32 %63, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %12)
  br label %65

65:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
