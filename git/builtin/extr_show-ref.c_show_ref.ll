; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-ref.c_show_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-ref.c_show_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@show_head = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@tags_only = common dso_local global i64 0, align 8
@heads_only = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@pattern = common dso_local global i8** null, align 8
@found_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @show_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* @show_head, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %106

22:                                               ; preds = %17, %4
  %23 = load i64, i64* @tags_only, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @heads_only, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25, %22
  %29 = load i64, i64* @heads_only, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @starts_with(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* @tags_only, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @starts_with(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ false, %35 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %112

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i8**, i8*** @pattern, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %105

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i8**, i8*** @pattern, align 8
  store i8** %59, i8*** %12, align 8
  br label %60

60:                                               ; preds = %103, %85, %71, %56
  %61 = load i8**, i8*** %12, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %12, align 8
  %63 = load i8*, i8** %61, align 8
  store i8* %63, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %60

72:                                               ; preds = %65
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @memcmp(i8* %73, i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %60

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %106

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 47
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %106

103:                                              ; preds = %91
  br label %60

104:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %112

105:                                              ; preds = %53
  br label %106

106:                                              ; preds = %105, %102, %90, %21
  %107 = load i32, i32* @found_match, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @found_match, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.object_id*, %struct.object_id** %7, align 8
  %111 = call i32 @show_one(i8* %109, %struct.object_id* %110)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %104, %51
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @show_one(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
