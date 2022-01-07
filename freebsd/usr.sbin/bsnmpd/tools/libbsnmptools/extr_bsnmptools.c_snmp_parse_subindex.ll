; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_subindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_subindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.index = type { i32, i32 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_CMD_SYNTAX_LEN = common dso_local global i32 0, align 4
@OUTPUT_VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown syntax in OID - %s\00", align 1
@SNMP_SYNTAX_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid  syntax - %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Syntax mismatch - %d expected, %d given\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snmp_toolinfo*, i8*, %struct.index*, %struct.snmp_object*)* @snmp_parse_subindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_parse_subindex(%struct.snmp_toolinfo* %0, i8* %1, %struct.index* %2, %struct.snmp_object* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snmp_toolinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.index*, align 8
  %9 = alloca %struct.snmp_object*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.index* %2, %struct.index** %8, align 8
  store %struct.snmp_object* %3, %struct.snmp_object** %9, align 8
  %16 = load i32, i32* @MAX_CMD_SYNTAX_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %22 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %21)
  %23 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MAX_CMD_SYNTAX_LEN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 58
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %26

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MAX_CMD_SYNTAX_LEN, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @parse_syntax(i8* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @SNMP_SYNTAX_NULL, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.index*, %struct.index** %8, align 8
  %60 = getelementptr inbounds %struct.index, %struct.index* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %65 = call i32 @ISSET_ERRIGNORE(%struct.snmp_toolinfo* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.index*, %struct.index** %8, align 8
  %69 = getelementptr inbounds %struct.index, %struct.index* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

73:                                               ; preds = %63, %57
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %10, align 8
  br label %83

79:                                               ; preds = %4
  %80 = load %struct.index*, %struct.index** %8, align 8
  %81 = getelementptr inbounds %struct.index, %struct.index* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %125 [
    i32 132, label %85
    i32 129, label %91
    i32 131, label %98
    i32 135, label %104
    i32 133, label %104
    i32 128, label %104
    i32 134, label %110
    i32 130, label %116
  ]

85:                                               ; preds = %83
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %88 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i8* @snmp_int2asn_oid(i8* %86, i32* %89)
  store i8* %90, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

91:                                               ; preds = %83
  %92 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %95 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i8* @snmp_oid2asn_oid(%struct.snmp_toolinfo* %92, i8* %93, i32* %96)
  store i8* %97, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

98:                                               ; preds = %83
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %101 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i8* @snmp_ip2asn_oid(i8* %99, i32* %102)
  store i8* %103, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

104:                                              ; preds = %83, %83, %83
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %107 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i8* @snmp_uint2asn_oid(i8* %105, i32* %108)
  store i8* %109, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

110:                                              ; preds = %83
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %113 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i8* @snmp_cnt64_2asn_oid(i8* %111, i32* %114)
  store i8* %115, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

116:                                              ; preds = %83
  %117 = load %struct.index*, %struct.index** %8, align 8
  %118 = getelementptr inbounds %struct.index, %struct.index* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.snmp_object*, %struct.snmp_object** %9, align 8
  %122 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i8* @snmp_tc2oid(i32 %119, i8* %120, i32* %123)
  store i8* %124, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

125:                                              ; preds = %83
  br label %126

126:                                              ; preds = %125
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %127

127:                                              ; preds = %126, %116, %110, %104, %98, %91, %85, %67, %55, %47
  %128 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i8*, i8** %5, align 8
  ret i8* %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @parse_syntax(i8*) #2

declare dso_local i32 @ISSET_ERRIGNORE(%struct.snmp_toolinfo*) #2

declare dso_local i8* @snmp_int2asn_oid(i8*, i32*) #2

declare dso_local i8* @snmp_oid2asn_oid(%struct.snmp_toolinfo*, i8*, i32*) #2

declare dso_local i8* @snmp_ip2asn_oid(i8*, i32*) #2

declare dso_local i8* @snmp_uint2asn_oid(i8*, i32*) #2

declare dso_local i8* @snmp_cnt64_2asn_oid(i8*, i32*) #2

declare dso_local i8* @snmp_tc2oid(i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
