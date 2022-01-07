; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bridge_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bridge_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_BRIDGEID_OCTETS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@SNMP_MAX_BRIDGE_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Bad bridge priority value %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed reading octet - %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_bridge_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bridge_id(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SNMP_BRIDGEID_OCTETS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i64, i64* @errno, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  store i64 0, i64* @errno, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strtoul(i8* %19, i8** %6, i32 10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SNMP_MAX_BRIDGE_PRIORITY, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 46
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %24, %2
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* @errno, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 65280
  %40 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %73, %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strtoul(i8* %50, i8** %6, i32 16)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 255
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 58
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %46

76:                                               ; preds = %46
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strtoul(i8* %77, i8** %6, i32 16)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 255
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds i32, i32* %16, i64 7
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @SNMP_BRIDGEID_OCTETS, align 4
  %88 = call i32* @malloc(i32 %87)
  %89 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %90 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32* %88, i32** %92, align 8
  %93 = icmp eq i32* %88, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load i64, i64* @errno, align 8
  %97 = call i32 @strerror(i64 %96)
  %98 = call i32 @syslog(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load i32, i32* @SNMP_BRIDGEID_OCTETS, align 4
  %101 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %102 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %106 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @SNMP_BRIDGEID_OCTETS, align 4
  %111 = call i32 @memcpy(i32* %109, i32* %16, i32 %110)
  %112 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %113 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %114 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %115

115:                                              ; preds = %99, %94, %81, %62, %54, %32
  %116 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @warnx(i8*, ...) #2

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
