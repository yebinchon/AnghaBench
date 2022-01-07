; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_validate_new_branchname.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_validate_new_branchname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"A branch named '%s' already exists.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot force update the current branch.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_new_branchname(i8* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %11 = call i32 @validate_branchname(i8* %9, %struct.strbuf* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = add nsw i64 %21, %22
  %24 = call i32 (i32, ...) @die(i32 %18, i64 %23)
  br label %25

25:                                               ; preds = %17, %14
  %26 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i8* %26, i8** %8, align 8
  %27 = call i32 (...) @is_bare_repository()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @strcmp(i8* %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (i32, ...) @die(i32 %40)
  br label %42

42:                                               ; preds = %39, %32, %29, %25
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @validate_branchname(i8*, %struct.strbuf*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @is_bare_repository(...) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
