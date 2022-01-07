; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_time_epoch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_time_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TIME_EPOCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32, i32)* @bbr_log_time_epoch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_time_epoch(%struct.tcp_bbr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @bbr_verbose_logging, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %4
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %12
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %22 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %21, %struct.TYPE_10__* %22, i32 %23)
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %55 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* @BBR_LOG_TIME_EPOCH, align 4
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 0
  %72 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_11__* %56, i32* null, i32* %62, %struct.TYPE_12__* %68, i32 %69, i32 0, i32 0, %union.tcp_log_stackspecific* %9, i32 0, i32* %71)
  br label %73

73:                                               ; preds = %20, %12, %4
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_11__*, i32*, i32*, %struct.TYPE_12__*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
