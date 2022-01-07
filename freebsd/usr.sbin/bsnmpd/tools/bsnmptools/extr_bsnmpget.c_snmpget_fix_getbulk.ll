; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpget_fix_getbulk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpget_fix_getbulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_pdu*, i64, i64)* @snmpget_fix_getbulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmpget_fix_getbulk(%struct.snmp_pdu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %8 = icmp ne %struct.snmp_pdu* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %12 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %21 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i64, i64* %5, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %33 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
