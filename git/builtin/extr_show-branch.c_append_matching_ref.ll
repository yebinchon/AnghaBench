; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_append_matching_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_append_matching_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@match_ref_slash = common dso_local global i32 0, align 4
@match_ref_pattern = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @append_matching_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_matching_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @count_slashes(i8* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %35, %4
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @match_ref_slash, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %26
  br label %15

36:                                               ; preds = %24
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %71

41:                                               ; preds = %36
  %42 = load i32, i32* @match_ref_pattern, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @wildmatch(i32 %42, i8* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %71

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @starts_with(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.object_id*, %struct.object_id** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @append_head_ref(i8* %52, %struct.object_id* %53, i32 %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %71

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @starts_with(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.object_id*, %struct.object_id** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @append_tag_ref(i8* %62, %struct.object_id* %63, i32 %64, i8* %65)
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.object_id*, %struct.object_id** %7, align 8
  %70 = call i32 @append_ref(i8* %68, %struct.object_id* %69, i32 0)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %61, %51, %46, %40
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @count_slashes(i8*) #1

declare dso_local i64 @wildmatch(i32, i8*, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @append_head_ref(i8*, %struct.object_id*, i32, i8*) #1

declare dso_local i32 @append_tag_ref(i8*, %struct.object_id*, i32, i8*) #1

declare dso_local i32 @append_ref(i8*, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
