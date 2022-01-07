; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i32, i32, i32* }

@SNMP_PDU_SET = common dso_local global i32 0, align 4
@snmpset_verify_vbind = common dso_local global i32 0, align 4
@snmpset_add_vbind = common dso_local global i32 0, align 4
@SNMP_MAX_BINDINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Snmp dialog\00", align 1
@OUTPUT_QUIET = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Retrying...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*)* @snmptool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmptool_set(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca %struct.snmp_toolinfo*, align 8
  %3 = alloca %struct.snmp_pdu, align 8
  %4 = alloca %struct.snmp_pdu, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %2, align 8
  %5 = load i32, i32* @SNMP_PDU_SET, align 4
  %6 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %3, i32 %5)
  br label %7

7:                                                ; preds = %55, %1
  %8 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %9 = load i32, i32* @snmpset_verify_vbind, align 4
  %10 = load i32, i32* @snmpset_add_vbind, align 4
  %11 = load i32, i32* @SNMP_MAX_BINDINGS, align 4
  %12 = call i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo* %8, i32 %9, i32 %10, %struct.snmp_pdu* %3, i32 %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %7
  %15 = call i64 @snmp_dialog(%struct.snmp_pdu* %3, %struct.snmp_pdu* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %61

19:                                               ; preds = %14
  %20 = call i64 @snmp_pdu_check(%struct.snmp_pdu* %3, %struct.snmp_pdu* %4)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %24 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %23)
  %25 = load i64, i64* @OUTPUT_QUIET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %29 = call i32 @snmp_output_resp(%struct.snmp_toolinfo* %28, %struct.snmp_pdu* %4, i32* null)
  br label %30

30:                                               ; preds = %27, %22
  %31 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %61

32:                                               ; preds = %19
  %33 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %34 = call i32 @snmp_output_err_resp(%struct.snmp_toolinfo* %33, %struct.snmp_pdu* %4)
  %35 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %36 = call i32 @ISSET_RETRY(%struct.snmp_toolinfo* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %42 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @snmp_object_seterror(%struct.snmp_toolinfo* %41, i32* %48, i32 %50)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %61

55:                                               ; preds = %40
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %3)
  %59 = load i32, i32* @SNMP_PDU_SET, align 4
  %60 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %3, i32 %59)
  br label %7

61:                                               ; preds = %53, %38, %30, %17, %7
  %62 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %3)
  ret i32 0
}

declare dso_local i32 @snmp_pdu_create(%struct.snmp_pdu*, i32) #1

declare dso_local i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo*, i32, i32, %struct.snmp_pdu*, i32) #1

declare dso_local i64 @snmp_dialog(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @snmp_pdu_check(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_output_resp(%struct.snmp_toolinfo*, %struct.snmp_pdu*, i32*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_output_err_resp(%struct.snmp_toolinfo*, %struct.snmp_pdu*) #1

declare dso_local i32 @ISSET_RETRY(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_object_seterror(%struct.snmp_toolinfo*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
