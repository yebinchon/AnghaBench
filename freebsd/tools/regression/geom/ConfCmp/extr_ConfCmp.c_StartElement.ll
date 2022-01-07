; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_StartElement.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_StartElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mytree = type { i32, i32, %struct.node* }
%struct.node = type { i32, %struct.node*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@siblings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @StartElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartElement(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mytree*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mytree*
  store %struct.mytree* %11, %struct.mytree** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.mytree*, %struct.mytree** %7, align 8
  %17 = getelementptr inbounds %struct.mytree, %struct.mytree* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %103

18:                                               ; preds = %3
  %19 = load %struct.mytree*, %struct.mytree** %7, align 8
  %20 = getelementptr inbounds %struct.mytree, %struct.mytree* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.mytree*, %struct.mytree** %7, align 8
  %22 = getelementptr inbounds %struct.mytree, %struct.mytree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %22, align 4
  %25 = call %struct.node* (...) @new_node()
  store %struct.node* %25, %struct.node** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %71, %18
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %26
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strdup(i8* %47)
  %49 = load %struct.node*, %struct.node** %8, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  br label %70

51:                                               ; preds = %33
  %52 = load i8**, i8*** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strdup(i8* %65)
  %67 = load %struct.node*, %struct.node** %8, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %59, %51
  br label %70

70:                                               ; preds = %69, %41
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @strdup(i8* %75)
  %77 = load %struct.node*, %struct.node** %8, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.node*, %struct.node** %8, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @sbuf_cat(i32 %81, i8* %82)
  %84 = load %struct.node*, %struct.node** %8, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sbuf_cat(i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.mytree*, %struct.mytree** %7, align 8
  %89 = getelementptr inbounds %struct.mytree, %struct.mytree* %88, i32 0, i32 2
  %90 = load %struct.node*, %struct.node** %89, align 8
  %91 = load %struct.node*, %struct.node** %8, align 8
  %92 = getelementptr inbounds %struct.node, %struct.node* %91, i32 0, i32 1
  store %struct.node* %90, %struct.node** %92, align 8
  %93 = load %struct.mytree*, %struct.mytree** %7, align 8
  %94 = getelementptr inbounds %struct.mytree, %struct.mytree* %93, i32 0, i32 2
  %95 = load %struct.node*, %struct.node** %94, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 0
  %97 = load %struct.node*, %struct.node** %8, align 8
  %98 = load i32, i32* @siblings, align 4
  %99 = call i32 @LIST_INSERT_HEAD(i32* %96, %struct.node* %97, i32 %98)
  %100 = load %struct.node*, %struct.node** %8, align 8
  %101 = load %struct.mytree*, %struct.mytree** %7, align 8
  %102 = getelementptr inbounds %struct.mytree, %struct.mytree* %101, i32 0, i32 2
  store %struct.node* %100, %struct.node** %102, align 8
  br label %103

103:                                              ; preds = %74, %15
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.node* @new_node(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sbuf_cat(i32, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
