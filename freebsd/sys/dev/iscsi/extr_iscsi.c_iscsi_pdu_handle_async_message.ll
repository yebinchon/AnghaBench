; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_async_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_async_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_asynchronous_message = type { i32 }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"target requests logout; removing session\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"target indicates it will drop the connection\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"target indicates it will drop the session\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ignoring AsyncEvent %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_async_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_async_message(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_asynchronous_message*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %5 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %6 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %5)
  store %struct.iscsi_session* %6, %struct.iscsi_session** %4, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_bhs_asynchronous_message*
  store %struct.iscsi_bhs_asynchronous_message* %10, %struct.iscsi_bhs_asynchronous_message** %3, align 8
  %11 = load %struct.iscsi_bhs_asynchronous_message*, %struct.iscsi_bhs_asynchronous_message** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_bhs_asynchronous_message, %struct.iscsi_bhs_asynchronous_message* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %27 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %24
  ]

14:                                               ; preds = %1
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %18 = call i32 @iscsi_session_logout(%struct.iscsi_session* %17)
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = call i32 @iscsi_session_terminate(%struct.iscsi_session* %19)
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %23 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %26 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %29 = load %struct.iscsi_bhs_asynchronous_message*, %struct.iscsi_bhs_asynchronous_message** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_bhs_asynchronous_message, %struct.iscsi_bhs_asynchronous_message* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %24, %21, %14
  %34 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %35 = call i32 @icl_pdu_free(%struct.icl_pdu* %34)
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, ...) #1

declare dso_local i32 @iscsi_session_logout(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_session_terminate(%struct.iscsi_session*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
