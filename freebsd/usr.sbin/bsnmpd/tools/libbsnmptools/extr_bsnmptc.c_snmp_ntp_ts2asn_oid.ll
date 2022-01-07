; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_ntp_ts2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_ntp_ts2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32*, i64 }

@SNMP_NTP_TS_OCTETS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed adding oid - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_ntp_ts2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_ntp_ts2asn_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.asn_oid, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %13 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %14 = load i64, i64* @SNMP_NTP_TS_OCTETS, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @snmp_suboid_append(%struct.asn_oid* %13, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %112

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* @errno, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strtoul(i8* %22, i8** %6, i32 10)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 1000
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %19
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %112

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* @errno, align 4
  br label %36

36:                                               ; preds = %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 46
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i8* null, i8** %3, align 8
  br label %112

44:                                               ; preds = %36
  %45 = call i32 @memset(%struct.asn_oid* %11, i32 0, i32 16)
  %46 = load i64, i64* @SNMP_NTP_TS_OCTETS, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  br label %48

48:                                               ; preds = %65, %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %52, %53
  %55 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %63, 10
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %7, align 8
  %71 = load i32, i32* @errno, align 4
  store i32 %71, i32* %12, align 4
  store i32 0, i32* @errno, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @strtoul(i8* %72, i8** %6, i32 10)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @errno, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = sdiv i32 %77, 1000
  %79 = icmp sgt i32 %78, 9
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %68
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %112

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* @errno, align 4
  br label %86

86:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sdiv i32 %91, %92
  %94 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = srem i32 %100, %101
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sdiv i32 %103, 10
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %110 = call i32 @asn_append_oid(%struct.asn_oid* %109, %struct.asn_oid* %11)
  %111 = load i8*, i8** %6, align 8
  store i8* %111, i8** %3, align 8
  br label %112

112:                                              ; preds = %108, %80, %41, %30, %18
  %113 = load i8*, i8** %3, align 8
  ret i8* %113
}

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @memset(%struct.asn_oid*, i32, i32) #1

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.asn_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
