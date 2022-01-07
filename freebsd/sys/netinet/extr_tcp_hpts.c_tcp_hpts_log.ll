; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcpcb = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timeval = type { i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BBR_LOG_HPTSDIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_hpts_entry*, %struct.tcpcb*, %struct.timeval*, i32, i32)* @tcp_hpts_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_hpts_log(%struct.tcp_hpts_entry* %0, %struct.tcpcb* %1, %struct.timeval* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_hpts_entry*, align 8
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_hpts_entry* %0, %struct.tcp_hpts_entry** %6, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %7, align 8
  store %struct.timeval* %2, %struct.timeval** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %13 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 64)
  %14 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %15 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 15
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %20 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 14
  store i32 %21, i32* %23, align 4
  %24 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %33 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %48 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.timeval*, %struct.timeval** %8, align 8
  %58 = call i32 @tcp_tv_to_usectick(%struct.timeval* %57)
  %59 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %62 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %67 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %72 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %77 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %6, align 8
  %82 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %87 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* @BBR_LOG_HPTSDIAG, align 4
  %100 = load %struct.timeval*, %struct.timeval** %8, align 8
  %101 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %86, i32* null, i32* %92, i32* %98, i32 %99, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, %struct.timeval* %100)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @tcp_tv_to_usectick(%struct.timeval*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
