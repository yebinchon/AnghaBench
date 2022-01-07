; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.lro_ctrl = type { i32, i32 }
%struct.lro_entry = type { i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.tcp_log_stackspecific = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_LOG_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, %struct.mbuf*, i32, i32, i8*, i8*, i32)* @tcp_lro_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_log(%struct.tcpcb* %0, %struct.lro_ctrl* %1, %struct.lro_entry* %2, %struct.mbuf* %3, i32 %4, i32 %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca %struct.lro_ctrl*, align 8
  %12 = alloca %struct.lro_entry*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.tcp_log_stackspecific, align 8
  %20 = alloca %struct.timeval, align 4
  %21 = alloca i8*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %10, align 8
  store %struct.lro_ctrl* %1, %struct.lro_ctrl** %11, align 8
  store %struct.lro_entry* %2, %struct.lro_entry** %12, align 8
  store %struct.mbuf* %3, %struct.mbuf** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %159

27:                                               ; preds = %9
  %28 = call i8* @tcp_get_usecs(%struct.timeval* %20)
  store i8* %28, i8** %21, align 8
  %29 = call i32 @memset(%union.tcp_log_stackspecific* %19, i32 0, i32 128)
  %30 = load i32, i32* %14, align 4
  %31 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %37 = icmp ne %struct.mbuf* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 20
  store i64 %42, i64* %44, align 8
  br label %48

45:                                               ; preds = %27
  %46 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 20
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %50 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 19
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %55 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 18
  store i32 %56, i32* %58, align 4
  %59 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %60 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 17
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %68 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %67, i32 0, i32 3
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 16
  store i32 %71, i32* %73, align 4
  %74 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %75 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 15
  store i32 %79, i32* %81, align 8
  %82 = load %struct.lro_ctrl*, %struct.lro_ctrl** %11, align 8
  %83 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 14
  store i32 %84, i32* %86, align 4
  %87 = load %struct.lro_ctrl*, %struct.lro_ctrl** %11, align 8
  %88 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 13
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 11
  store i8* %95, i8** %97, align 8
  %98 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %99 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %107 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %18, align 4
  %112 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %115 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %120 = ptrtoint %struct.mbuf* %119 to i64
  %121 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %124 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %123, i32 0, i32 3
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = ptrtoint %struct.TYPE_9__* %125 to i64
  %127 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %130 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %135 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.lro_entry*, %struct.lro_entry** %12, align 8
  %140 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = bitcast %union.tcp_log_stackspecific* %19 to %struct.TYPE_10__*
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %145 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* @TCP_LOG_LRO, align 4
  %158 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %144, i32* null, i32* %150, i32* %156, i32 %157, i32 0, i32 0, %union.tcp_log_stackspecific* %19, i32 0, %struct.timeval* %20)
  br label %159

159:                                              ; preds = %48, %9
  ret void
}

declare dso_local i8* @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @memset(%union.tcp_log_stackspecific*, i32, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
