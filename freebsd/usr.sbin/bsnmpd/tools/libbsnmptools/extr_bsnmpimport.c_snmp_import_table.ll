; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snmp_toolinfo = type { i32 }
%struct.snmp_oid2str = type { i32, i32, %struct.snmp_index_entry* }
%struct.snmp_index_entry = type { %struct.snmp_index_entry*, i32, i32, i32 }
%struct.enum_pairs = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SNMP_INDEXES_MAX = common dso_local global i32 0, align 4
@TOK_TYPE = common dso_local global i32 0, align 4
@TOK_DEFTYPE = common dso_local global i32 0, align 4
@TOK_ENUM = common dso_local global i32 0, align 4
@TOK_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Bad number of indexes at line %d\00", align 1
@input = common dso_local global %struct.TYPE_2__* null, align 8
@TOK_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"String expected after indexes at line %d\00", align 1
@ENTRY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.snmp_oid2str*)* @snmp_import_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_import_table(%struct.snmp_toolinfo* %0, %struct.snmp_oid2str* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca %struct.snmp_oid2str*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snmp_index_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.enum_pairs*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store %struct.snmp_oid2str* %1, %struct.snmp_oid2str** %5, align 8
  %12 = call %struct.snmp_index_entry* @calloc(i32 1, i32 24)
  store %struct.snmp_index_entry* %12, %struct.snmp_index_entry** %9, align 8
  %13 = icmp eq %struct.snmp_index_entry* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @syslog(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %21 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %20, i32 0, i32 1
  %22 = call i32 @STAILQ_INIT(i32* %21)
  store i32 0, i32* %6, align 4
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %24 = call i32 @gettoken(%struct.snmp_toolinfo* %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %75, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SNMP_INDEXES_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %25
  store %struct.enum_pairs* null, %struct.enum_pairs** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TOK_TYPE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TOK_DEFTYPE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TOK_ENUM, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TOK_BITS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %78

46:                                               ; preds = %41, %37, %33, %29
  %47 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %48 = call i32 @parse_type(%struct.snmp_toolinfo* %47, i32* %7, i32* %8, %struct.enum_pairs** %11)
  store i32 %48, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.enum_pairs*, %struct.enum_pairs** %11, align 8
  %52 = call i32 @enum_pairs_free(%struct.enum_pairs* %51)
  %53 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %54 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %53, i32 0, i32 1
  %55 = call i32 @snmp_index_listfree(i32* %54)
  %56 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %57 = call i32 @free(%struct.snmp_index_entry* %56)
  store i32 -1, i32* %3, align 4
  br label %150

58:                                               ; preds = %46
  %59 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %60 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %59, i32 0, i32 1
  %61 = load %struct.enum_pairs*, %struct.enum_pairs** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @snmp_syntax_insert(i32* %60, %struct.enum_pairs* %61, i32 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %68 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %67, i32 0, i32 1
  %69 = call i32 @snmp_index_listfree(i32* %68)
  %70 = load %struct.enum_pairs*, %struct.enum_pairs** %11, align 8
  %71 = call i32 @enum_pairs_free(%struct.enum_pairs* %70)
  %72 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %73 = call i32 @free(%struct.snmp_index_entry* %72)
  store i32 -1, i32* %3, align 4
  br label %150

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %25

78:                                               ; preds = %45, %25
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @SNMP_INDEXES_MAX, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81, %78
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %91 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %90, i32 0, i32 1
  %92 = call i32 @snmp_index_listfree(i32* %91)
  %93 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %94 = call i32 @free(%struct.snmp_index_entry* %93)
  store i32 -1, i32* %3, align 4
  br label %150

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @TOK_STR, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %105 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %104, i32 0, i32 1
  %106 = call i32 @snmp_index_listfree(i32* %105)
  %107 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %108 = call i32 @free(%struct.snmp_index_entry* %107)
  store i32 -1, i32* %3, align 4
  br label %150

109:                                              ; preds = %95
  %110 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %111 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %110, i32 0, i32 2
  %112 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %111, align 8
  %113 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %114 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %113, i32 0, i32 0
  store %struct.snmp_index_entry* %112, %struct.snmp_index_entry** %114, align 8
  %115 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %116 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %119 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %121 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %120, i32 0, i32 2
  %122 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %5, align 8
  %123 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %122, i32 0, i32 0
  %124 = call i32 @asn_append_oid(i32* %121, i32* %123)
  %125 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %126 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %127 = call i32 @snmp_table_insert(%struct.snmp_toolinfo* %125, %struct.snmp_index_entry* %126)
  store i32 %127, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %109
  %130 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %131 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %130, i32 0, i32 1
  %132 = call i32 @snmp_index_listfree(i32* %131)
  %133 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %134 = call i32 @free(%struct.snmp_index_entry* %133)
  store i32 -1, i32* %3, align 4
  br label %150

135:                                              ; preds = %109
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %140 = getelementptr inbounds %struct.snmp_index_entry, %struct.snmp_index_entry* %139, i32 0, i32 0
  %141 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %140, align 8
  %142 = call i32 @free(%struct.snmp_index_entry* %141)
  %143 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %144 = call i32 @free(%struct.snmp_index_entry* %143)
  store i32 0, i32* %3, align 4
  br label %150

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* @ENTRY_INDEX, align 4
  %148 = load %struct.snmp_index_entry*, %struct.snmp_index_entry** %9, align 8
  %149 = call i32 @snmp_import_update_table(i32 %147, %struct.snmp_index_entry* %148)
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %138, %129, %99, %85, %66, %50, %14
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.snmp_index_entry* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_type(%struct.snmp_toolinfo*, i32*, i32*, %struct.enum_pairs**) #1

declare dso_local i32 @enum_pairs_free(%struct.enum_pairs*) #1

declare dso_local i32 @snmp_index_listfree(i32*) #1

declare dso_local i32 @free(%struct.snmp_index_entry*) #1

declare dso_local i64 @snmp_syntax_insert(i32*, %struct.enum_pairs*, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @asn_append_oid(i32*, i32*) #1

declare dso_local i32 @snmp_table_insert(%struct.snmp_toolinfo*, %struct.snmp_index_entry*) #1

declare dso_local i32 @snmp_import_update_table(i32, %struct.snmp_index_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
