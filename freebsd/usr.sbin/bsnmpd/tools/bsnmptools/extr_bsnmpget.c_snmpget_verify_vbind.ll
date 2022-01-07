; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpget_verify_vbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpget_verify_vbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_pdu = type { i64, i64 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_SYNTAX_COUNTER64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"64-bit counters are not supported in SNMPv1 PDU\00", align 1
@SNMP_PDU_GETNEXT = common dso_local global i64 0, align 8
@SNMP_PDU_GETBULK = common dso_local global i64 0, align 8
@SNMP_PDU_GET = common dso_local global i64 0, align 8
@SNMP_SYNTAX_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Only leaf object values can be added to GET PDU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.snmp_pdu*, %struct.snmp_object*)* @snmpget_verify_vbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmpget_verify_vbind(%struct.snmp_toolinfo* %0, %struct.snmp_pdu* %1, %struct.snmp_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store %struct.snmp_object* %2, %struct.snmp_object** %7, align 8
  %8 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %9 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNMP_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.snmp_object*, %struct.snmp_object** %7, align 8
  %15 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNMP_SYNTAX_COUNTER64, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %55

22:                                               ; preds = %13, %3
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %24 = call i64 @ISSET_NUMERIC(%struct.snmp_toolinfo* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNMP_PDU_GETNEXT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %22
  store i32 1, i32* %4, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNMP_PDU_GET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.snmp_object*, %struct.snmp_object** %7, align 8
  %47 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNMP_SYNTAX_NULL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %55

54:                                               ; preds = %45, %39
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %38, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @ISSET_NUMERIC(%struct.snmp_toolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
