; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_tstmp_validation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_tstmp_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TSTMP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32)* @bbr_log_tstmp_validation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_tstmp_validation(%struct.tcp_bbr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.tcp_log_stackspecific, align 4
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
  br i1 %14, label %15, label %72

15:                                               ; preds = %3
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %16, %struct.TYPE_9__* %17, i32 %21)
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 32
  %31 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 32
  %38 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* @BBR_LOG_TSTMP_VAL, align 4
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 0
  %71 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %55, i32* null, i32* %61, i32* %67, i32 %68, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, i32* %70)
  br label %72

72:                                               ; preds = %15, %3
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
