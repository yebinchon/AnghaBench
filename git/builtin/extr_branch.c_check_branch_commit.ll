; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_check_branch_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_check_branch_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Couldn't look up commit object for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"The branch '%s' is not fully merged.\0AIf you are sure you want to delete it, run 'git branch -D %s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.object_id*, %struct.commit*, i32, i32)* @check_branch_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_branch_commit(i8* %0, i8* %1, %struct.object_id* %2, %struct.commit* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.commit*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store %struct.commit* %3, %struct.commit** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @the_repository, align 4
  %16 = load %struct.object_id*, %struct.object_id** %10, align 8
  %17 = call %struct.commit* @lookup_commit_reference(i32 %15, %struct.object_id* %16)
  store %struct.commit* %17, %struct.commit** %14, align 8
  %18 = load %struct.commit*, %struct.commit** %14, align 8
  %19 = icmp ne %struct.commit* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 (i32, i8*, ...) @error(i32 %21, i8* %22)
  store i32 -1, i32* %7, align 4
  br label %40

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.commit*, %struct.commit** %14, align 8
  %31 = load %struct.commit*, %struct.commit** %11, align 8
  %32 = call i32 @branch_merged(i32 %28, i8* %29, %struct.commit* %30, %struct.commit* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i32, i8*, ...) @error(i32 %35, i8* %36, i8* %37)
  store i32 -1, i32* %7, align 4
  br label %40

39:                                               ; preds = %27, %24
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %34, %20
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @branch_merged(i32, i8*, %struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
