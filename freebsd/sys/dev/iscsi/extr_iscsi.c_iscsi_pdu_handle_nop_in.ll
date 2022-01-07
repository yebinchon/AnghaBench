; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_nop_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_pdu_handle_nop_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i32 }
%struct.iscsi_session = type { i32 }
%struct.iscsi_bhs_nop_out = type { i32, i32, i32, i32 }
%struct.iscsi_bhs_nop_in = type { i32 }

@M_ISCSI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate memory; reconnecting\00", align 1
@ISCSI_BHS_OPCODE_NOP_OUT = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @iscsi_pdu_handle_nop_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_pdu_handle_nop_in(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_bhs_nop_out*, align 8
  %5 = alloca %struct.iscsi_bhs_nop_in*, align 8
  %6 = alloca %struct.icl_pdu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %11 = call %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu* %10)
  store %struct.iscsi_session* %11, %struct.iscsi_session** %3, align 8
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %13 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iscsi_bhs_nop_in*
  store %struct.iscsi_bhs_nop_in* %15, %struct.iscsi_bhs_nop_in** %5, align 8
  %16 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %22 = call i32 @icl_pdu_free(%struct.icl_pdu* %21)
  br label %117

23:                                               ; preds = %1
  %24 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %25 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @M_ISCSI, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @malloc(i64 %29, i32 %30, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %41 = call i32 @icl_pdu_free(%struct.icl_pdu* %40)
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %43 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %42)
  br label %117

44:                                               ; preds = %28
  %45 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @icl_pdu_get_data(%struct.icl_pdu* %45, i32 0, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %23
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %51 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @M_NOWAIT, align 4
  %54 = call %struct.icl_pdu* @icl_pdu_new(i32 %52, i32 %53)
  store %struct.icl_pdu* %54, %struct.icl_pdu** %6, align 8
  %55 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %56 = icmp eq %struct.icl_pdu* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %59 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @M_ISCSI, align 4
  %62 = call i32 @free(i8* %60, i32 %61)
  %63 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %64 = call i32 @icl_pdu_free(%struct.icl_pdu* %63)
  %65 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %66 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %65)
  br label %117

67:                                               ; preds = %49
  %68 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %69 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.iscsi_bhs_nop_out*
  store %struct.iscsi_bhs_nop_out* %71, %struct.iscsi_bhs_nop_out** %4, align 8
  %72 = load i32, i32* @ISCSI_BHS_OPCODE_NOP_OUT, align 4
  %73 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %77, i32 0, i32 1
  store i32 128, i32* %78, align 4
  %79 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %79, i32 0, i32 2
  store i32 -1, i32* %80, align 4
  %81 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %85 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %8, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %67
  %89 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i32, i32* @M_NOWAIT, align 4
  %93 = call i32 @icl_pdu_append_data(%struct.icl_pdu* %89, i8* %90, i64 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %98 = call i32 @ISCSI_SESSION_WARN(%struct.iscsi_session* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* @M_ISCSI, align 4
  %101 = call i32 @free(i8* %99, i32 %100)
  %102 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %103 = call i32 @icl_pdu_free(%struct.icl_pdu* %102)
  %104 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %105 = call i32 @icl_pdu_free(%struct.icl_pdu* %104)
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %107 = call i32 @iscsi_session_reconnect(%struct.iscsi_session* %106)
  br label %117

108:                                              ; preds = %88
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @M_ISCSI, align 4
  %111 = call i32 @free(i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %67
  %113 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %114 = call i32 @icl_pdu_free(%struct.icl_pdu* %113)
  %115 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %116 = call i32 @iscsi_pdu_queue_locked(%struct.icl_pdu* %115)
  br label %117

117:                                              ; preds = %112, %96, %57, %37, %20
  ret void
}

declare dso_local %struct.iscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i64 @icl_pdu_data_segment_length(%struct.icl_pdu*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @ISCSI_SESSION_WARN(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @iscsi_session_reconnect(%struct.iscsi_session*) #1

declare dso_local i32 @icl_pdu_get_data(%struct.icl_pdu*, i32, i8*, i64) #1

declare dso_local %struct.icl_pdu* @icl_pdu_new(i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @icl_pdu_append_data(%struct.icl_pdu*, i8*, i64, i32) #1

declare dso_local i32 @iscsi_pdu_queue_locked(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
