; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bw_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bw_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, i64, i64 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_BW_RED_EV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32)* @bbr_log_type_bw_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_bw_reduce(%struct.tcp_bbr* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %15 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %14, %struct.TYPE_9__* %15, i32 %19)
  %21 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* @BBR_LOG_BW_RED_EV, align 4
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 0
  %64 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %48, i32* null, i32* %54, i32* %60, i32 %61, i32 0, i32 0, %union.tcp_log_stackspecific* %5, i32 0, i32* %63)
  br label %65

65:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
