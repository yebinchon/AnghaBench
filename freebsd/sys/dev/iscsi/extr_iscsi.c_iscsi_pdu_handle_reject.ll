; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_reject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_reject = type { i32 }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"received Reject PDU, reason 0x%x; protocol error?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_reject(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_reject*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %5 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %6 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %5)
  store %struct.iscsi_session* %6, %struct.iscsi_session** %4, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_bhs_reject*
  store %struct.iscsi_bhs_reject* %10, %struct.iscsi_bhs_reject** %3, align 8
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %12 = load %struct.iscsi_bhs_reject*, %struct.iscsi_bhs_reject** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_bhs_reject, %struct.iscsi_bhs_reject* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %17 = call i32 @icl_pdu_free(%struct.icl_pdu* %16)
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i32) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
