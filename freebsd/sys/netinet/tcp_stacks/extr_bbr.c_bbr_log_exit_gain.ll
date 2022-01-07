; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_exit_gain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_exit_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i64, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_EXIT_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32)* @bbr_log_exit_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_exit_gain(%struct.tcp_bbr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %9 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %3
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %16, %struct.TYPE_9__* %17, i32 %18)
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %76 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* @BBR_LOG_EXIT_GAIN, align 4
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 0
  %84 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %68, i32* null, i32* %74, i32* %80, i32 %81, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, i32* %83)
  br label %85

85:                                               ; preds = %15, %3
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
