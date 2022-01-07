; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_append_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_append_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@ref_name_cnt = common dso_local global i32 0, align 4
@ref_name = common dso_local global i32** null, align 8
@MAX_REVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ignoring %s; cannot handle more than %d ref\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ignoring %s; cannot handle more than %d refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32)* @append_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_ref(i8* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @the_repository, align 4
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call %struct.commit* @lookup_commit_reference_gently(i32 %10, %struct.object_id* %11, i32 1)
  store %struct.commit* %12, %struct.commit** %8, align 8
  %13 = load %struct.commit*, %struct.commit** %8, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ref_name_cnt, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32**, i32*** @ref_name, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @strcmp(i8* %25, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %61

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %20

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* @MAX_REVS, align 4
  %41 = load i32, i32* @ref_name_cnt, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @MAX_REVS, align 4
  %45 = call i32 @Q_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @MAX_REVS, align 4
  %48 = call i32 @warning(i32 %45, i8* %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %61

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  %51 = call i32* @xstrdup(i8* %50)
  %52 = load i32**, i32*** @ref_name, align 8
  %53 = load i32, i32* @ref_name_cnt, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @ref_name_cnt, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  store i32* %51, i32** %56, align 8
  %57 = load i32**, i32*** @ref_name, align 8
  %58 = load i32, i32* @ref_name_cnt, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* null, i32** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %49, %43, %33, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
