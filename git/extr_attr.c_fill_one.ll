; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_fill_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_fill_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.all_attrs_item = type { i8* }
%struct.match_attr = type { i32, %struct.TYPE_8__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, %struct.git_attr* }
%struct.git_attr = type { i64 }

@ATTR__UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.all_attrs_item*, %struct.match_attr*, i32)* @fill_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_one(i8* %0, %struct.all_attrs_item* %1, %struct.match_attr* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.all_attrs_item*, align 8
  %7 = alloca %struct.match_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.git_attr*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.all_attrs_item* %1, %struct.all_attrs_item** %6, align 8
  store %struct.match_attr* %2, %struct.match_attr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %14 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %87, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %90

25:                                               ; preds = %23
  %26 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %27 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.git_attr*, %struct.git_attr** %32, align 8
  store %struct.git_attr* %33, %struct.git_attr** %10, align 8
  %34 = load %struct.all_attrs_item*, %struct.all_attrs_item** %6, align 8
  %35 = load %struct.git_attr*, %struct.git_attr** %10, align 8
  %36 = getelementptr inbounds %struct.git_attr, %struct.git_attr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %34, i64 %37
  %39 = getelementptr inbounds %struct.all_attrs_item, %struct.all_attrs_item* %38, i32 0, i32 0
  store i8** %39, i8*** %11, align 8
  %40 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %41 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %12, align 8
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @ATTR__UNKNOWN, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %25
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %55 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %60 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  br label %71

65:                                               ; preds = %52
  %66 = load %struct.match_attr*, %struct.match_attr** %7, align 8
  %67 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = phi i32 [ %64, %58 ], [ %70, %65 ]
  %73 = load %struct.git_attr*, %struct.git_attr** %10, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @debug_set(i8* %53, i32 %72, %struct.git_attr* %73, i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i8**, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  %80 = load %struct.all_attrs_item*, %struct.all_attrs_item** %6, align 8
  %81 = load %struct.git_attr*, %struct.git_attr** %10, align 8
  %82 = getelementptr inbounds %struct.git_attr, %struct.git_attr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @macroexpand_one(%struct.all_attrs_item* %80, i64 %83, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %71, %25
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %17

90:                                               ; preds = %23
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @debug_set(i8*, i32, %struct.git_attr*, i8*) #1

declare dso_local i32 @macroexpand_one(%struct.all_attrs_item*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
