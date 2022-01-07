; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.icl_iser_pdu = type { %struct.iser_data_buf*, %struct.ccb_scsiio*, %struct.iser_tx_desc }
%struct.iser_data_buf = type { i32, i32 }
%struct.ccb_scsiio = type { i32, i32 }
%struct.iser_tx_desc = type { i32, i32 }
%struct.iscsi_bhs_scsi_command = type { i32, i32, i32 }

@ISCSI_TX_SCSI_COMMAND = common dso_local global i32 0, align 4
@BHSSC_FLAGS_R = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@BHSSC_FLAGS_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"iser_conn %p itt %u len %u err %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_command(%struct.iser_conn* %0, %struct.icl_iser_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.icl_iser_pdu*, align 8
  %6 = alloca %struct.iser_data_buf*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  %8 = alloca %struct.iscsi_bhs_scsi_command*, align 8
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %4, align 8
  store %struct.icl_iser_pdu* %1, %struct.icl_iser_pdu** %5, align 8
  %12 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %13 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %12, i32 0, i32 2
  store %struct.iser_tx_desc* %13, %struct.iser_tx_desc** %7, align 8
  %14 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %15 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.iscsi_bhs_scsi_command*
  store %struct.iscsi_bhs_scsi_command* %17, %struct.iscsi_bhs_scsi_command** %8, align 8
  %18 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %19 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %18, i32 0, i32 1
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %19, align 8
  store %struct.ccb_scsiio* %20, %struct.ccb_scsiio** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @ISCSI_TX_SCSI_COMMAND, align 4
  %27 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %28 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %30 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %31 = call i32 @iser_create_send_desc(%struct.iser_conn* %29, %struct.iser_tx_desc* %30)
  %32 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BHSSC_FLAGS_R, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %40 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %39, i32 0, i32 0
  %41 = load %struct.iser_data_buf*, %struct.iser_data_buf** %40, align 8
  %42 = load i64, i64* @ISER_DIR_IN, align 8
  %43 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %41, i64 %42
  store %struct.iser_data_buf* %43, %struct.iser_data_buf** %6, align 8
  br label %50

44:                                               ; preds = %2
  %45 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %46 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %45, i32 0, i32 0
  %47 = load %struct.iser_data_buf*, %struct.iser_data_buf** %46, align 8
  %48 = load i64, i64* @ISER_DIR_OUT, align 8
  %49 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i64 %48
  store %struct.iser_data_buf* %49, %struct.iser_data_buf** %6, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %52 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iser_data_buf*, %struct.iser_data_buf** %6, align 8
  %55 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %57 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iser_data_buf*, %struct.iser_data_buf** %6, align 8
  %60 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %62 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %68 = load %struct.iser_data_buf*, %struct.iser_data_buf** %6, align 8
  %69 = call i32 @iser_csio_to_sg(%struct.ccb_scsiio* %67, %struct.iser_data_buf* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %115

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %8, align 8
  %77 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BHSSC_FLAGS_R, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %84 = call i32 @iser_prepare_read_cmd(%struct.icl_iser_pdu* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %115

88:                                               ; preds = %82
  br label %104

89:                                               ; preds = %75
  %90 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %8, align 8
  %91 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BHSSC_FLAGS_W, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %98 = call i32 @iser_prepare_write_cmd(%struct.icl_iser_pdu* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %115

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %89
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %106 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %105, i32 0, i32 0
  %107 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @iser_signal_comp(i32 %108)
  %110 = call i32 @iser_post_send(%struct.TYPE_2__* %106, %struct.iser_tx_desc* %107, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %126

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %101, %87, %73
  %116 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %117 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %8, align 8
  %118 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %8, align 8
  %121 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @ISER_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %116, i32 %119, i32 %122, i32 %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %115, %113
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @iser_create_send_desc(%struct.iser_conn*, %struct.iser_tx_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iser_csio_to_sg(%struct.ccb_scsiio*, %struct.iser_data_buf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_prepare_read_cmd(%struct.icl_iser_pdu*) #1

declare dso_local i32 @iser_prepare_write_cmd(%struct.icl_iser_pdu*) #1

declare dso_local i32 @iser_post_send(%struct.TYPE_2__*, %struct.iser_tx_desc*, i32) #1

declare dso_local i32 @iser_signal_comp(i32) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.iser_conn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
