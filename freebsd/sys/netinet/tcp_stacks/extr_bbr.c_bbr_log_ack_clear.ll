; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_ack_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_ack_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_ACKCLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32)* @bbr_log_ack_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_ack_clear(%struct.tcp_bbr* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @bbr_verbose_logging, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %2
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %8
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %18 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %17, %struct.TYPE_9__* %18, i32 %19)
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %union.tcp_log_stackspecific* %5 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %62 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* @BBR_LOG_ACKCLEAR, align 4
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 0
  %70 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %54, i32* null, i32* %60, i32* %66, i32 %67, i32 0, i32 0, %union.tcp_log_stackspecific* %5, i32 0, i32* %69)
  br label %71

71:                                               ; preds = %16, %8, %2
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
