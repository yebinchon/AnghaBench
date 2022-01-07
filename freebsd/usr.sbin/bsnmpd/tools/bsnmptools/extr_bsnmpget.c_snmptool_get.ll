; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i32, i32, i32* }

@snmpget_verify_vbind = common dso_local global i32 0, align 4
@snmptool_add_vbind = common dso_local global i32 0, align 4
@SNMP_MAX_BINDINGS = common dso_local global i32 0, align 4
@SNMP_PDU_GETBULK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Snmp dialog\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Retrying...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*)* @snmptool_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmptool_get(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca %struct.snmp_toolinfo*, align 8
  %3 = alloca %struct.snmp_pdu, align 8
  %4 = alloca %struct.snmp_pdu, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %2, align 8
  %5 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %6 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %5)
  %7 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %3, i64 %6)
  br label %8

8:                                                ; preds = %66, %1
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %10 = load i32, i32* @snmpget_verify_vbind, align 4
  %11 = load i32, i32* @snmptool_add_vbind, align 4
  %12 = load i32, i32* @SNMP_MAX_BINDINGS, align 4
  %13 = call i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo* %9, i32 %10, i32 %11, %struct.snmp_pdu* %3, i32 %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %8
  %16 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %17 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %16)
  %18 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %22 = call i32 @GET_MAXREP(%struct.snmp_toolinfo* %21)
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %24 = call i32 @GET_NONREP(%struct.snmp_toolinfo* %23)
  %25 = call i32 @snmpget_fix_getbulk(%struct.snmp_pdu* %3, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = call i32 @snmp_dialog(%struct.snmp_pdu* %3, %struct.snmp_pdu* %4)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %73

31:                                               ; preds = %26
  %32 = call i64 @snmp_parse_resp(%struct.snmp_pdu* %4, %struct.snmp_pdu* %3)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %36 = call i32 @snmp_output_resp(%struct.snmp_toolinfo* %35, %struct.snmp_pdu* %4, i32* null)
  %37 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %73

38:                                               ; preds = %31
  %39 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %40 = call i32 @snmp_output_err_resp(%struct.snmp_toolinfo* %39, %struct.snmp_pdu* %4)
  %41 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %42 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %41)
  %43 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %47 = call i32 @ISSET_RETRY(%struct.snmp_toolinfo* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %38
  %50 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %73

51:                                               ; preds = %45
  %52 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %53 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @snmp_object_seterror(%struct.snmp_toolinfo* %52, i32* %59, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  br label %73

66:                                               ; preds = %51
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %4)
  %70 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %71 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %70)
  %72 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %3, i64 %71)
  br label %8

73:                                               ; preds = %64, %49, %34, %29, %8
  %74 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %3)
  ret i32 0
}

declare dso_local i32 @snmp_pdu_create(%struct.snmp_pdu*, i64) #1

declare dso_local i64 @GET_PDUTYPE(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_pdu_add_bindings(%struct.snmp_toolinfo*, i32, i32, %struct.snmp_pdu*, i32) #1

declare dso_local i32 @snmpget_fix_getbulk(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @GET_MAXREP(%struct.snmp_toolinfo*) #1

declare dso_local i32 @GET_NONREP(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_dialog(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @snmp_parse_resp(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

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
