; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_str2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_str2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c",]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_str2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_str2asn_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i32* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %7, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %59

29:                                               ; preds = %24
  %30 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @snmp_suboid_append(%struct.asn_oid* %30, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %59

36:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i64 @snmp_suboid_append(%struct.asn_oid* %42, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i8* null, i8** %3, align 8
  br label %59

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %37

55:                                               ; preds = %37
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %55, %50, %35, %28
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
