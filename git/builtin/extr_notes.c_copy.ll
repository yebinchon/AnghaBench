; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_copy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.notes_tree = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"replace existing notes\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"read objects from stdin\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"for-rewrite\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"load rewriting config for <command> (implies --stdin)\00", align 1
@git_notes_copy_usage = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"too many parameters\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"too few parameters\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to resolve '%s' as a valid ref.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [92 x i8] c"Cannot copy notes. Found existing notes for object %s. Use '-f' to overwrite existing notes\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Overwriting existing notes for object %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"missing notes on source object %s. Cannot copy.\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"combine_notes_overwrite failed\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Notes added by 'git notes copy'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.object_id, align 4
  %16 = alloca %struct.notes_tree*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %17, align 8
  %19 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %18, i64 0, i64 0
  %20 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %22 = call i32 @OPT__FORCE(i32* %9, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %17, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %18, i64 0, i64 0
  %40 = load i32, i32* @git_notes_copy_usage, align 4
  %41 = call i32 @parse_options(i32 %36, i8** %37, i8* %38, %struct.option* %39, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i8*, i8** %17, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44, %3
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @error(i8* %51)
  %53 = load i32, i32* @git_notes_copy_usage, align 4
  %54 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %18, i64 0, i64 0
  %55 = call i32 @usage_with_options(i32 %53, %struct.option* %54)
  br label %60

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @notes_copy_from_stdin(i32 %57, i8* %58)
  store i32 %59, i32* %4, align 4
  br label %152

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @error(i8* %65)
  %67 = load i32, i32* @git_notes_copy_usage, align 4
  %68 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %18, i64 0, i64 0
  %69 = call i32 @usage_with_options(i32 %67, %struct.option* %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 2, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @error(i8* %74)
  %76 = load i32, i32* @git_notes_copy_usage, align 4
  %77 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %18, i64 0, i64 0
  %78 = call i32 @usage_with_options(i32 %76, %struct.option* %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i8**, i8*** %6, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @get_oid(i8* %82, %struct.object_id* %15)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @die(i8* %86, i8* %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 1, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8**, i8*** %6, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i8* [ %97, %94 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %98 ]
  store i8* %100, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i64 @get_oid(i8* %101, %struct.object_id* %14)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @die(i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %110 = call %struct.notes_tree* @init_notes_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  store %struct.notes_tree* %110, %struct.notes_tree** %16, align 8
  %111 = load %struct.notes_tree*, %struct.notes_tree** %16, align 8
  %112 = call %struct.object_id* @get_note(%struct.notes_tree* %111, %struct.object_id* %14)
  store %struct.object_id* %112, %struct.object_id** %12, align 8
  %113 = load %struct.object_id*, %struct.object_id** %12, align 8
  %114 = icmp ne %struct.object_id* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = call i8* @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0))
  %120 = call i8* @oid_to_hex(%struct.object_id* %14)
  %121 = call i32 (i8*, ...) @error(i8* %119, i8* %120)
  store i32 %121, i32* %8, align 4
  br label %148

122:                                              ; preds = %115
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %125 = call i8* @oid_to_hex(%struct.object_id* %14)
  %126 = call i32 @fprintf(i32 %123, i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %122, %108
  %128 = load %struct.notes_tree*, %struct.notes_tree** %16, align 8
  %129 = call %struct.object_id* @get_note(%struct.notes_tree* %128, %struct.object_id* %15)
  store %struct.object_id* %129, %struct.object_id** %11, align 8
  %130 = load %struct.object_id*, %struct.object_id** %11, align 8
  %131 = icmp ne %struct.object_id* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %134 = call i8* @oid_to_hex(%struct.object_id* %15)
  %135 = call i32 (i8*, ...) @error(i8* %133, i8* %134)
  store i32 %135, i32* %8, align 4
  br label %148

136:                                              ; preds = %127
  %137 = load %struct.notes_tree*, %struct.notes_tree** %16, align 8
  %138 = load %struct.object_id*, %struct.object_id** %11, align 8
  %139 = load i32, i32* @combine_notes_overwrite, align 4
  %140 = call i64 @add_note(%struct.notes_tree* %137, %struct.object_id* %14, %struct.object_id* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %136
  %145 = load i32, i32* @the_repository, align 4
  %146 = load %struct.notes_tree*, %struct.notes_tree** %16, align 8
  %147 = call i32 @commit_notes(i32 %145, %struct.notes_tree* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %132, %118
  %149 = load %struct.notes_tree*, %struct.notes_tree** %16, align 8
  %150 = call i32 @free_notes(%struct.notes_tree* %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %56
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @OPT__FORCE(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @notes_copy_from_stdin(i32, i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #1

declare dso_local %struct.object_id* @get_note(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @add_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #1

declare dso_local i32 @free_notes(%struct.notes_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
