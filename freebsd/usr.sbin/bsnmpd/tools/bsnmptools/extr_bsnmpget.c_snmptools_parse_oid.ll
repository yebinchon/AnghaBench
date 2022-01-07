; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptools_parse_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptools_parse_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)* @snmptools_parse_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmptools_parse_oid(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

11:                                               ; preds = %3
  %12 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %13 = call i64 @ISSET_NUMERIC(%struct.snmp_toolinfo* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %18 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @snmp_parse_numoid(i8* %16, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %40

23:                                               ; preds = %15
  br label %39

24:                                               ; preds = %11
  %25 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %26 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @snmptools_parse_stroid(%struct.snmp_toolinfo* %25, %struct.snmp_object* %26, i8* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %33 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i64 @snmp_parse_numoid(i8* %31, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %40

38:                                               ; preds = %30, %24
  br label %39

39:                                               ; preds = %38, %23
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37, %22, %10
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @ISSET_NUMERIC(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_parse_numoid(i8*, i32*) #1

declare dso_local i32* @snmptools_parse_stroid(%struct.snmp_toolinfo*, %struct.snmp_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
