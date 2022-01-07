; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_oid_numeric.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_oid_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Value %s not supported\00", align 1
@ASN_MAXID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Suboid %u > ASN_MAXID\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"OID value %s not supported\00", align 1
@SNMP_SYNTAX_OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_oid_numeric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_oid_numeric(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i64, i64* @errno, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  store i64 0, i64* @errno, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strtoul(i8* %12, i8** %6, i32 10)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @errno, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %59

21:                                               ; preds = %9
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* @errno, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @ASN_MAXID, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %3, align 4
  br label %59

31:                                               ; preds = %21
  %32 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %33 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @snmp_suboid_append(i32* %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %59

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %9, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @SNMP_SYNTAX_OID, align 4
  %57 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %38, %27, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @snmp_suboid_append(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
