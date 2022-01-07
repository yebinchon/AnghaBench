; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_remote_submodule_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_remote_submodule_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule = type { i8*, i8* }

@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submodule.%s.branch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"No such ref: %s\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"Submodule (%s) branch configured to inherit branch from superproject, but the superproject is not on any branch\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Expecting a full ref name, got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @remote_submodule_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @remote_submodule_branch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* @the_repository, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.submodule* @submodule_from_path(i32 %8, i32* @null_oid, i8* %9)
  store %struct.submodule* %10, %struct.submodule** %4, align 8
  %11 = load %struct.submodule*, %struct.submodule** %4, align 8
  %12 = icmp ne %struct.submodule* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.submodule*, %struct.submodule** %4, align 8
  %16 = getelementptr inbounds %struct.submodule, %struct.submodule* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @xstrfmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* @the_repository, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @repo_config_get_string_const(i32 %19, i8* %20, i8** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.submodule*, %struct.submodule** %4, align 8
  %25 = getelementptr inbounds %struct.submodule, %struct.submodule* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %66

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  %38 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @die(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = call i32 @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.submodule*, %struct.submodule** %4, align 8
  %51 = getelementptr inbounds %struct.submodule, %struct.submodule* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @die(i32 %49, i8* %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @skip_prefix(i8* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @die(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %2, align 8
  br label %66

64:                                               ; preds = %33
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %64, %62, %32, %13
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i64 @repo_config_get_string_const(i32, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
