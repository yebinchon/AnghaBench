; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_cnt64_2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_cnt64_2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_cnt64_2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_cnt64_2asn_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %9 = load i64, i64* @errno, align 8
  store i64 %9, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strtoull(i8* %10, i8** %6, i32 10)
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @errno, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* @errno, align 8
  store i8* null, i8** %3, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* @errno, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @snmp_suboid_append(%struct.asn_oid* %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %34

25:                                               ; preds = %18
  %26 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 32
  %29 = call i64 @snmp_suboid_append(%struct.asn_oid* %26, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %34

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %32, %31, %24, %14
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
