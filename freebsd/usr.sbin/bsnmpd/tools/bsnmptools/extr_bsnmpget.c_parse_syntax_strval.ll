; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_syntax_strval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_syntax_strval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_object = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OUTPUT_VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Syntax missing in value - %s\00", align 1
@SNMP_SYNTAX_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown syntax in - %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad syntax in - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)* @parse_syntax_strval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_syntax_strval(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %11 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %10)
  %12 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 58
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %4, align 4
  br label %146

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @parse_syntax(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @SNMP_SYNTAX_NULL, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %4, align 4
  br label %146

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %49 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %55 = call i32 @ISSET_ERRIGNORE(%struct.snmp_toolinfo* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %4, align 4
  br label %146

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %63 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %70

69:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %72 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %144 [
    i32 132, label %75
    i32 131, label %82
    i32 135, label %90
    i32 133, label %98
    i32 128, label %106
    i32 134, label %114
    i32 130, label %122
    i32 129, label %135
  ]

75:                                               ; preds = %70
  %76 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 @parse_int_string(%struct.snmp_object* %76, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %146

82:                                               ; preds = %70
  %83 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %84 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %83, i32 0, i32 0
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 @parse_ip(%struct.TYPE_10__* %84, i8* %88)
  store i32 %89, i32* %4, align 4
  br label %146

90:                                               ; preds = %70
  %91 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %92 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %91, i32 0, i32 0
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = call i32 @parse_counter(%struct.TYPE_10__* %92, i8* %96)
  store i32 %97, i32* %4, align 4
  br label %146

98:                                               ; preds = %70
  %99 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %100 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %99, i32 0, i32 0
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = call i32 @parse_gauge(%struct.TYPE_10__* %100, i8* %104)
  store i32 %105, i32* %4, align 4
  br label %146

106:                                              ; preds = %70
  %107 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %108 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %107, i32 0, i32 0
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = call i32 @parse_ticks(%struct.TYPE_10__* %108, i8* %112)
  store i32 %113, i32* %4, align 4
  br label %146

114:                                              ; preds = %70
  %115 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %116 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %115, i32 0, i32 0
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = call i32 @parse_uint64(%struct.TYPE_10__* %116, i8* %120)
  store i32 %121, i32* %4, align 4
  br label %146

122:                                              ; preds = %70
  %123 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %124 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %129 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %128, i32 0, i32 0
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = call i32 @snmp_tc2oct(i32 %127, %struct.TYPE_10__* %129, i8* %133)
  store i32 %134, i32* %4, align 4
  br label %146

135:                                              ; preds = %70
  %136 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %137 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %138 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %137, i32 0, i32 0
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = call i32 @parse_oid_string(%struct.snmp_toolinfo* %136, %struct.TYPE_10__* %138, i8* %142)
  store i32 %143, i32* %4, align 4
  br label %146

144:                                              ; preds = %70
  br label %145

145:                                              ; preds = %144
  store i32 -1, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %135, %122, %114, %106, %98, %90, %82, %75, %57, %43, %31
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @parse_syntax(i8*) #1

declare dso_local i32 @ISSET_ERRIGNORE(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_int_string(%struct.snmp_object*, i8*) #1

declare dso_local i32 @parse_ip(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_counter(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_gauge(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_ticks(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_uint64(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @snmp_tc2oct(i32, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_oid_string(%struct.snmp_toolinfo*, %struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
