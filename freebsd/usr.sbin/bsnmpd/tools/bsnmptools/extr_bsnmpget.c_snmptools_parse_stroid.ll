; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptools_parse_stroid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptools_parse_stroid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.asn_oid = type { i64 }

@MAXSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid OID - %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No entry for %s in mapping lists\00", align 1
@SNMP_PDU_GET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)* @snmptools_parse_stroid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmptools_parse_stroid(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.asn_oid, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @MAXSTR, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %23, %3
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isalpha(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 95
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br label %47

47:                                               ; preds = %45, %32, %27
  %48 = phi i1 [ true, %32 ], [ true, %27 ], [ %46, %45 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %27

54:                                               ; preds = %47
  %55 = load i64, i64* %11, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @MAXSTR, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp sge i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %54
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

63:                                               ; preds = %57
  %64 = call i32 @memset(%struct.asn_oid* %12, i32 0, i32 8)
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = call i8* @snmp_parse_suboid(i8* %67, %struct.asn_oid* %12)
  store i8* %68, i8** %10, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %71)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @strlcpy(i8* %17, i8* %74, i64 %76)
  %78 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %79 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %80 = call i64 @snmp_lookup_oidall(%struct.snmp_toolinfo* %78, %struct.snmp_object* %79, i8* %17)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %90 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @asn_append_oid(i32* %91, %struct.asn_oid* %12)
  br label %128

93:                                               ; preds = %84
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 91
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %103 = call i8* @snmp_parse_index(%struct.snmp_toolinfo* %99, i8* %101, %struct.snmp_object* %102)
  store i8* %103, i8** %10, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

106:                                              ; preds = %98
  br label %127

107:                                              ; preds = %93
  %108 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %109 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %115 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %114)
  %116 = load i64, i64* @SNMP_PDU_GET, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %120 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = call i64 @snmp_suboid_append(i32* %121, i32 0)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %113, %107
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i8*, i8** %10, align 8
  store i8* %129, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %130

130:                                              ; preds = %128, %124, %105, %82, %70, %62
  %131 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i8*, i8** %4, align 8
  ret i8* %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isalpha(i8 signext) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @memset(%struct.asn_oid*, i32, i32) #2

declare dso_local i8* @snmp_parse_suboid(i8*, %struct.asn_oid*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i64 @snmp_lookup_oidall(%struct.snmp_toolinfo*, %struct.snmp_object*, i8*) #2

declare dso_local i32 @asn_append_oid(i32*, %struct.asn_oid*) #2

declare dso_local i8* @snmp_parse_index(%struct.snmp_toolinfo*, i8*, %struct.snmp_object*) #2

declare dso_local i64 @GET_PDUTYPE(%struct.snmp_toolinfo*) #2

declare dso_local i64 @snmp_suboid_append(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
