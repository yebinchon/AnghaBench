; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_session = type { i64, i64, i32, i32 }
%struct.iscsi_bhs_scsi_command = type { i32, i8*, i8* }

@ISCSI_BHS_OPCODE_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*)* @iscsi_pdu_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_pdu_prepare(%struct.icl_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_bhs_scsi_command*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %3, align 8
  %6 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %7 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %6)
  store %struct.iscsi_session* %7, %struct.iscsi_session** %4, align 8
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %9 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %8)
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iscsi_bhs_scsi_command*
  store %struct.iscsi_bhs_scsi_command* %13, %struct.iscsi_bhs_scsi_command** %5, align 8
  %14 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %1
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ISCSI_SNGT(i64 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %63

36:                                               ; preds = %28, %19
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @htonl(i64 %39)
  %41 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %49, %36
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i8* @htonl(i64 %59)
  %61 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %35
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i64 @ISCSI_SNGT(i64, i32) #1

declare dso_local i8* @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
