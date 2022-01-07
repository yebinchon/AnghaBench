; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_abort_association.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_abort_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32 }
%struct.mbuf = type { i32 }

@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_STATE_WAS_ABORTED = common dso_local global i32 0, align 4
@sctps_aborted = common dso_local global i32 0, align 4
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@sctps_currestab = common dso_local global i32 0, align 4
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i64 0, align 8
@SCTP_LOC_4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_abort_association(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.mbuf* %2, i32 %3, %struct.sockaddr* %4, %struct.sockaddr* %5, %struct.sctphdr* %6, %struct.mbuf* %7, i32 %8, i64 %9, i64 %10, i32 %11) #0 {
  %13 = alloca %struct.sctp_inpcb*, align 8
  %14 = alloca %struct.sctp_tcb*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.sctphdr*, align 8
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %13, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %14, align 8
  store %struct.mbuf* %2, %struct.mbuf** %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %17, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %18, align 8
  store %struct.sctphdr* %6, %struct.sctphdr** %19, align 8
  store %struct.mbuf* %7, %struct.mbuf** %20, align 8
  store i32 %8, i32* %21, align 4
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 %11, i32* %24, align 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %27 = icmp ne %struct.sctp_tcb* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %12
  %29 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %30 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %25, align 8
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %23, align 8
  br label %37

37:                                               ; preds = %28, %12
  %38 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %42 = load %struct.sctphdr*, %struct.sctphdr** %19, align 8
  %43 = load i64, i64* %25, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i64, i64* %22, align 8
  %47 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %13, align 8
  %48 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %23, align 8
  %51 = load i32, i32* %24, align 4
  %52 = call i32 @sctp_send_abort(%struct.mbuf* %38, i32 %39, %struct.sockaddr* %40, %struct.sockaddr* %41, %struct.sctphdr* %42, i64 %43, %struct.mbuf* %44, i32 %45, i64 %46, i32 %49, i64 %50, i32 %51)
  %53 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %54 = icmp ne %struct.sctp_tcb* %53, null
  br i1 %54, label %55, label %84

55:                                               ; preds = %37
  %56 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %57 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %58 = call i32 @sctp_abort_notification(%struct.sctp_tcb* %56, i32 0, i32 0, i32* null, i32 %57)
  %59 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %60 = load i32, i32* @SCTP_STATE_WAS_ABORTED, align 4
  %61 = call i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb* %59, i32 %60)
  %62 = load i32, i32* @sctps_aborted, align 4
  %63 = call i32 @SCTP_STAT_INCR_COUNTER32(i32 %62)
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %65 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %64)
  %66 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %55
  %69 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %70 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %69)
  %71 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %55
  %74 = load i32, i32* @sctps_currestab, align 4
  %75 = call i32 @SCTP_STAT_DECR_GAUGE32(i32 %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %13, align 8
  %78 = load %struct.sctp_tcb*, %struct.sctp_tcb** %14, align 8
  %79 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %80 = load i64, i64* @SCTP_FROM_SCTPUTIL, align 8
  %81 = load i64, i64* @SCTP_LOC_4, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %77, %struct.sctp_tcb* %78, i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %76, %37
  ret void
}

declare dso_local i32 @sctp_send_abort(%struct.mbuf*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i64, %struct.mbuf*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @sctp_abort_notification(%struct.sctp_tcb*, i32, i32, i32*, i32) #1

declare dso_local i32 @SCTP_ADD_SUBSTATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_STAT_INCR_COUNTER32(i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_STAT_DECR_GAUGE32(i32) #1

declare dso_local i32 @sctp_free_assoc(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
