; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_receive_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_receive_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session = type { i32, %struct.icl_pdu*, i64 }

@.str = private unnamed_addr constant [56 x i8] c"received PDU with unsupported opcode 0x%x; reconnecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_receive_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_receive_callback(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %4 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %5 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %4)
  store %struct.iscsi_session* %5, %struct.iscsi_session** %3, align 8
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %7 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %6)
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %9 = call i32 @iscsi_pdu_update_statsn(%struct.icl_pdu* %8)
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %55 [
    i32 133, label %15
    i32 129, label %20
    i32 128, label %25
    i32 130, label %30
    i32 134, label %35
    i32 132, label %40
    i32 135, label %45
    i32 131, label %50
  ]

15:                                               ; preds = %1
  %16 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %17 = call i32 @iscsi_pdu_handle_nop_in(%struct.icl_pdu* %16)
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %19 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %18)
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %22 = call i32 @iscsi_pdu_handle_scsi_response(%struct.icl_pdu* %21)
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %24 = call i32 @ISCSI_SESSION_LOCK_ASSERT_NOT(%struct.iscsi_session* %23)
  br label %69

25:                                               ; preds = %1
  %26 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %27 = call i32 @iscsi_pdu_handle_task_response(%struct.icl_pdu* %26)
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %29 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %28)
  br label %69

30:                                               ; preds = %1
  %31 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %32 = call i32 @iscsi_pdu_handle_data_in(%struct.icl_pdu* %31)
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %34 = call i32 @ISCSI_SESSION_LOCK_ASSERT_NOT(%struct.iscsi_session* %33)
  br label %69

35:                                               ; preds = %1
  %36 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %37 = call i32 @iscsi_pdu_handle_logout_response(%struct.icl_pdu* %36)
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %38)
  br label %69

40:                                               ; preds = %1
  %41 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %42 = call i32 @iscsi_pdu_handle_r2t(%struct.icl_pdu* %41)
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %44 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %43)
  br label %69

45:                                               ; preds = %1
  %46 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %47 = call i32 @iscsi_pdu_handle_async_message(%struct.icl_pdu* %46)
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %49 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %48)
  br label %69

50:                                               ; preds = %1
  %51 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %52 = call i32 @iscsi_pdu_handle_reject(%struct.icl_pdu* %51)
  %53 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %54 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %53)
  br label %69

55:                                               ; preds = %1
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %57 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %58 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %64 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %63)
  %65 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %66 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %65)
  %67 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %68 = call i32 @icl_pdu_free(%struct.icl_pdu* %67)
  br label %69

69:                                               ; preds = %55, %50, %45, %40, %35, %30, %25, %20, %15
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_pdu_update_statsn(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_nop_in(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_pdu_handle_scsi_response(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT_NOT(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_pdu_handle_task_response(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_data_in(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_logout_response(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_r2t(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_async_message(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_pdu_handle_reject(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i32) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
