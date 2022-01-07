; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_abort_chunk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_tcb = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.sctp_error_cause = type { i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sctp_handle_abort: handling ABORT\0A\00", align 1
@SCTP_CAUSE_NAT_COLLIDING_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Received Colliding state abort flags:%x\0A\00", align 1
@SCTP_CAUSE_NAT_MISSING_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Received missing state abort flags:%x\0A\00", align 1
@SCTP_TIMER_TYPE_RECV = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INPUT = common dso_local global i64 0, align 8
@SCTP_LOC_7 = common dso_local global i64 0, align 8
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@sctps_aborted = common dso_local global i32 0, align 4
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_STATE_WAS_ABORTED = common dso_local global i32 0, align 4
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_LOC_8 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"sctp_handle_abort: finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_abort_chunk*, %struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_handle_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_abort(%struct.sctp_abort_chunk* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_abort_chunk*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_error_cause*, align 8
  store %struct.sctp_abort_chunk* %0, %struct.sctp_abort_chunk** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  %11 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %12 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %14 = icmp eq %struct.sctp_tcb* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

16:                                               ; preds = %3
  %17 = load %struct.sctp_abort_chunk*, %struct.sctp_abort_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_abort_chunk, %struct.sctp_abort_chunk* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 8
  br i1 %24, label %25, label %67

25:                                               ; preds = %16
  %26 = load %struct.sctp_abort_chunk*, %struct.sctp_abort_chunk** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_abort_chunk, %struct.sctp_abort_chunk* %26, i64 1
  %28 = bitcast %struct.sctp_abort_chunk* %27 to %struct.sctp_error_cause*
  store %struct.sctp_error_cause* %28, %struct.sctp_error_cause** %10, align 8
  %29 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %30 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SCTP_CAUSE_NAT_COLLIDING_STATE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %25
  %37 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %38 = load %struct.sctp_abort_chunk*, %struct.sctp_abort_chunk** %5, align 8
  %39 = getelementptr inbounds %struct.sctp_abort_chunk, %struct.sctp_abort_chunk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %44 = call i64 @sctp_handle_nat_colliding_state(%struct.sctp_tcb* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %113

47:                                               ; preds = %36
  br label %66

48:                                               ; preds = %25
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SCTP_CAUSE_NAT_MISSING_STATE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %54 = load %struct.sctp_abort_chunk*, %struct.sctp_abort_chunk** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_abort_chunk, %struct.sctp_abort_chunk* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %60 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %61 = call i64 @sctp_handle_nat_missing_state(%struct.sctp_tcb* %59, %struct.sctp_nets* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %113

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %47
  br label %68

67:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* @SCTP_TIMER_TYPE_RECV, align 4
  %70 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %71 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %74 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %75 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %76 = load i64, i64* @SCTP_LOC_7, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @sctp_timer_stop(i32 %69, i32 %72, %struct.sctp_tcb* %73, %struct.sctp_nets* %74, i64 %77)
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.sctp_abort_chunk*, %struct.sctp_abort_chunk** %5, align 8
  %82 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %83 = call i32 @sctp_abort_notification(%struct.sctp_tcb* %79, i32 1, i32 %80, %struct.sctp_abort_chunk* %81, i32 %82)
  %84 = load i32, i32* @sctps_aborted, align 4
  %85 = call i32 @SCTP_STAT_INCR_COUNTER32(i32 %84)
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %87 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %86)
  %88 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %68
  %91 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %92 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %91)
  %93 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %68
  %96 = load i32, i32* @sctps_currestab, align 4
  %97 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %100 = load i32, i32* @SCTP_STATE_WAS_ABORTED, align 4
  %101 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb* %99, i32 %100)
  %102 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %103 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %106 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %107 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %108 = load i64, i64* @SCTP_LOC_8, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @sctp_free_assoc(i32 %104, %struct.sctp_tcb* %105, i32 %106, i64 %109)
  %111 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %112 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %98, %63, %46, %15
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @sctp_handle_nat_colliding_state(%struct.sctp_tcb*) #1

declare dso_local i64 @sctp_handle_nat_missing_state(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, %struct.sctp_nets*, i64) #1

declare dso_local i32 @sctp_abort_notification(%struct.sctp_tcb*, i32, i32, %struct.sctp_abort_chunk*, i32) #1

declare dso_local i32 @SCTP_STAT_INCR_COUNTER32(i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_free_assoc(i32, %struct.sctp_tcb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
