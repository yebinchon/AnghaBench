; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_statechange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_statechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@bbr_state_is_pkt_epoch = common dso_local global i64 0, align 8
@BBR_RTT_PKTRTT = common dso_local global i32 0, align 4
@BBR_RTT_PROP = common dso_local global i32 0, align 4
@BBR_LOG_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32)* @bbr_log_type_statechange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_statechange(%struct.tcp_bbr* %0, i32 %1, i32 %2) #0 {
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
  br i1 %14, label %15, label %100

15:                                               ; preds = %3
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %16, %struct.TYPE_9__* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @bbr_state_is_pkt_epoch, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %15
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %39 = load i32, i32* @BBR_RTT_PKTRTT, align 4
  %40 = call i8* @bbr_get_rtt(%struct.tcp_bbr* %38, i32 %39)
  %41 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  br label %49

43:                                               ; preds = %15
  %44 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %45 = load i32, i32* @BBR_RTT_PROP, align 4
  %46 = call i8* @bbr_get_rtt(%struct.tcp_bbr* %44, i32 %45)
  %47 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 1000
  %67 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %76 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %91 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* @BBR_LOG_STATE, align 4
  %97 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %98 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %97, i32 0, i32 0
  %99 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %83, i32* null, i32* %89, i32* %95, i32 %96, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, i32* %98)
  br label %100

100:                                              ; preds = %49, %3
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
