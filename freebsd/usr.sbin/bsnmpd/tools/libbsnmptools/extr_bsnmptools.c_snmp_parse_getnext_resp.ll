; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_getnext_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_getnext_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_parse_getnext_resp(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %10 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %15 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %21 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i64 @asn_is_suboid(i32* %19, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %51

29:                                               ; preds = %13
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNMP_V1, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %37 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %35, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %7

50:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %28
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @asn_is_suboid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
