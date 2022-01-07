; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snmp_oid2str* }
%struct.snmp_oid2str = type { i32, %struct.snmp_oid2str*, i32, i32, i32, i32 }
%struct.snmp_toolinfo = type { i32 }

@TOK_STR = common dso_local global i32 0, align 4
@SNMP_ACCESS_GETSET = common dso_local global i32 0, align 4
@TOK_ACCESS = common dso_local global i32 0, align 4
@val = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"')' expected at end of line %d\00", align 1
@input = common dso_local global %struct.TYPE_2__* null, align 8
@ENTRY_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error adding leaf %s to list\00", align 1
@ENTRY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i32*, %struct.snmp_oid2str*)* @snmp_import_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_import_leaf(%struct.snmp_toolinfo* %0, i32* %1, %struct.snmp_oid2str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.snmp_oid2str*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.snmp_oid2str* %2, %struct.snmp_oid2str** %7, align 8
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %13 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %12, i32 0, i32 5
  %14 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %15 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %14, i32 0, i32 4
  %16 = call i32 @parse_type(%struct.snmp_toolinfo* %10, i32* %11, i32* %13, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %92

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %22 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TOK_STR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %29 = call i32 @gettoken(%struct.snmp_toolinfo* %28)
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %19
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SNMP_ACCESS_GETSET, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TOK_ACCESS, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %56

43:                                               ; preds = %41
  %44 = load i64, i64* @val, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %47 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %51 = call i32 @gettoken(%struct.snmp_toolinfo* %50)
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %32

56:                                               ; preds = %41
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 41
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %62, align 8
  %64 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.snmp_oid2str* %63)
  store i32 -1, i32* %4, align 4
  br label %92

65:                                               ; preds = %56
  %66 = load i32, i32* @ENTRY_DATA, align 4
  %67 = call i32 @snmp_import_update_table(i32 %66, i32* null)
  %68 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %69 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %71 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %72 = call i32 @snmp_leaf_insert(%struct.snmp_toolinfo* %70, %struct.snmp_oid2str* %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %76 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %75, i32 0, i32 1
  %77 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %76, align 8
  %78 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.snmp_oid2str* %77)
  store i32 -1, i32* %4, align 4
  br label %92

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %84 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %83, i32 0, i32 1
  %85 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %84, align 8
  %86 = call i32 @free(%struct.snmp_oid2str* %85)
  %87 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %88 = call i32 @free(%struct.snmp_oid2str* %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* @ENTRY_NONE, align 4
  %91 = call i32 @snmp_import_update_table(i32 %90, i32* null)
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %74, %60, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @parse_type(%struct.snmp_toolinfo*, i32*, i32*, i32*) #1

declare dso_local i32 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*, %struct.snmp_oid2str*) #1

declare dso_local i32 @snmp_import_update_table(i32, i32*) #1

declare dso_local i32 @snmp_leaf_insert(%struct.snmp_toolinfo*, %struct.snmp_oid2str*) #1

declare dso_local i32 @free(%struct.snmp_oid2str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
