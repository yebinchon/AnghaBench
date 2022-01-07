; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_bridgeid2oct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_bridgeid2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@SNMP_BRIDGEID_OCTETS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SNMP_MAX_BRIDGE_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Bad bridge priority value %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed adding oid - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_bridgeid2oct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_bridgeid2oct(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %11 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %12 = load i64, i64* @SNMP_BRIDGEID_OCTETS, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @snmp_suboid_append(%struct.asn_oid* %11, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %105

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i64, i64* @errno, align 8
  store i64 %19, i64* %10, align 8
  store i64 0, i64* @errno, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strtoul(i8* %20, i8** %6, i32 10)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SNMP_MAX_BRIDGE_PRIORITY, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* @errno, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 46
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %25, %17
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* @errno, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i8* null, i8** %3, align 8
  br label %105

37:                                               ; preds = %28
  %38 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 65280
  %41 = call i64 @snmp_suboid_append(%struct.asn_oid* %38, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %105

44:                                               ; preds = %37
  %45 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = call i64 @snmp_suboid_append(%struct.asn_oid* %45, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %105

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %84, %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 5
  br i1 %56, label %57, label %87

57:                                               ; preds = %54
  %58 = load i64, i64* @errno, align 8
  store i64 %58, i64* %10, align 8
  store i64 0, i64* @errno, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strtoul(i8* %59, i8** %6, i32 16)
  store i32 %60, i32* %8, align 4
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* @errno, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i8* null, i8** %3, align 8
  br label %105

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 58
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  store i8* null, i8** %3, align 8
  br label %105

75:                                               ; preds = %67
  %76 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @snmp_suboid_append(%struct.asn_oid* %76, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i8* null, i8** %3, align 8
  br label %105

81:                                               ; preds = %75
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %54

87:                                               ; preds = %54
  %88 = load i64, i64* @errno, align 8
  store i64 %88, i64* %10, align 8
  store i64 0, i64* @errno, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strtoul(i8* %89, i8** %6, i32 16)
  store i32 %90, i32* %8, align 4
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* @errno, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  store i8* null, i8** %3, align 8
  br label %105

97:                                               ; preds = %87
  %98 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @snmp_suboid_append(%struct.asn_oid* %98, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i8* null, i8** %3, align 8
  br label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %102, %94, %80, %72, %64, %50, %43, %33, %16
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
