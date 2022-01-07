; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_find.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32 }
%struct.cache_tree_sub = type { %struct.cache_tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_tree* (%struct.cache_tree*, i8*)* @cache_tree_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_tree* @cache_tree_find(%struct.cache_tree* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_tree*, align 8
  %4 = alloca %struct.cache_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cache_tree_sub*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %9 = icmp ne %struct.cache_tree* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.cache_tree* null, %struct.cache_tree** %3, align 8
  br label %47

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strchrnul(i8* %17, i8 signext 47)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %19, i8* %20, i32 %26, i32 0)
  store %struct.cache_tree_sub* %27, %struct.cache_tree_sub** %7, align 8
  %28 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %29 = icmp ne %struct.cache_tree_sub* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  store %struct.cache_tree* null, %struct.cache_tree** %3, align 8
  br label %47

31:                                               ; preds = %16
  %32 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %33 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %32, i32 0, i32 0
  %34 = load %struct.cache_tree*, %struct.cache_tree** %33, align 8
  store %struct.cache_tree* %34, %struct.cache_tree** %4, align 8
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %41, %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  br label %36

44:                                               ; preds = %36
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  store %struct.cache_tree* %46, %struct.cache_tree** %3, align 8
  br label %47

47:                                               ; preds = %45, %30, %10
  %48 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  ret %struct.cache_tree* %48
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local %struct.cache_tree_sub* @find_subtree(%struct.cache_tree*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
