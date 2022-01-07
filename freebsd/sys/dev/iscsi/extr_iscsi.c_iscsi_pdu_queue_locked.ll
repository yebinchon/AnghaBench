; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_queue_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_queue_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i32 }
%struct.iscsi_session = type { i32, i32 }

@ip_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_queue_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_queue_locked(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %5 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %6 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %5)
  store %struct.iscsi_session* %6, %struct.iscsi_session** %3, align 8
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %8 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %7)
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %10 = call i32 @iscsi_session_send_postponed(%struct.iscsi_session* %9)
  %11 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %12 = call i32 @iscsi_pdu_prepare(%struct.icl_pdu* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 0
  %18 = call i64 @STAILQ_EMPTY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xpt_freeze_simq(i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 0
  %28 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %29 = load i32, i32* @ip_next, align 4
  %30 = call i32 @STAILQ_INSERT_TAIL(i32* %27, %struct.icl_pdu* %28, i32 %29)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %33 = call i32 @icl_pdu_queue(%struct.icl_pdu* %32)
  br label %34

34:                                               ; preds = %31, %25
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_session_send_postponed(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_pdu_prepare(%struct.icl_pdu*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.icl_pdu*, i32) #1

declare dso_local i32 @icl_pdu_queue(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
