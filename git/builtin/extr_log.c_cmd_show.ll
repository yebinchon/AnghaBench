; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_show.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i8*, %struct.object* }
%struct.object = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.setup_revision_opt = type { i8*, i32 }
%struct.pathspec = type { i8*, i32 }
%struct.tag = type { i8* }
%struct.object_id = type { i32 }
%struct.tree = type { i32 }

@git_log_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@REVISION_WALK_NO_WALK_SORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@show_setup_revisions_tweak = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%stag %s%s\0A\00", align 1
@DIFF_COMMIT = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not read object %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%stree %s%s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@show_tree_object = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"unknown type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_show(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info, align 8
  %9 = alloca %struct.object_array_entry*, align 8
  %10 = alloca %struct.setup_revision_opt, align 8
  %11 = alloca %struct.pathspec, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.object*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.tag*, align 8
  %18 = alloca %struct.object_id*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %14, align 4
  %19 = call i32 (...) @init_log_defaults()
  %20 = load i32, i32* @git_log_config, align 4
  %21 = call i32 @git_config(i32 %20, i32* null)
  %22 = bitcast %struct.pathspec* %11 to %struct.setup_revision_opt*
  %23 = call i32 @memset(%struct.setup_revision_opt* %22, i32 0, i32 16)
  %24 = load i32, i32* @the_repository, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @repo_init_revisions(i32 %24, %struct.rev_info* %8, i8* %25)
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @REVISION_WALK_NO_WALK_SORTED, align 4
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = call i32 @memset(%struct.setup_revision_opt* %10, i32 0, i32 16)
  %34 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @show_setup_revisions_tweak, align 4
  %36 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @cmd_log_init(i32 %37, i8** %38, i8* %39, %struct.rev_info* %8, %struct.setup_revision_opt* %10)
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %3
  %45 = call i32 @cmd_log_walk(%struct.rev_info* %8)
  store i32 %45, i32* %4, align 4
  br label %189

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.object_array_entry*, %struct.object_array_entry** %51, align 8
  store %struct.object_array_entry* %52, %struct.object_array_entry** %9, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %182, %46
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %185

63:                                               ; preds = %61
  %64 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %64, i64 %66
  %68 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %67, i32 0, i32 1
  %69 = load %struct.object*, %struct.object** %68, align 8
  store %struct.object* %69, %struct.object** %15, align 8
  %70 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %16, align 8
  %76 = load %struct.object*, %struct.object** %15, align 8
  %77 = getelementptr inbounds %struct.object, %struct.object* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %175 [
    i32 131, label %79
    i32 129, label %84
    i32 128, label %135
    i32 130, label %163
  ]

79:                                               ; preds = %63
  %80 = load %struct.object*, %struct.object** %15, align 8
  %81 = getelementptr inbounds %struct.object, %struct.object* %80, i32 0, i32 1
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @show_blob_object(i32* %81, %struct.rev_info* %8, i8* %82)
  store i32 %83, i32* %14, align 4
  br label %181

84:                                               ; preds = %63
  %85 = load %struct.object*, %struct.object** %15, align 8
  %86 = bitcast %struct.object* %85 to %struct.tag*
  store %struct.tag* %86, %struct.tag** %17, align 8
  %87 = load %struct.tag*, %struct.tag** %17, align 8
  %88 = call %struct.object_id* @get_tagged_oid(%struct.tag* %87)
  store %struct.object_id* %88, %struct.object_id** %18, align 8
  %89 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = call i32 @putchar(i8 signext 10)
  br label %94

94:                                               ; preds = %92, %84
  %95 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %99 = load i32, i32* @DIFF_COMMIT, align 4
  %100 = call i8* @diff_get_color_opt(%struct.TYPE_3__* %98, i32 %99)
  %101 = load %struct.tag*, %struct.tag** %17, align 8
  %102 = getelementptr inbounds %struct.tag, %struct.tag* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %105 = load i32, i32* @DIFF_RESET, align 4
  %106 = call i8* @diff_get_color_opt(%struct.TYPE_3__* %104, i32 %105)
  %107 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %100, i8* %103, i8* %106)
  %108 = load %struct.object*, %struct.object** %15, align 8
  %109 = getelementptr inbounds %struct.object, %struct.object* %108, i32 0, i32 1
  %110 = call i32 @show_tag_object(i32* %109, %struct.rev_info* %8)
  store i32 %110, i32* %14, align 4
  %111 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %94
  br label %181

115:                                              ; preds = %94
  %116 = load i32, i32* @the_repository, align 4
  %117 = load %struct.object_id*, %struct.object_id** %18, align 8
  %118 = call %struct.object* @parse_object(i32 %116, %struct.object_id* %117)
  store %struct.object* %118, %struct.object** %15, align 8
  %119 = load %struct.object*, %struct.object** %15, align 8
  %120 = icmp ne %struct.object* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.object_id*, %struct.object_id** %18, align 8
  %124 = call i32 @oid_to_hex(%struct.object_id* %123)
  %125 = call i32 @error(i32 %122, i32 %124)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %121, %115
  %127 = load %struct.object*, %struct.object** %15, align 8
  %128 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %128, i64 %130
  %132 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %131, i32 0, i32 1
  store %struct.object* %127, %struct.object** %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  br label %181

135:                                              ; preds = %63
  %136 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @putchar(i8 signext 10)
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %146 = load i32, i32* @DIFF_COMMIT, align 4
  %147 = call i8* @diff_get_color_opt(%struct.TYPE_3__* %145, i32 %146)
  %148 = load i8*, i8** %16, align 8
  %149 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %150 = load i32, i32* @DIFF_RESET, align 4
  %151 = call i8* @diff_get_color_opt(%struct.TYPE_3__* %149, i32 %150)
  %152 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %147, i8* %148, i8* %151)
  %153 = load i32, i32* @the_repository, align 4
  %154 = load %struct.object*, %struct.object** %15, align 8
  %155 = bitcast %struct.object* %154 to %struct.tree*
  %156 = bitcast %struct.pathspec* %11 to %struct.setup_revision_opt*
  %157 = load i32, i32* @show_tree_object, align 4
  %158 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @read_tree_recursive(i32 %153, %struct.tree* %155, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, %struct.setup_revision_opt* %156, i32 %157, i32 %160)
  %162 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  store i32 1, i32* %162, align 8
  br label %181

163:                                              ; preds = %63
  %164 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  store %struct.object_array_entry* null, %struct.object_array_entry** %169, align 8
  %170 = load %struct.object*, %struct.object** %15, align 8
  %171 = load i8*, i8** %16, align 8
  %172 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %173 = call i32 @add_object_array(%struct.object* %170, i8* %171, %struct.TYPE_4__* %172)
  %174 = call i32 @cmd_log_walk(%struct.rev_info* %8)
  store i32 %174, i32* %14, align 4
  br label %181

175:                                              ; preds = %63
  %176 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.object*, %struct.object** %15, align 8
  %178 = getelementptr inbounds %struct.object, %struct.object* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @error(i32 %176, i32 %179)
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %175, %163, %141, %126, %114, %79
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %53

185:                                              ; preds = %61
  %186 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %187 = call i32 @free(%struct.object_array_entry* %186)
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %185, %44
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @init_log_defaults(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @cmd_log_init(i32, i8**, i8*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @cmd_log_walk(%struct.rev_info*) #1

declare dso_local i32 @show_blob_object(i32*, %struct.rev_info*, i8*) #1

declare dso_local %struct.object_id* @get_tagged_oid(%struct.tag*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @diff_get_color_opt(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @show_tag_object(i32*, %struct.rev_info*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @read_tree_recursive(i32, %struct.tree*, i8*, i32, i32, %struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @add_object_array(%struct.object*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @free(%struct.object_array_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
