; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_update_statsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_update_statsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_data_in = type { i64, i32, i32, i32, i32 }
%struct.iscsi_session = type { i64, i64, i64, i64, i32, i32 }

@ISCSI_BHS_OPCODE_SCSI_DATA_IN = common dso_local global i64 0, align 8
@BHSDI_FLAGS_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"PDU 0x%x StatSN %u != session ExpStatSN %u (or + 1); reconnecting\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"PDU MaxCmdSN %u + 1 < PDU ExpCmdSN %u; ignoring\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"PDU MaxCmdSN %u < session MaxCmdSN %u; ignoring\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"PDU ExpCmdSN %u < session ExpCmdSN %u; ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_update_statsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_update_statsn(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_data_in*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %9 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %8)
  store %struct.iscsi_session* %9, %struct.iscsi_session** %4, align 8
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %11 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %10)
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %13 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iscsi_bhs_data_in*
  store %struct.iscsi_bhs_data_in* %15, %struct.iscsi_bhs_data_in** %3, align 8
  %16 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISCSI_BHS_OPCODE_SCSI_DATA_IN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BHSDI_FLAGS_S, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %21, %1
  %29 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohl(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %47 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50, i64 %53)
  %55 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %56 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %55)
  br label %57

57:                                               ; preds = %45, %38, %28
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ISCSI_SNGT(i64 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %21
  %70 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %71 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ntohl(i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load %struct.iscsi_bhs_data_in*, %struct.iscsi_bhs_data_in** %3, align 8
  %75 = getelementptr inbounds %struct.iscsi_bhs_data_in, %struct.iscsi_bhs_data_in* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ntohl(i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @ISCSI_SNLT(i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %86)
  br label %150

88:                                               ; preds = %69
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @ISCSI_SNGT(i64 %89, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %98 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %99, i32 0, i32 5
  %101 = call i32 @STAILQ_EMPTY(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %105 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %104, i32 0, i32 4
  %106 = call i32 @cv_signal(i32* %105)
  br label %107

107:                                              ; preds = %103, %95
  br label %123

108:                                              ; preds = %88
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %111 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @ISCSI_SNLT(i64 %109, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %119 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %107
  %124 = load i64, i64* %5, align 8
  %125 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %126 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ISCSI_SNGT(i64 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %133 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %149

134:                                              ; preds = %123
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %137 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @ISCSI_SNLT(i64 %135, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %145 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %143, i64 %146)
  br label %148

148:                                              ; preds = %141, %134
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %83
  %151 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %152 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, i64, i64, i64) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i64 @ISCSI_SNGT(i64, i64) #1

declare dso_local i64 @ISCSI_SNLT(i64, i64) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*, i64, i64) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
