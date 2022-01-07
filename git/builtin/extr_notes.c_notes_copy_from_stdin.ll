; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_notes_copy_from_stdin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_notes_copy_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.notes_tree = type { i32 }
%struct.notes_rewrite_cfg = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"Notes added by 'git notes copy'\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"malformed input line: '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to resolve '%s' as a valid ref.\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to copy notes from '%s' to '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @notes_copy_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notes_copy_from_stdin(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.notes_rewrite_cfg*, align 8
  %8 = alloca %struct.notes_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.strbuf**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store %struct.notes_rewrite_cfg* null, %struct.notes_rewrite_cfg** %7, align 8
  store %struct.notes_tree* null, %struct.notes_tree** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.notes_rewrite_cfg* @init_copy_notes_for_rewrite(i8* %19)
  store %struct.notes_rewrite_cfg* %20, %struct.notes_rewrite_cfg** %7, align 8
  %21 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %7, align 8
  %22 = icmp ne %struct.notes_rewrite_cfg* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %138

24:                                               ; preds = %18
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %27 = call i32 @init_notes(i32* null, i32* null, i32* null, i32 %26)
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %8, align 8
  br label %28

28:                                               ; preds = %25, %24
  br label %29

29:                                               ; preds = %117, %28
  %30 = load i32, i32* @stdin, align 4
  %31 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32 %30)
  %32 = load i64, i64* @EOF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %120

34:                                               ; preds = %29
  %35 = call %struct.strbuf** @strbuf_split(%struct.strbuf* %6, i8 signext 32)
  store %struct.strbuf** %35, %struct.strbuf*** %13, align 8
  %36 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %37 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %36, i64 0
  %38 = load %struct.strbuf*, %struct.strbuf** %37, align 8
  %39 = icmp ne %struct.strbuf* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %42 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %41, i64 1
  %43 = load %struct.strbuf*, %struct.strbuf** %42, align 8
  %44 = icmp ne %struct.strbuf* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40, %34
  %46 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @die(i32 %46, i8* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %52 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %51, i64 0
  %53 = load %struct.strbuf*, %struct.strbuf** %52, align 8
  %54 = call i32 @strbuf_rtrim(%struct.strbuf* %53)
  %55 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %56 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %55, i64 1
  %57 = load %struct.strbuf*, %struct.strbuf** %56, align 8
  %58 = call i32 @strbuf_rtrim(%struct.strbuf* %57)
  %59 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %60 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %59, i64 0
  %61 = load %struct.strbuf*, %struct.strbuf** %60, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @get_oid(i8* %63, %struct.object_id* %11)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %50
  %67 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %69 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %68, i64 0
  %70 = load %struct.strbuf*, %struct.strbuf** %69, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @die(i32 %67, i8* %72)
  br label %74

74:                                               ; preds = %66, %50
  %75 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %76 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %75, i64 1
  %77 = load %struct.strbuf*, %struct.strbuf** %76, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @get_oid(i8* %79, %struct.object_id* %12)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %85 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %84, i64 1
  %86 = load %struct.strbuf*, %struct.strbuf** %85, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @die(i32 %83, i8* %88)
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i8*, i8** %5, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %7, align 8
  %95 = call i32 @copy_note_for_rewrite(%struct.notes_rewrite_cfg* %94, %struct.object_id* %11, %struct.object_id* %12)
  store i32 %95, i32* %14, align 4
  br label %101

96:                                               ; preds = %90
  %97 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @combine_notes_overwrite, align 4
  %100 = call i32 @copy_note(%struct.notes_tree* %97, %struct.object_id* %11, %struct.object_id* %12, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %107 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %106, i64 0
  %108 = load %struct.strbuf*, %struct.strbuf** %107, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %112 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %111, i64 1
  %113 = load %struct.strbuf*, %struct.strbuf** %112, align 8
  %114 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @error(i32 %105, i8* %110, i8* %115)
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %104, %101
  %118 = load %struct.strbuf**, %struct.strbuf*** %13, align 8
  %119 = call i32 @strbuf_list_free(%struct.strbuf** %118)
  br label %29

120:                                              ; preds = %29
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @the_repository, align 4
  %125 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @commit_notes(i32 %124, %struct.notes_tree* %125, i8* %126)
  %128 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %129 = call i32 @free_notes(%struct.notes_tree* %128)
  br label %135

130:                                              ; preds = %120
  %131 = load i32, i32* @the_repository, align 4
  %132 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %7, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @finish_copy_notes_for_rewrite(i32 %131, %struct.notes_rewrite_cfg* %132, i8* %133)
  br label %135

135:                                              ; preds = %130, %123
  %136 = call i32 @strbuf_release(%struct.strbuf* %6)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %23
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.notes_rewrite_cfg* @init_copy_notes_for_rewrite(i8*) #2

declare dso_local i32 @init_notes(i32*, i32*, i32*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local %struct.strbuf** @strbuf_split(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @copy_note_for_rewrite(%struct.notes_rewrite_cfg*, %struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @copy_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32, i32) #2

declare dso_local i32 @error(i32, i8*, i8*) #2

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #2

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #2

declare dso_local i32 @free_notes(%struct.notes_tree*) #2

declare dso_local i32 @finish_copy_notes_for_rewrite(i32, %struct.notes_rewrite_cfg*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
