; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_fill.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_stack = type { i8*, i32, i32, %struct.match_attr**, %struct.attr_stack* }
%struct.match_attr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.all_attrs_item = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.attr_stack*, %struct.all_attrs_item*, i32)* @fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill(i8* %0, i32 %1, i32 %2, %struct.attr_stack* %3, %struct.all_attrs_item* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.attr_stack*, align 8
  %11 = alloca %struct.all_attrs_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.match_attr*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.attr_stack* %3, %struct.attr_stack** %10, align 8
  store %struct.all_attrs_item* %4, %struct.all_attrs_item** %11, align 8
  store i32 %5, i32* %12, align 4
  br label %16

16:                                               ; preds = %84, %6
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %21 = icmp ne %struct.attr_stack* %20, null
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %88

24:                                               ; preds = %22
  %25 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %26 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %31 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %33 ]
  store i8* %35, i8** %14, align 8
  %36 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %37 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %80, %34
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp sle i32 0, %44
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %50 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %49, i32 0, i32 3
  %51 = load %struct.match_attr**, %struct.match_attr*** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.match_attr*, %struct.match_attr** %51, i64 %53
  %55 = load %struct.match_attr*, %struct.match_attr** %54, align 8
  store %struct.match_attr* %55, %struct.match_attr** %15, align 8
  %56 = load %struct.match_attr*, %struct.match_attr** %15, align 8
  %57 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %80

61:                                               ; preds = %48
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.match_attr*, %struct.match_attr** %15, align 8
  %66 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %70 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @path_matches(i8* %62, i32 %63, i32 %64, i32* %67, i8* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load %struct.all_attrs_item*, %struct.all_attrs_item** %11, align 8
  %76 = load %struct.match_attr*, %struct.match_attr** %15, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @fill_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.all_attrs_item* %75, %struct.match_attr* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %61
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %13, align 4
  br label %40

83:                                               ; preds = %46
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.attr_stack*, %struct.attr_stack** %10, align 8
  %86 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %85, i32 0, i32 4
  %87 = load %struct.attr_stack*, %struct.attr_stack** %86, align 8
  store %struct.attr_stack* %87, %struct.attr_stack** %10, align 8
  br label %16

88:                                               ; preds = %22
  %89 = load i32, i32* %12, align 4
  ret i32 %89
}

declare dso_local i64 @path_matches(i8*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @fill_one(i8*, %struct.all_attrs_item*, %struct.match_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
