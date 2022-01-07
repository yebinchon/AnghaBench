; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_save_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_save_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"keep-index\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"keep index\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stash in patch mode\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"quiet mode\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"include-untracked\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"include untracked files in stash\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"include ignore files\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"stash message\00", align 1
@git_stash_save_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @save_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pathspec, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca [7 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %15, i64 0, i64 0
  %18 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @OPT_BOOL(i8 zeroext 107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @OPT_BOOL(i8 zeroext 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @OPT__QUIET(i32* %10, i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %31 = call i32 @OPT_BOOL(i8 zeroext 117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @OPT_SET_INT(i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %9, i32 %34, i32 2)
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %38 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 @OPT_STRING(i8 signext 109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %42 = call i32 (...) @OPT_END()
  %43 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %15, i64 0, i64 0
  %48 = load i32, i32* @git_stash_save_usage, align 4
  %49 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %50 = call i32 @parse_options(i32 %44, i8** %45, i8* %46, %struct.option* %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i8* @strbuf_join_argv(%struct.strbuf* %14, i32 %54, i8** %55, i8 signext 32)
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %53, %3
  %58 = call i32 @memset(%struct.pathspec* %13, i32 0, i32 4)
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @do_push_stash(%struct.pathspec* %13, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = call i32 @strbuf_release(%struct.strbuf* %14)
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 zeroext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT__QUIET(i32*, i32) #2

declare dso_local i32 @OPT_SET_INT(i8 signext, i8*, i32*, i32, i32) #2

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i8*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i8* @strbuf_join_argv(%struct.strbuf*, i32, i8**, i8 signext) #2

declare dso_local i32 @memset(%struct.pathspec*, i32, i32) #2

declare dso_local i32 @do_push_stash(%struct.pathspec*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
