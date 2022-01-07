; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_send_postponed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_send_postponed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32 }
%struct.icl_pdu = type { i32 }

@ip_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*)* @iscsi_session_send_postponed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_session_send_postponed(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %5 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %6 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %5)
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %7, i32 0, i32 1
  %9 = call i64 @STAILQ_EMPTY(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %24, %12
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 1
  %16 = call %struct.icl_pdu* @STAILQ_FIRST(i32* %15)
  store %struct.icl_pdu* %16, %struct.icl_pdu** %3, align 8
  %17 = icmp ne %struct.icl_pdu* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %20 = call i32 @iscsi_pdu_prepare(%struct.icl_pdu* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %26 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %25, i32 0, i32 1
  %27 = load i32, i32* @ip_next, align 4
  %28 = call i32 @STAILQ_REMOVE_HEAD(i32* %26, i32 %27)
  %29 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %30 = call i32 @icl_pdu_queue(%struct.icl_pdu* %29)
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xpt_release_simq(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %31, %23, %11
  ret void
}

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.icl_pdu* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @iscsi_pdu_prepare(%struct.icl_pdu*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @icl_pdu_queue(%struct.icl_pdu*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
