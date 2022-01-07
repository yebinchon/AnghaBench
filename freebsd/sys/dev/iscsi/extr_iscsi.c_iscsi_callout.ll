; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_nop_out = type { i32, i32, i32 }
%struct.iscsi_session = type { i64, i64, i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@hz = common dso_local global i32 0, align 4
@iscsid_timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"timed out waiting for iscsid(8) for %d seconds; reconnecting\00", align 1
@login_timeout = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"login timed out after %d seconds; reconnecting\00", align 1
@ping_timeout = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"no ping reply (NOP-In) after %d seconds; reconnecting\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to allocate PDU\00", align 1
@ISCSI_BHS_OPCODE_NOP_OUT = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iscsi_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_nop_out*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.iscsi_session*
  store %struct.iscsi_session* %8, %struct.iscsi_session** %5, align 8
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %10 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %9)
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %17 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %16)
  br label %143

18:                                               ; preds = %1
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 6
  %21 = load i32, i32* @hz, align 4
  %22 = mul nsw i32 1, %21
  %23 = call i32 @callout_schedule(i32* %20, i32 %22)
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %127

30:                                               ; preds = %18
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load i64, i64* @iscsid_timeout, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @iscsid_timeout, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %52)
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %42, %39
  br label %127

55:                                               ; preds = %30
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i64, i64* @login_timeout, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @login_timeout, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %71 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %63, %60
  br label %127

76:                                               ; preds = %55
  %77 = load i64, i64* @ping_timeout, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %127

82:                                               ; preds = %76
  %83 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %84 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ping_timeout, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %90 = load i64, i64* @ping_timeout, align 8
  %91 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  store i32 1, i32* %6, align 4
  br label %127

92:                                               ; preds = %82
  %93 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %94 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %93)
  %95 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %96 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %143

100:                                              ; preds = %92
  %101 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %102 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @M_NOWAIT, align 4
  %105 = call %struct.icl_pdu* @icl_pdu_new(i32 %103, i32 %104)
  store %struct.icl_pdu* %105, %struct.icl_pdu** %3, align 8
  %106 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %107 = icmp eq %struct.icl_pdu* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %110 = call i32 (%struct.iscsi_session*, i8*, ...) @ISCSI_SESSION_WARN(%struct.iscsi_session* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %143

111:                                              ; preds = %100
  %112 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %113 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.iscsi_bhs_nop_out*
  store %struct.iscsi_bhs_nop_out* %115, %struct.iscsi_bhs_nop_out** %4, align 8
  %116 = load i32, i32* @ISCSI_BHS_OPCODE_NOP_OUT, align 4
  %117 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %120 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %122 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %121, i32 0, i32 1
  store i32 128, i32* %122, align 4
  %123 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %124 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %123, i32 0, i32 2
  store i32 -1, i32* %124, align 4
  %125 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %126 = call i32 @iscsi_pdu_queue(%struct.icl_pdu* %125)
  br label %143

127:                                              ; preds = %88, %79, %75, %54, %29
  %128 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %129 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %134 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %133)
  br label %143

135:                                              ; preds = %127
  %136 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %137 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %142 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %141)
  br label %143

143:                                              ; preds = %15, %99, %108, %111, %132, %140, %135
  ret void
}

declare dso_local i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*, ...) #1

declare dso_local %struct.icl_pdu* @icl_pdu_new(i32, i32) #1

declare dso_local i32 @iscsi_pdu_queue(%struct.icl_pdu*) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
