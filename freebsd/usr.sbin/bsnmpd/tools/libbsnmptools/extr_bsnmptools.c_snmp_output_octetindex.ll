; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_octetindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_octetindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.asn_oid = type { i64* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"malloc failed - %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_toolinfo*, i32, %struct.asn_oid*)* @snmp_output_octetindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_output_octetindex(%struct.snmp_toolinfo* %0, i32 %1, %struct.asn_oid* %2) #0 {
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.asn_oid* %2, %struct.asn_oid** %6, align 8
  %9 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %10 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  %15 = call i64* @malloc(i64 %14)
  store i64* %15, i64** %8, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %57

22:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %33 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %49 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = call i32 @snmp_output_octetstring(%struct.snmp_toolinfo* %46, i32 %47, i64 %52, i64* %53)
  %55 = load i64*, i64** %8, align 8
  %56 = call i32 @free(i64* %55)
  br label %57

57:                                               ; preds = %45, %17
  ret void
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snmp_output_octetstring(%struct.snmp_toolinfo*, i32, i64, i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
