; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snmp_toolinfo = type { i32 }
%struct.enum_type = type { i32, i32, i32, i32 }

@TOK_TYPEDEF = common dso_local global i8 0, align 1
@TOK_STR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [38 x i8] c"type name expected after typedef - %s\00", align 1
@input = common dso_local global %struct.TYPE_2__* null, align 8
@nexttok = common dso_local global i32 0, align 4
@TOK_ENUM = common dso_local global i8 0, align 1
@TOK_BITS = common dso_local global i8 0, align 1
@TOK_INCLUDE = common dso_local global i8 0, align 1
@TOK_FILENAME = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"filename expected in include directive - %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"'(' or 'typedef' expected - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snmp_toolinfo*, i8*)* @snmp_import_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @snmp_import_top(%struct.snmp_toolinfo* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.enum_type*, align 8
  %8 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call signext i8 @snmp_import_tree(%struct.snmp_toolinfo* %14, i8* %15)
  store i8 %16, i8* %3, align 1
  br label %113

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @TOK_TYPEDEF, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %26 = call signext i8 @gettoken(%struct.snmp_toolinfo* %25)
  %27 = load i8*, i8** %5, align 8
  store i8 %26, i8* %27, align 1
  %28 = sext i8 %26 to i32
  %29 = load i8, i8* @TOK_STR, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i8 -1, i8* %3, align 1
  br label %113

37:                                               ; preds = %24
  %38 = load i32, i32* @nexttok, align 4
  %39 = call %struct.enum_type* @snmp_enumtc_init(i32 %38)
  store %struct.enum_type* %39, %struct.enum_type** %7, align 8
  %40 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %41 = call signext i8 @gettoken(%struct.snmp_toolinfo* %40)
  %42 = load i8*, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @TOK_ENUM, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.enum_type*, %struct.enum_type** %7, align 8
  %51 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @TOK_BITS, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.enum_type*, %struct.enum_type** %7, align 8
  %60 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.enum_type*, %struct.enum_type** %7, align 8
  %64 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %63, i32 0, i32 2
  %65 = call i32 @parse_type(%struct.snmp_toolinfo* %61, i8* %62, i32* %6, i32* %64)
  %66 = load %struct.enum_type*, %struct.enum_type** %7, align 8
  %67 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %69 = load %struct.enum_type*, %struct.enum_type** %7, align 8
  %70 = call i32 @snmp_enumtc_insert(%struct.snmp_toolinfo* %68, %struct.enum_type* %69)
  store i8 1, i8* %3, align 1
  br label %113

71:                                               ; preds = %17
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @TOK_INCLUDE, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %71
  %79 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %80 = call signext i8 @gettoken(%struct.snmp_toolinfo* %79)
  %81 = load i8*, i8** %5, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @TOK_FILENAME, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @nexttok, align 4
  %90 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i8 -1, i8* %3, align 1
  br label %113

91:                                               ; preds = %78
  %92 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %93 = load i32, i32* @nexttok, align 4
  %94 = call i32 @add_filename(%struct.snmp_toolinfo* %92, i32 %93, i32* null, i32 1)
  store i32 %94, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %98 = call signext i8 @gettoken(%struct.snmp_toolinfo* %97)
  %99 = load i8*, i8** %5, align 8
  store i8 %98, i8* %99, align 1
  store i8 1, i8* %3, align 1
  br label %113

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i8 -1, i8* %3, align 1
  br label %113

104:                                              ; preds = %100
  %105 = load i32, i32* @nexttok, align 4
  %106 = call i32 @input_fopen(i32 %105)
  %107 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %108 = call signext i8 @gettoken(%struct.snmp_toolinfo* %107)
  %109 = load i8*, i8** %5, align 8
  store i8 %108, i8* %109, align 1
  store i8 1, i8* %3, align 1
  br label %113

110:                                              ; preds = %71
  %111 = load i32, i32* @nexttok, align 4
  %112 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  store i8 -1, i8* %3, align 1
  br label %113

113:                                              ; preds = %110, %104, %103, %96, %88, %37, %32, %13
  %114 = load i8, i8* %3, align 1
  ret i8 %114
}

declare dso_local signext i8 @snmp_import_tree(%struct.snmp_toolinfo*, i8*) #1

declare dso_local signext i8 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local %struct.enum_type* @snmp_enumtc_init(i32) #1

declare dso_local i32 @parse_type(%struct.snmp_toolinfo*, i8*, i32*, i32*) #1

declare dso_local i32 @snmp_enumtc_insert(%struct.snmp_toolinfo*, %struct.enum_type*) #1

declare dso_local i32 @add_filename(%struct.snmp_toolinfo*, i32, i32*, i32) #1

declare dso_local i32 @input_fopen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
