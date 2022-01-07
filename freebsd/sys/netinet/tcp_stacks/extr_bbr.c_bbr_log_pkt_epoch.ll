; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_pkt_epoch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_pkt_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i8*, i32, i32, i32, i32, i8*, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_PKT_EPOCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i8*, i8*, i8*)* @bbr_log_pkt_epoch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_pkt_epoch(%struct.tcp_bbr* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %5
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %21 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %20, %struct.TYPE_9__* %21, i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %75 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* @BBR_LOG_PKT_EPOCH, align 4
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 0
  %83 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %67, i32* null, i32* %73, i32* %79, i32 %80, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, i32* %82)
  br label %84

84:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
