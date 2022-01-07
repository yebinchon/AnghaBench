; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_append_edit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_append_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32 }
%struct.object_id = type { i32 }
%struct.note_data = type { %struct.TYPE_3__, i64, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
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
@.str.11 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@git_notes_edit_usage = common dso_local global i8** null, align 8
@git_notes_append_usage = common dso_local global i8** null, align 8
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"too many parameters\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [124 x i8] c"The -m/-F/-c/-C options have been deprecated for the 'edit' subcommand.\0APlease use 'git notes add -f -m/-F/-c/-C' instead.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to resolve '%s' as a valid ref.\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"combine_notes_overwrite failed\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Notes added by 'git notes %s'\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Removing note for object %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Notes removed by 'git notes %s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @append_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_edit(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.notes_tree*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.note_data, align 8
  %16 = alloca [6 x %struct.option], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 3
  %26 = load i32, i32* @STRBUF_INIT, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %16, i64 0, i64 0
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  %33 = load i32, i32* @OPTION_CALLBACK, align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %32, align 16
  %35 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 1
  store i8* inttoptr (i64 109 to i8*), i8** %35, align 8
  %36 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 2
  store i32 ptrtoint ([8 x i8]* @.str to i32), i32* %36, align 16
  %37 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 3
  %38 = ptrtoint %struct.note_data* %15 to i32
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 4
  %40 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 5
  %42 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 6
  %44 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.note_data*
  store %struct.note_data* %46, %struct.note_data** %43, align 16
  %47 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 7
  %48 = load i32, i32* @parse_msg_arg, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 0
  %51 = load i32, i32* @OPTION_CALLBACK, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %50, align 16
  %53 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 1
  store i8* inttoptr (i64 70 to i8*), i8** %53, align 8
  %54 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 2
  store i32 ptrtoint ([5 x i8]* @.str.2 to i32), i32* %54, align 16
  %55 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 3
  %56 = ptrtoint %struct.note_data* %15 to i32
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 4
  %58 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 5
  %60 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 6
  %62 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.note_data*
  store %struct.note_data* %64, %struct.note_data** %61, align 16
  %65 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 7
  %66 = load i32, i32* @parse_file_arg, align 4
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.option, %struct.option* %49, i64 1
  %68 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 0
  %69 = load i32, i32* @OPTION_CALLBACK, align 4
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %68, align 16
  %71 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 1
  store i8* inttoptr (i64 99 to i8*), i8** %71, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 2
  store i32 ptrtoint ([15 x i8]* @.str.4 to i32), i32* %72, align 16
  %73 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 3
  %74 = ptrtoint %struct.note_data* %15 to i32
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 4
  %76 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 5
  %78 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 6
  %80 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.note_data*
  store %struct.note_data* %82, %struct.note_data** %79, align 16
  %83 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 7
  %84 = load i32, i32* @parse_reedit_arg, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.option, %struct.option* %67, i64 1
  %86 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 0
  %87 = load i32, i32* @OPTION_CALLBACK, align 4
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %86, align 16
  %89 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 1
  store i8* inttoptr (i64 67 to i8*), i8** %89, align 8
  %90 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 2
  store i32 ptrtoint ([14 x i8]* @.str.7 to i32), i32* %90, align 16
  %91 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 3
  %92 = ptrtoint %struct.note_data* %15 to i32
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 4
  %94 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %94, i32* %93, align 8
  %95 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 5
  %96 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 %96, i32* %95, align 4
  %97 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 6
  %98 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.note_data*
  store %struct.note_data* %100, %struct.note_data** %97, align 16
  %101 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 7
  %102 = load i32, i32* @parse_reuse_arg, align 4
  store i32 %102, i32* %101, align 8
  %103 = getelementptr inbounds %struct.option, %struct.option* %85, i64 1
  %104 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %103, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %7, i32 %104)
  %105 = getelementptr inbounds %struct.option, %struct.option* %103, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %105)
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %3
  %116 = load i8**, i8*** @git_notes_edit_usage, align 8
  br label %119

117:                                              ; preds = %3
  %118 = load i8**, i8*** @git_notes_append_usage, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i8** [ %116, %115 ], [ %118, %117 ]
  store i8** %120, i8*** %14, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %16, i64 0, i64 0
  %125 = load i8**, i8*** %14, align 8
  %126 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %127 = call i32 @parse_options(i32 %121, i8** %122, i8* %123, %struct.option* %124, i8** %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 2, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %132 = call i32 @error(i8* %131)
  %133 = load i8**, i8*** %14, align 8
  %134 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %16, i64 0, i64 0
  %135 = call i32 @usage_with_options(i8** %133, %struct.option* %134)
  br label %136

136:                                              ; preds = %130, %119
  %137 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @stderr, align 4
  %145 = call i8* @_(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.13, i64 0, i64 0))
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %143, %140, %136
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 1, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8*, i8** %152, align 8
  br label %155

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i8* [ %153, %150 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %154 ]
  store i8* %156, i8** %8, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i64 @get_oid(i8* %157, %struct.object_id* %10)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @die(i8* %161, i8* %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %169 = call %struct.notes_tree* @init_notes_check(i8* %167, i32 %168)
  store %struct.notes_tree* %169, %struct.notes_tree** %9, align 8
  %170 = load %struct.notes_tree*, %struct.notes_tree** %9, align 8
  %171 = call %struct.object_id* @get_note(%struct.notes_tree* %170, %struct.object_id* %10)
  store %struct.object_id* %171, %struct.object_id** %12, align 8
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load %struct.object_id*, %struct.object_id** %12, align 8
  %176 = icmp ne %struct.object_id* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load %struct.object_id*, %struct.object_id** %12, align 8
  br label %180

179:                                              ; preds = %174, %164
  br label %180

180:                                              ; preds = %179, %177
  %181 = phi %struct.object_id* [ %178, %177 ], [ null, %179 ]
  %182 = call i32 @prepare_note_data(%struct.object_id* %10, %struct.note_data* %15, %struct.object_id* %181)
  %183 = load %struct.object_id*, %struct.object_id** %12, align 8
  %184 = icmp ne %struct.object_id* %183, null
  br i1 %184, label %185, label %222

185:                                              ; preds = %180
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %222, label %188

188:                                              ; preds = %185
  %189 = load %struct.object_id*, %struct.object_id** %12, align 8
  %190 = call i8* @read_object_file(%struct.object_id* %189, i32* %19, i64* %18)
  store i8* %190, i8** %20, align 8
  %191 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %192 = load i64, i64* %18, align 8
  %193 = add i64 %192, 1
  %194 = call i32 @strbuf_grow(%struct.TYPE_3__* %191, i64 %193)
  %195 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %188
  %200 = load i8*, i8** %20, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i64, i64* %18, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %207 = call i32 @strbuf_insert(%struct.TYPE_3__* %206, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1)
  br label %208

208:                                              ; preds = %205, %202, %199, %188
  %209 = load i8*, i8** %20, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i64, i64* %18, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %216 = load i8*, i8** %20, align 8
  %217 = load i64, i64* %18, align 8
  %218 = call i32 @strbuf_insert(%struct.TYPE_3__* %215, i32 0, i8* %216, i64 %217)
  br label %219

219:                                              ; preds = %214, %211, %208
  %220 = load i8*, i8** %20, align 8
  %221 = call i32 @free(i8* %220)
  br label %222

222:                                              ; preds = %219, %185, %180
  %223 = getelementptr inbounds %struct.note_data, %struct.note_data* %15, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227, %222
  %231 = call i32 @write_note_data(%struct.note_data* %15, %struct.object_id* %11)
  %232 = load %struct.notes_tree*, %struct.notes_tree** %9, align 8
  %233 = load i32, i32* @combine_notes_overwrite, align 4
  %234 = call i64 @add_note(%struct.notes_tree* %232, %struct.object_id* %10, %struct.object_id* %11, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %230
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i8* @xstrfmt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %241)
  store i8* %242, i8** %13, align 8
  br label %256

243:                                              ; preds = %227
  %244 = load i32, i32* @stderr, align 4
  %245 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %246 = call i8* @oid_to_hex(%struct.object_id* %10)
  %247 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* %245, i8* %246)
  %248 = load %struct.notes_tree*, %struct.notes_tree** %9, align 8
  %249 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @remove_note(%struct.notes_tree* %248, i32 %250)
  %252 = load i8**, i8*** %5, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i8* @xstrfmt(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* %254)
  store i8* %255, i8** %13, align 8
  br label %256

256:                                              ; preds = %243, %238
  %257 = load i32, i32* @the_repository, align 4
  %258 = load %struct.notes_tree*, %struct.notes_tree** %9, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = call i32 @commit_notes(i32 %257, %struct.notes_tree* %258, i8* %259)
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @free(i8* %261)
  %263 = call i32 @free_note_data(%struct.note_data* %15)
  %264 = load %struct.notes_tree*, %struct.notes_tree** %9, align 8
  %265 = call i32 @free_notes(%struct.notes_tree* %264)
  ret i32 0
}

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #1

declare dso_local %struct.object_id* @get_note(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i32 @prepare_note_data(%struct.object_id*, %struct.note_data*, %struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @strbuf_grow(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @strbuf_insert(%struct.TYPE_3__*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @write_note_data(%struct.note_data*, %struct.object_id*) #1

declare dso_local i64 @add_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @remove_note(%struct.notes_tree*, i32) #1

declare dso_local i32 @commit_notes(i32, %struct.notes_tree*, i8*) #1

declare dso_local i32 @free_note_data(%struct.note_data*) #1

declare dso_local i32 @free_notes(%struct.notes_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
