; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_ntp_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_ntp_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_NTP_TS_OCTETS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed reading octet - %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_ntp_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ntp_ts(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @SNMP_NTP_TS_OCTETS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i64, i64* @errno, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtoul(i8* %20, i8** %6, i32 10)
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* @errno, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 1000
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* @errno, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %133

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* @errno, align 8
  br label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 46
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %133

44:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %17, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %58, 10
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %5, align 8
  %66 = load i64, i64* @errno, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strtoul(i8* %68, i8** %6, i32 10)
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = sdiv i32 %73, 1000
  %75 = icmp sgt i32 %74, 9
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* @errno, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %133

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* @errno, align 8
  br label %84

84:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sdiv i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %17, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = srem i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sdiv i32 %99, 10
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load i32, i32* @SNMP_NTP_TS_OCTETS, align 4
  %106 = call i32* @malloc(i32 %105)
  %107 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %108 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32* %106, i32** %110, align 8
  %111 = icmp eq i32* %106, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = load i64, i64* @errno, align 8
  %115 = call i32 @strerror(i64 %114)
  %116 = call i32 @syslog(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %133

117:                                              ; preds = %104
  %118 = load i32, i32* @SNMP_NTP_TS_OCTETS, align 4
  %119 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %120 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %124 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @SNMP_NTP_TS_OCTETS, align 4
  %129 = call i32 @memcpy(i32* %127, i32* %17, i32 %128)
  %130 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %131 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %132 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %133

133:                                              ; preds = %117, %112, %76, %41, %28
  %134 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
