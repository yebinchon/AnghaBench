; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_calc_maxwidth.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_calc_maxwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array = type { i32, %struct.ref_array_item** }
%struct.ref_array_item = type { i8*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@FILTER_REFS_DETACHED_HEAD = common dso_local global i64 0, align 8
@FILTER_REFS_REMOTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_array*, i32)* @calc_maxwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_maxwidth(%struct.ref_array* %0, i32 %1) #0 {
  %3 = alloca %struct.ref_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_array_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ref_array* %0, %struct.ref_array** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ref_array*, %struct.ref_array** %3, align 8
  %14 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load %struct.ref_array*, %struct.ref_array** %3, align 8
  %19 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %18, i32 0, i32 1
  %20 = load %struct.ref_array_item**, %struct.ref_array_item*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %20, i64 %22
  %24 = load %struct.ref_array_item*, %struct.ref_array_item** %23, align 8
  store %struct.ref_array_item* %24, %struct.ref_array_item** %7, align 8
  %25 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %26 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %29 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @skip_prefix(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %8)
  %32 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %33 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @skip_prefix(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %36 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %37 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FILTER_REFS_DETACHED_HEAD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %17
  %42 = call i8* (...) @get_head_description()
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @utf8_strwidth(i8* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  br label %50

47:                                               ; preds = %17
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @utf8_strwidth(i8* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %52 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FILTER_REFS_REMOTES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @get_head_description(...) #1

declare dso_local i32 @utf8_strwidth(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
