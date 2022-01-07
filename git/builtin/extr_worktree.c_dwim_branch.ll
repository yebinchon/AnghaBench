; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_dwim_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_dwim_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@guess_remote = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @dwim_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwim_branch(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @worktree_basename(i8* %12, i32* %6)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @xstrndup(i8* %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @UNLEAK(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strbuf_check_branch_ref(%struct.strbuf* %9, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ref_exists(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @strbuf_release(%struct.strbuf* %9)
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %3, align 8
  br label %42

31:                                               ; preds = %23, %2
  %32 = load i8*, i8** %8, align 8
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i64, i64* @guess_remote, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @unique_tracking_name(i8* %38, %struct.object_id* %10, i32* null)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  store i8* %40, i8** %3, align 8
  br label %42

41:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %36, %28
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i8* @worktree_basename(i8*, i32*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @UNLEAK(i8*) #1

declare dso_local i32 @strbuf_check_branch_ref(%struct.strbuf*, i8*) #1

declare dso_local i64 @ref_exists(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i8* @unique_tracking_name(i8*, %struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
