; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_task_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_task_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_task_management_response = type { i64, i64 }
%struct.iscsi_outstanding = type { i64, i32* }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad itt 0x%x\00", align 1
@BHSTMR_RESPONSE_FUNCTION_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"task response 0x%x\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_task_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_task_response(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_task_management_response*, align 8
  %4 = alloca %struct.iscsi_outstanding*, align 8
  %5 = alloca %struct.iscsi_outstanding*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %7)
  store %struct.iscsi_session* %8, %struct.iscsi_session** %6, align 8
  %9 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %10 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_bhs_task_management_response*
  store %struct.iscsi_bhs_task_management_response* %12, %struct.iscsi_bhs_task_management_response** %3, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %14 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session* %13, i64 %16)
  store %struct.iscsi_outstanding* %17, %struct.iscsi_outstanding** %4, align 8
  %18 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %19 = icmp eq %struct.iscsi_outstanding* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20, %1
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %27 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %32 = call i32 @icl_pdu_free(%struct.icl_pdu* %31)
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %34 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %33)
  br label %72

35:                                               ; preds = %20
  %36 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BHSTMR_RESPONSE_FUNCTION_COMPLETE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %43 = load %struct.iscsi_bhs_task_management_response*, %struct.iscsi_bhs_task_management_response** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_bhs_task_management_response, %struct.iscsi_bhs_task_management_response* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %66

47:                                               ; preds = %35
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %49 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session* %48, i64 %51)
  store %struct.iscsi_outstanding* %52, %struct.iscsi_outstanding** %5, align 8
  %53 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %54 = icmp ne %struct.iscsi_outstanding* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %62 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %63 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %64 = call i32 @iscsi_session_terminate_task(%struct.iscsi_session* %61, %struct.iscsi_outstanding* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55, %47
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %68 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %69 = call i32 @iscsi_outstanding_remove(%struct.iscsi_session* %67, %struct.iscsi_outstanding* %68)
  %70 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %71 = call i32 @icl_pdu_free(%struct.icl_pdu* %70)
  br label %72

72:                                               ; preds = %66, %25
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local %struct.iscsi_outstanding* @iscsi_outstanding_find(%struct.iscsi_session*, i64) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i64) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_session_terminate_task(%struct.iscsi_session*, %struct.iscsi_outstanding*, i32) #1

declare dso_local i32 @iscsi_outstanding_remove(%struct.iscsi_session*, %struct.iscsi_outstanding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
