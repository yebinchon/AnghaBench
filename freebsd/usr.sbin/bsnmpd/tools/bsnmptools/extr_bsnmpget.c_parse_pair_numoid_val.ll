; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_pair_numoid_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_pair_numoid_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"OID too long - %s\00", align 1
@MAX_CMD_SYNTAX_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown syntax in OID - %s\00", align 1
@SNMP_SYNTAX_NULL = common dso_local global i32 0, align 4
@MAX_OCTSTRING_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Value string too long - %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error parsing OID %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snmp_value*)* @parse_pair_numoid_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pair_numoid_val(i8* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %12 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 61
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

41:                                               ; preds = %34
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = call i32 @strlcpy(i8* %15, i8* %42, i64 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %66, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MAX_CMD_SYNTAX_LEN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %69

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %52

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MAX_CMD_SYNTAX_LEN, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

76:                                               ; preds = %69
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @parse_syntax(i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @SNMP_SYNTAX_NULL, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

84:                                               ; preds = %76
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %104, %84
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MAX_OCTSTRING_LEN, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %107

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %90

107:                                              ; preds = %102, %90
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

118:                                              ; preds = %107
  %119 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %120 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %119, i32 0, i32 0
  %121 = call i64 @snmp_parse_numoid(i8* %15, i32* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

125:                                              ; preds = %118
  %126 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = call i64 @parse_syntax_val(%struct.snmp_value* %126, i32 %127, i8* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

132:                                              ; preds = %125
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %133

133:                                              ; preds = %132, %131, %123, %115, %81, %73, %38
  %134 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @parse_syntax(i8*) #2

declare dso_local i64 @snmp_parse_numoid(i8*, i32*) #2

declare dso_local i64 @parse_syntax_val(%struct.snmp_value*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
