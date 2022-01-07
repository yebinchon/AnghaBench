; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_add.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32 }
%struct.object_id = type { i32 }
%struct.note_data = type { %struct.TYPE_2__, i64, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.option = type { i8, i8*, i32, i32, i32, i32, %struct.note_data*, i32 }

@STRBUF_INIT = common dso_local global i32 0, align 4
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"note contents as a string\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@parse_msg_arg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"note contents in a file\00", align 1
@parse_file_arg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"reedit-message\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"reuse and edit specified note object\00", align 1
@parse_reedit_arg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"reuse-message\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"reuse specified note object\00", align 1
@parse_reuse_arg = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"allow-empty\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"allow storing empty note\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"replace existing notes\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@git_notes_add_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"too many parameters\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"failed to resolve '%s' as a valid ref.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [91 x i8] c"Cannot add notes. Found existing notes for object %s. Use '-f' to overwrite existing notes\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"Overwriting existing notes for object %s\0A\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"combine_notes_overwrite failed\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"Notes added by 'git notes add'\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Removing note for object %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Notes removed by 'git notes add'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.notes_tree*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca %struct.note_data, align 8
  %16 = alloca [7 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 3
  %22 = load i32, i32* @STRBUF_INIT, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 4
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 5
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %16, i64 0, i64 0
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i32, i32* @OPTION_CALLBACK, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %28, align 16
  %31 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 1
  store i8* inttoptr (i64 109 to i8*), i8** %31, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 2
  store i32 ptrtoint ([8 x i8]* @.str to i32), i32* %32, align 16
  %33 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 3
  %34 = ptrtoint %struct.note_data* %15 to i32
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 4
  %36 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 5
  %38 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 6
  %40 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.note_data*
  store %struct.note_data* %42, %struct.note_data** %39, align 16
  %43 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 7
  %44 = load i32, i32* @parse_msg_arg, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 0
  %47 = load i32, i32* @OPTION_CALLBACK, align 4
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %46, align 16
  %49 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 1
  store i8* inttoptr (i64 70 to i8*), i8** %49, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 2
  store i32 ptrtoint ([5 x i8]* @.str.2 to i32), i32* %50, align 16
  %51 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 3
  %52 = ptrtoint %struct.note_data* %15 to i32
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 4
  %54 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 5
  %56 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 6
  %58 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.note_data*
  store %struct.note_data* %60, %struct.note_data** %57, align 16
  %61 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 7
  %62 = load i32, i32* @parse_file_arg, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.option, %struct.option* %45, i64 1
  %64 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 0
  %65 = load i32, i32* @OPTION_CALLBACK, align 4
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %64, align 16
  %67 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 1
  store i8* inttoptr (i64 99 to i8*), i8** %67, align 8
  %68 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 2
  store i32 ptrtoint ([15 x i8]* @.str.4 to i32), i32* %68, align 16
  %69 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 3
  %70 = ptrtoint %struct.note_data* %15 to i32
  store i32 %70, i32* %69, align 4
  %71 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 4
  %72 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 5
  %74 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 6
  %76 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.note_data*
  store %struct.note_data* %78, %struct.note_data** %75, align 16
  %79 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 7
  %80 = load i32, i32* @parse_reedit_arg, align 4
  store i32 %80, i32* %79, align 8
  %81 = getelementptr inbounds %struct.option, %struct.option* %63, i64 1
  %82 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 0
  %83 = load i32, i32* @OPTION_CALLBACK, align 4
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %82, align 16
  %85 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 1
  store i8* inttoptr (i64 67 to i8*), i8** %85, align 8
  %86 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 2
  store i32 ptrtoint ([14 x i8]* @.str.7 to i32), i32* %86, align 16
  %87 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 3
  %88 = ptrtoint %struct.note_data* %15 to i32
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 4
  %90 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %90, i32* %89, align 8
  %91 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 5
  %92 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 6
  %94 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct.note_data*
  store %struct.note_data* %96, %struct.note_data** %93, align 16
  %97 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 7
  %98 = load i32, i32* @parse_reuse_arg, align 4
  store i32 %98, i32* %97, align 8
  %99 = getelementptr inbounds %struct.option, %struct.option* %81, i64 1
  %100 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %99, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %9, i32 %100)
  %101 = getelementptr inbounds %struct.option, %struct.option* %99, i64 1
  %102 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %103 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  call void @OPT__FORCE(%struct.option* sret %101, i32* %8, i32 %102, i32 %103)
  %104 = getelementptr inbounds %struct.option, %struct.option* %101, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %104)
  %105 = load i32, i32* %5, align 4
  %106 = load i8**, i8*** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %16, i64 0, i64 0
  %109 = load i32, i32* @git_notes_add_usage, align 4
  %110 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %111 = call i32 @parse_options(i32 %105, i8** %106, i8* %107, %struct.option* %108, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 2, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %3
  %115 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @error(i8* %115)
  %117 = load i32, i32* @git_notes_add_usage, align 4
  %118 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %16, i64 0, i64 0
  %119 = call i32 @usage_with_options(i32 %117, %struct.option* %118)
  br label %120

120:                                              ; preds = %114, %3
  %121 = load i32, i32* %5, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8**, i8*** %6, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  br label %128

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i8* [ %126, %123 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %127 ]
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i64 @get_oid(i8* %130, %struct.object_id* %12)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @die(i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %139 = call %struct.notes_tree* @init_notes_check(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %138)
  store %struct.notes_tree* %139, %struct.notes_tree** %11, align 8
  %140 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %141 = call %struct.object_id* @get_note(%struct.notes_tree* %140, %struct.object_id* %12)
  store %struct.object_id* %141, %struct.object_id** %14, align 8
  %142 = load %struct.object_id*, %struct.object_id** %14, align 8
  %143 = icmp ne %struct.object_id* %142, null
  br i1 %143, label %144, label %170

144:                                              ; preds = %137
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %144
  %148 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %149 = call i32 @free_notes(%struct.notes_tree* %148)
  %150 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = call i32 @free_note_data(%struct.note_data* %15)
  %155 = call i8* @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.16, i64 0, i64 0))
  %156 = call i8* @oid_to_hex(%struct.object_id* %12)
  %157 = call i32 (i8*, ...) @error(i8* %155, i8* %156)
  store i32 %157, i32* %4, align 4
  br label %208

158:                                              ; preds = %147
  %159 = load i8**, i8*** %6, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %160, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i8**, i8*** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @append_edit(i32 %161, i8** %162, i8* %163)
  store i32 %164, i32* %4, align 4
  br label %208

165:                                              ; preds = %144
  %166 = load i32, i32* @stderr, align 4
  %167 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %168 = call i8* @oid_to_hex(%struct.object_id* %12)
  %169 = call i32 @fprintf(i32 %166, i8* %167, i8* %168)
  br label %170

170:                                              ; preds = %165, %137
  %171 = load %struct.object_id*, %struct.object_id** %14, align 8
  %172 = call i32 @prepare_note_data(%struct.object_id* %12, %struct.note_data* %15, %struct.object_id* %171)
  %173 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177, %170
  %181 = call i32 @write_note_data(%struct.note_data* %15, %struct.object_id* %13)
  %182 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %183 = load i32, i32* @combine_notes_overwrite, align 4
  %184 = call i64 @add_note(%struct.notes_tree* %182, %struct.object_id* %12, %struct.object_id* %13, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %180
  %189 = load i32, i32* @the_repository, align 4
  %190 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %191 = call i32 @commit_notes(i32 %189, %struct.notes_tree* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %204

192:                                              ; preds = %177
  %193 = load i32, i32* @stderr, align 4
  %194 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %195 = call i8* @oid_to_hex(%struct.object_id* %12)
  %196 = call i32 @fprintf(i32 %193, i8* %194, i8* %195)
  %197 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %198 = getelementptr inbounds %struct.object_id, %struct.object_id* %12, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @remove_note(%struct.notes_tree* %197, i32 %199)
  %201 = load i32, i32* @the_repository, align 4
  %202 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %203 = call i32 @commit_notes(i32 %201, %struct.notes_tree* %202, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  br label %204

204:                                              ; preds = %192, %188
  %205 = call i32 @free_note_data(%struct.note_data* %15)
  %206 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %207 = call i32 @free_notes(%struct.notes_tree* %206)
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %204, %158, %153
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #1

declare dso_local void @OPT__FORCE(%struct.option* sret, i32*, i32, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #1

declare dso_local %struct.object_id* @get_note(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i32 @free_notes(%struct.notes_tree*) #1

declare dso_local i32 @free_note_data(%struct.note_data*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @append_edit(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @prepare_note_data(%struct.object_id*, %struct.note_data*, %struct.object_id*) #1

declare dso_local i32 @write_note_data(%struct.note_data*, %struct.object_id*) #1

declare dso_local i64 @add_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #1

declare dso_local i32 @remove_note(%struct.notes_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
