; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_ack_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_ack_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.tcpopt = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64, i8*, i8*, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@M_TSTMP = common dso_local global i32 0, align 4
@M_TSTMP_LRO = common dso_local global i32 0, align 4
@TCP_LOG_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.tcphdr*, %struct.tcpopt*, i32, i32, i32, i32, %struct.mbuf*)* @bbr_log_ack_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_ack_event(%struct.tcp_bbr* %0, %struct.tcphdr* %1, %struct.tcpopt* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.mbuf* %7) #0 {
  %9 = alloca %struct.tcp_bbr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.tcpopt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %union.tcp_log_stackspecific, align 8
  %18 = alloca %struct.timeval, align 4
  %19 = alloca %struct.timespec, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %9, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %10, align 8
  store %struct.tcpopt* %2, %struct.tcpopt** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.mbuf* %7, %struct.mbuf** %16, align 8
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %21 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %149

27:                                               ; preds = %8
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %29 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %28, %struct.TYPE_11__* %29, i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %36 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %42 = icmp ne %struct.mbuf* %41, null
  br i1 %42, label %43, label %102

43:                                               ; preds = %27
  %44 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @M_TSTMP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %57 = call i32 @mbuf_tstmp2timespec(%struct.mbuf* %56, %struct.timespec* %19)
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 1000
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = call i8* @tcp_tv_to_usectick(%struct.timeval* %18)
  %66 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  br label %71

68:                                               ; preds = %43
  %69 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  store i8* null, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %55
  %72 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @M_TSTMP_LRO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 1000000000
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = srem i32 %88, 1000000000
  %90 = sdiv i32 %89, 1000
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = call i8* @tcp_tv_to_usectick(%struct.timeval* %18)
  %93 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  br label %98

95:                                               ; preds = %71
  %96 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %78
  %99 = call i64 @tcp_get_usecs(%struct.timeval* %18)
  %100 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %111

102:                                              ; preds = %27
  %103 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  store i8* null, i8** %106, align 8
  %107 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %102, %98
  %112 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %113 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %119 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %124 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_11__*
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %129 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %132 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %133 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %139 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* @TCP_LOG_IN, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %147 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %146, i32 0, i32 0
  %148 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_12__* %130, %struct.tcphdr* %131, i32* %137, i32* %143, i32 %144, i32 0, i32 %145, %union.tcp_log_stackspecific* %17, i32 1, i32* %147)
  br label %149

149:                                              ; preds = %111, %8
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mbuf_tstmp2timespec(%struct.mbuf*, %struct.timespec*) #1

declare dso_local i8* @tcp_tv_to_usectick(%struct.timeval*) #1

declare dso_local i64 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_12__*, %struct.tcphdr*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
