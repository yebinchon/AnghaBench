; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_branch_merged.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_branch_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.branch = type { i32 }
%struct.object_id = type { i32 }

@FILTER_REFS_BRANCHES = common dso_local global i32 0, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"deleting branch '%s' that has been merged to\0A         '%s', but not yet merged to HEAD.\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"not deleting branch '%s' that is not yet merged to\0A         '%s', even though it is merged to HEAD.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.commit*, %struct.commit*)* @branch_merged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_merged(i32 %0, i8* %1, %struct.commit* %2, %struct.commit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.branch*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.object_id, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.commit* %2, %struct.commit** %7, align 8
  store %struct.commit* %3, %struct.commit** %8, align 8
  store %struct.commit* null, %struct.commit** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.branch* @branch_get(i8* %20)
  store %struct.branch* %21, %struct.branch** %13, align 8
  %22 = load %struct.branch*, %struct.branch** %13, align 8
  %23 = call i8* @branch_get_upstream(%struct.branch* %22, i32* null)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* @RESOLVE_REF_READING, align 4
  %29 = call i8* @resolve_refdup(i8* %27, i32 %28, %struct.object_id* %15, i32* null)
  store i8* %29, i8** %11, align 8
  store i8* %29, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @the_repository, align 4
  %33 = call %struct.commit* @lookup_commit_reference(i32 %32, %struct.object_id* %15)
  store %struct.commit* %33, %struct.commit** %9, align 8
  br label %34

34:                                               ; preds = %31, %26, %19
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.commit*, %struct.commit** %9, align 8
  %37 = icmp ne %struct.commit* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load %struct.commit*, %struct.commit** %8, align 8
  store %struct.commit* %39, %struct.commit** %9, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.commit*, %struct.commit** %7, align 8
  %42 = load %struct.commit*, %struct.commit** %9, align 8
  %43 = call i32 @in_merge_bases(%struct.commit* %41, %struct.commit* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.commit*, %struct.commit** %8, align 8
  %45 = load %struct.commit*, %struct.commit** %9, align 8
  %46 = icmp ne %struct.commit* %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.commit*, %struct.commit** %7, align 8
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = call i32 @in_merge_bases(%struct.commit* %48, %struct.commit* %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @warning(i32 %57, i8* %58, i8* %59)
  br label %66

61:                                               ; preds = %53
  %62 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @warning(i32 %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %47, %40
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local %struct.branch* @branch_get(i8*) #1

declare dso_local i8* @branch_get_upstream(%struct.branch*, i32*) #1

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @warning(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
