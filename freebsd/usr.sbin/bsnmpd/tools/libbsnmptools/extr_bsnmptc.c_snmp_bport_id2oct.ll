; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_bport_id2oct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_bport_id2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@SNMP_BPORT_OCTETS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@SNMP_MAX_BPORT_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bad bridge port priority value %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad port number - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_bport_id2oct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_bport_id2oct(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %10 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %11 = load i64, i64* @SNMP_BPORT_OCTETS, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @snmp_suboid_append(%struct.asn_oid* %10, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %60

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* @errno, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strtoul(i8* %19, i8** %6, i32 10)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SNMP_MAX_BPORT_PRIORITY, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @errno, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 46
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %24, %16
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* @errno, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i8* null, i8** %3, align 8
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @snmp_suboid_append(%struct.asn_oid* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %60

42:                                               ; preds = %36
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %9, align 4
  store i32 0, i32* @errno, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strtoul(i8* %44, i8** %6, i32 16)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* @errno, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i8* null, i8** %3, align 8
  br label %60

52:                                               ; preds = %42
  %53 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @snmp_suboid_append(%struct.asn_oid* %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i8* null, i8** %3, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %58, %57, %49, %41, %32, %15
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
