; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_bisect_clean_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_bisect_clean_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/bisect\00", align 1
@mark_for_removal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"BISECT_HEAD\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bisect: remove\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bisect_clean_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.string_list, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.string_list* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %4 = load i32, i32* @mark_for_removal, align 4
  %5 = bitcast %struct.string_list* %2 to i8*
  %6 = call i32 @for_each_ref_in(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4, i8* %5)
  %7 = call i32 @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @string_list_append(%struct.string_list* %2, i32 %7)
  %9 = load i32, i32* @REF_NO_DEREF, align 4
  %10 = call i32 @delete_refs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.string_list* %2, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i32 @string_list_clear(%struct.string_list* %2, i32 0)
  %13 = call i32 (...) @git_path_bisect_expected_rev()
  %14 = call i32 @unlink_or_warn(i32 %13)
  %15 = call i32 (...) @git_path_bisect_ancestors_ok()
  %16 = call i32 @unlink_or_warn(i32 %15)
  %17 = call i32 (...) @git_path_bisect_log()
  %18 = call i32 @unlink_or_warn(i32 %17)
  %19 = call i32 (...) @git_path_bisect_names()
  %20 = call i32 @unlink_or_warn(i32 %19)
  %21 = call i32 (...) @git_path_bisect_run()
  %22 = call i32 @unlink_or_warn(i32 %21)
  %23 = call i32 (...) @git_path_bisect_terms()
  %24 = call i32 @unlink_or_warn(i32 %23)
  %25 = call i32 (...) @git_path_head_name()
  %26 = call i32 @unlink_or_warn(i32 %25)
  %27 = call i32 (...) @git_path_bisect_start()
  %28 = call i32 @unlink_or_warn(i32 %27)
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @for_each_ref_in(i8*, i32, i8*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @delete_refs(i8*, %struct.string_list*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @git_path_bisect_expected_rev(...) #2

declare dso_local i32 @git_path_bisect_ancestors_ok(...) #2

declare dso_local i32 @git_path_bisect_log(...) #2

declare dso_local i32 @git_path_bisect_names(...) #2

declare dso_local i32 @git_path_bisect_run(...) #2

declare dso_local i32 @git_path_bisect_terms(...) #2

declare dso_local i32 @git_path_head_name(...) #2

declare dso_local i32 @git_path_bisect_start(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
