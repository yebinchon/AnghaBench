; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snmp_toolinfo = type { i32 }

@TOK_NUM = common dso_local global i32 0, align 4
@val = common dso_local global i64 0, align 8
@ASN_MAXID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Suboid expected - line %d\00", align 1
@input = common dso_local global %struct.TYPE_2__* null, align 8
@TOK_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Node name expected at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*)* @snmp_import_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_import_head(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  %5 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %6 = call i64 @gettoken(%struct.snmp_toolinfo* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = icmp eq i32 %7, 40
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %11 = call i64 @gettoken(%struct.snmp_toolinfo* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TOK_NUM, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @val, align 8
  %19 = load i64, i64* @ASN_MAXID, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %37

26:                                               ; preds = %17
  %27 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %28 = call i64 @gettoken(%struct.snmp_toolinfo* %27)
  %29 = load i64, i64* @TOK_STR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
