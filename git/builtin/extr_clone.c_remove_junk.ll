; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_remove_junk.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_remove_junk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@junk_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@junk_leave_repo_msg = common dso_local global i32 0, align 4
@junk_git_dir = common dso_local global i64 0, align 8
@junk_git_dir_flags = common dso_local global i32 0, align 4
@junk_work_tree = common dso_local global i64 0, align 8
@junk_work_tree_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_junk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_junk() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @junk_mode, align 4
  switch i32 %3, label %9 [
    i32 128, label %4
    i32 129, label %8
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @junk_leave_repo_msg, align 4
  %6 = call i32 @_(i32 %5)
  %7 = call i32 @warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %0, %4
  br label %29

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9
  %11 = load i64, i64* @junk_git_dir, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, i64* @junk_git_dir, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %14)
  %16 = load i32, i32* @junk_git_dir_flags, align 4
  %17 = call i32 @remove_dir_recursively(%struct.strbuf* %1, i32 %16)
  %18 = call i32 @strbuf_reset(%struct.strbuf* %1)
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i64, i64* @junk_work_tree, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* @junk_work_tree, align 8
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %23)
  %25 = load i32, i32* @junk_work_tree_flags, align 4
  %26 = call i32 @remove_dir_recursively(%struct.strbuf* %1, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %29

29:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @warning(i8*, i32) #2

declare dso_local i32 @_(i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #2

declare dso_local i32 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
