; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_to_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_to_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TIMERCANC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32, i32)* @bbr_log_to_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_to_cancel(%struct.tcp_bbr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %4
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %19 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %18, %struct.TYPE_9__* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @TICKS_2_USEC(i32 %51)
  %53 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* @BBR_LOG_TIMERCANC, align 4
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %79, i32 0, i32 0
  %81 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %65, i32* null, i32* %71, i32* %77, i32 %78, i32 0, i32 0, %union.tcp_log_stackspecific* %9, i32 0, i32* %80)
  br label %82

82:                                               ; preds = %17, %4
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TICKS_2_USEC(i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
