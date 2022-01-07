; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_autoclose_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_autoclose_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { %struct.sctp_inpcb*, %struct.sctp_association }
%struct.sctp_association = type { i32, %struct.sctp_nets*, %struct.sctp_nets*, i32, i32, %struct.timeval, %struct.timeval }
%struct.timeval = type { i64 }
%struct.sctp_nets = type { i32 }

@SCTP_PCB_FLAGS_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_AUTOCLOSE_TMR = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWNGUARD = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_AUTOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_autoclose_timer(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca %struct.sctp_inpcb*, align 8
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_nets*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_nets*, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %4, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %6, align 8
  %13 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval* %7)
  %14 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %150

19:                                               ; preds = %3
  %20 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %21 = load i32, i32* @SCTP_PCB_FLAGS_AUTOCLOSE, align 4
  %22 = call i64 @sctp_is_feature_on(%struct.sctp_inpcb* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %150

24:                                               ; preds = %19
  %25 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %25, i32 0, i32 1
  store %struct.sctp_association* %26, %struct.sctp_association** %9, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 6
  store %struct.timeval* %38, %struct.timeval** %8, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 5
  store %struct.timeval* %41, %struct.timeval** %8, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.timeval*, %struct.timeval** %8, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @SEC_TO_TICKS(i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %132

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %55 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %52
  %59 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %60 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %61 = load i32, i32* @SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, align 4
  %62 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %63 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %59, %struct.sctp_tcb* %60, i32 %61, i32 %62)
  %64 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %65 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %64, i32 0, i32 4
  %66 = call i64 @TAILQ_EMPTY(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %58
  %69 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 3
  %71 = call i64 @TAILQ_EMPTY(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %131

73:                                               ; preds = %68
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %75 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %74)
  %76 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %130

78:                                               ; preds = %73
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %80 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %79)
  %81 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %85 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %84)
  %86 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @sctps_currestab, align 4
  %90 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %93 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %94 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %92, i64 %93)
  %95 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %96 = call i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb* %95)
  %97 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %98 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %98, i32 0, i32 2
  %100 = load %struct.sctp_nets*, %struct.sctp_nets** %99, align 8
  %101 = icmp ne %struct.sctp_nets* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %104 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %104, i32 0, i32 2
  %106 = load %struct.sctp_nets*, %struct.sctp_nets** %105, align 8
  store %struct.sctp_nets* %106, %struct.sctp_nets** %11, align 8
  br label %112

107:                                              ; preds = %91
  %108 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %109 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %109, i32 0, i32 1
  %111 = load %struct.sctp_nets*, %struct.sctp_nets** %110, align 8
  store %struct.sctp_nets* %111, %struct.sctp_nets** %11, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %114 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %115 = call i32 @sctp_send_shutdown(%struct.sctp_tcb* %113, %struct.sctp_nets* %114)
  %116 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWN, align 4
  %117 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %118 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %117, i32 0, i32 0
  %119 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %118, align 8
  %120 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %121 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %122 = call i32 @sctp_timer_start(i32 %116, %struct.sctp_inpcb* %119, %struct.sctp_tcb* %120, %struct.sctp_nets* %121)
  %123 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWNGUARD, align 4
  %124 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %125 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %124, i32 0, i32 0
  %126 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %125, align 8
  %127 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %129 = call i32 @sctp_timer_start(i32 %123, %struct.sctp_inpcb* %126, %struct.sctp_tcb* %127, %struct.sctp_nets* %128)
  br label %130

130:                                              ; preds = %112, %73
  br label %131

131:                                              ; preds = %130, %68, %58
  br label %149

132:                                              ; preds = %52, %42
  %133 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %134 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @SCTP_TIMER_TYPE_AUTOCLOSE, align 4
  %142 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %143 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %144 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %145 = call i32 @sctp_timer_start(i32 %141, %struct.sctp_inpcb* %142, %struct.sctp_tcb* %143, %struct.sctp_nets* %144)
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %148 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %132, %131
  br label %150

150:                                              ; preds = %149, %19, %3
  ret void
}

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i64 @sctp_is_feature_on(%struct.sctp_inpcb*, i32) #1

declare dso_local i32 @SEC_TO_TICKS(i64) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i64) #1

declare dso_local i32 @sctp_stop_timers_for_shutdown(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_shutdown(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
