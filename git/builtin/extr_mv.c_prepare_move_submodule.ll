; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mv.c_prepare_move_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mv.c_prepare_move_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@active_cache = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Directory %s is in index and no submodule?\00", align 1
@the_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Please stage your changes to .gitmodules or stash them to proceed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@SUBMODULE_WITH_GITDIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**)* @prepare_move_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_move_submodule(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @active_cache, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @S_ISGITLINK(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i32, ...) @die(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = call i32 @is_staging_gitmodules_ok(i32* @the_index)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (i32, ...) @die(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @read_gitfile(i32 %32)
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @xstrdup(i8* %40)
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %46

43:                                               ; preds = %28
  %44 = load i8*, i8** @SUBMODULE_WITH_GITDIR, align 8
  %45 = load i8**, i8*** %6, align 8
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @S_ISGITLINK(i32) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @is_staging_gitmodules_ok(i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @read_gitfile(i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
