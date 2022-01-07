; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_remove_junk.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_remove_junk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@is_junk = common dso_local global i32 0, align 4
@junk_pid = common dso_local global i64 0, align 8
@junk_git_dir = common dso_local global i64 0, align 8
@junk_work_tree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_junk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_junk() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @is_junk, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i64 (...) @getpid()
  %7 = load i64, i64* @junk_pid, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %0
  br label %27

10:                                               ; preds = %5
  %11 = load i64, i64* @junk_git_dir, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i64, i64* @junk_git_dir, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %14)
  %16 = call i32 @remove_dir_recursively(%struct.strbuf* %1, i32 0)
  %17 = call i32 @strbuf_reset(%struct.strbuf* %1)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i64, i64* @junk_work_tree, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* @junk_work_tree, align 8
  %23 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %22)
  %24 = call i32 @remove_dir_recursively(%struct.strbuf* %1, i32 0)
  br label %25

25:                                               ; preds = %21, %18
  %26 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %27

27:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getpid(...) #2

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
