; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpset_add_vbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpset_add_vbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snmp_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SNMP_MAX_BINDINGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Too many OIDs for one PDU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*, %struct.snmp_object*)* @snmpset_add_vbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmpset_add_vbind(%struct.snmp_pdu* %0, %struct.snmp_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %5, align 8
  %6 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %7 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SNMP_MAX_BINDINGS, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %15 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %21 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %28 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %27, i32 0, i32 1
  %29 = call i64 @snmpset_add_value(%struct.TYPE_3__* %26, %struct.TYPE_4__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %53

32:                                               ; preds = %19
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %37 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %42 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @asn_append_oid(i32* %40, i32* %43)
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %32, %31, %18, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @snmpset_add_value(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @asn_append_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
