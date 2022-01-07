; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.enum_pairs = type { i32 }
%struct.enum_type = type { %struct.enum_pairs* }

@val = common dso_local global i32 0, align 4
@TOK_ENUM = common dso_local global i32 0, align 4
@TOK_BITS = common dso_local global i32 0, align 4
@SNMP_TC_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"'(' expected after ENUM/BITS\00", align 1
@TOK_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"need value for ENUM//BITS\00", align 1
@TOK_DEFTYPE = common dso_local global i32 0, align 4
@nexttok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i32*, i32*, %struct.enum_pairs**)* @parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_type(%struct.snmp_toolinfo* %0, i32* %1, i32* %2, %struct.enum_pairs** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_toolinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.enum_pairs**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.enum_type*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.enum_pairs** %3, %struct.enum_pairs*** %9, align 8
  %13 = load i32, i32* @val, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TOK_ENUM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TOK_BITS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %19, %4
  %25 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  %26 = load %struct.enum_pairs*, %struct.enum_pairs** %25, align 8
  %27 = icmp eq %struct.enum_pairs* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = call %struct.enum_pairs* (...) @enum_pairs_init()
  %30 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  store %struct.enum_pairs* %29, %struct.enum_pairs** %30, align 8
  %31 = icmp eq %struct.enum_pairs* %29, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %118

33:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  %34 = load i32, i32* @SNMP_TC_OWN, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %39 = call signext i8 @gettoken(%struct.snmp_toolinfo* %38)
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %118

44:                                               ; preds = %37
  %45 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %46 = call signext i8 @gettoken(%struct.snmp_toolinfo* %45)
  %47 = sext i8 %46 to i32
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @TOK_NUM, align 4
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  %57 = load %struct.enum_pairs*, %struct.enum_pairs** %56, align 8
  %58 = call i32 @free(%struct.enum_pairs* %57)
  %59 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  store %struct.enum_pairs* null, %struct.enum_pairs** %59, align 8
  br label %60

60:                                               ; preds = %55, %51
  store i32 -1, i32* %5, align 4
  br label %118

61:                                               ; preds = %44
  %62 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  %65 = load %struct.enum_pairs*, %struct.enum_pairs** %64, align 8
  %66 = call i64 @parse_enum(%struct.snmp_toolinfo* %62, i32* %63, %struct.enum_pairs* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  %70 = load %struct.enum_pairs*, %struct.enum_pairs** %69, align 8
  %71 = call i32 @enum_pairs_free(%struct.enum_pairs* %70)
  %72 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  store %struct.enum_pairs* null, %struct.enum_pairs** %72, align 8
  store i32 -1, i32* %5, align 4
  br label %118

73:                                               ; preds = %61
  %74 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %75 = call signext i8 @gettoken(%struct.snmp_toolinfo* %74)
  %76 = sext i8 %75 to i32
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %116

78:                                               ; preds = %19
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TOK_DEFTYPE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %86 = load i32, i32* @nexttok, align 4
  %87 = call %struct.enum_type* @snmp_enumtc_lookup(%struct.snmp_toolinfo* %85, i32 %86)
  store %struct.enum_type* %87, %struct.enum_type** %12, align 8
  %88 = load %struct.enum_type*, %struct.enum_type** %12, align 8
  %89 = icmp ne %struct.enum_type* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.enum_type*, %struct.enum_type** %12, align 8
  %92 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %91, i32 0, i32 0
  %93 = load %struct.enum_pairs*, %struct.enum_pairs** %92, align 8
  %94 = load %struct.enum_pairs**, %struct.enum_pairs*** %9, align 8
  store %struct.enum_pairs* %93, %struct.enum_pairs** %94, align 8
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %97 = call signext i8 @gettoken(%struct.snmp_toolinfo* %96)
  %98 = sext i8 %97 to i32
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %115

100:                                              ; preds = %78
  %101 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %102 = call signext i8 @gettoken(%struct.snmp_toolinfo* %101)
  %103 = sext i8 %102 to i32
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  %105 = icmp eq i32 %103, 124
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i64 @parse_subtype(%struct.snmp_toolinfo* %107, i32* %108, i32* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 -1, i32* %5, align 4
  br label %118

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %73
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %112, %68, %60, %42, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.enum_pairs* @enum_pairs_init(...) #1

declare dso_local signext i8 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @free(%struct.enum_pairs*) #1

declare dso_local i64 @parse_enum(%struct.snmp_toolinfo*, i32*, %struct.enum_pairs*) #1

declare dso_local i32 @enum_pairs_free(%struct.enum_pairs*) #1

declare dso_local %struct.enum_type* @snmp_enumtc_lookup(%struct.snmp_toolinfo*, i32) #1

declare dso_local i64 @parse_subtype(%struct.snmp_toolinfo*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
