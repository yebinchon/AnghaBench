; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_log_sack_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_log_sack_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sackblk = type { i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_SACK_FILTER_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctf_log_sack_filter(%struct.tcpcb* %0, i32 %1, %struct.sackblk* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sackblk*, align 8
  %7 = alloca %union.tcp_log_stackspecific, align 4
  %8 = alloca %struct.timeval, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sackblk* %2, %struct.sackblk** %6, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %101

14:                                               ; preds = %3
  %15 = call i32 @memset(%union.tcp_log_stackspecific* %7, i32 0, i32 40)
  %16 = call i32 @tcp_get_usecs(%struct.timeval* %8)
  %17 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %26 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 0
  %27 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %32 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %31, i64 0
  %33 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %24, %14
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %42 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %41, i64 1
  %43 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %48 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %47, i64 1
  %49 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %58 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %57, i64 2
  %59 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %64 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %63, i64 2
  %65 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %53
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %74 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %73, i64 3
  %75 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %80 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %79, i64 3
  %81 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %69
  %86 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %87 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* @TCP_SACK_FILTER_RES, align 4
  %100 = call i32 @TCP_LOG_EVENTP(%struct.tcpcb* %86, i32* null, i32* %92, i32* %98, i32 %99, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, %struct.timeval* %8)
  br label %101

101:                                              ; preds = %85, %3
  ret void
}

declare dso_local i32 @memset(%union.tcp_log_stackspecific*, i32, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
