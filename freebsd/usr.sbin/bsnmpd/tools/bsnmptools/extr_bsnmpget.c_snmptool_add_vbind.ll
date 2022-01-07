; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_add_vbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_add_vbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snmp_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snmp_pdu*, %struct.snmp_object*)* @snmptool_add_vbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snmptool_add_vbind(%struct.snmp_pdu* %0, %struct.snmp_object* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %5, align 8
  %6 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %7 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %13 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %21 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @asn_append_oid(i32* %19, i32* %22)
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %29 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %11, %10
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @asn_append_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
