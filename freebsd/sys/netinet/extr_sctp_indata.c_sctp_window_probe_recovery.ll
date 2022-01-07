; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_window_probe_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_window_probe_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)* }
%struct.TYPE_10__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_tmit_chunk = type { i64, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SCTP_DATAGRAM_ACKED = common dso_local global i64 0, align 8
@SCTP_FLIGHT_LOG_DWN_WP_FWD = common dso_local global i32 0, align 4
@SCTP_DATAGRAM_RESEND = common dso_local global i64 0, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOG_DOWN_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_tmit_chunk*)* @sctp_window_probe_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_window_probe_recovery(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_tmit_chunk* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_tmit_chunk*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_tmit_chunk* %2, %struct.sctp_tmit_chunk** %6, align 8
  %7 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %8 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %10 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCTP_DATAGRAM_ACKED, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @SCTP_FLIGHT_LOG_DWN_WP_FWD, align 4
  %21 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 0, %31 ]
  %34 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %38 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = ptrtoint %struct.TYPE_10__* %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %43 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sctp_misc_ints(i32 %20, i32 %33, i32 %36, i32 %41, i32 %46)
  br label %105

48:                                               ; preds = %14
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %50 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)*, i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)*, i32 (%struct.TYPE_10__*, %struct.sctp_tmit_chunk*)** %59, align 8
  %61 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %62 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %65 = call i32 %60(%struct.TYPE_10__* %63, %struct.sctp_tmit_chunk* %64)
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %68 = call i32 @sctp_flight_size_decrease(%struct.sctp_tmit_chunk* %67)
  %69 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %70 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %71 = call i32 @sctp_total_flight_decrease(%struct.sctp_tcb* %69, %struct.sctp_tmit_chunk* %70)
  %72 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %73 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %74 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sctp_ucount_incr(i32 %77)
  %79 = load i32, i32* @sctp_logging_level, align 4
  %80 = call i32 @SCTP_BASE_SYSCTL(i32 %79)
  %81 = load i32, i32* @SCTP_FLIGHT_LOGGING_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %66
  %85 = load i32, i32* @SCTP_FLIGHT_LOG_DOWN_WP, align 4
  %86 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %87 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %92 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %95 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = ptrtoint %struct.TYPE_10__* %96 to i64
  %98 = trunc i64 %97 to i32
  %99 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %100 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sctp_misc_ints(i32 %85, i32 %90, i32 %93, i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %32, %84, %66
  ret void
}

declare dso_local i32 @sctp_misc_ints(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_flight_size_decrease(%struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_total_flight_decrease(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_ucount_incr(i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
