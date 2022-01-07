; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mktree.c_append_to_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mktree.c_append_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treeent = type { i32, i64, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"path %s contains slash\00", align 1
@name = common dso_local global i32 0, align 4
@entries = common dso_local global %struct.treeent** null, align 8
@used = common dso_local global i64 0, align 8
@alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.object_id*, i8*)* @append_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_to_tree(i32 %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.treeent*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strchr(i8* %11, i8 signext 47)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.treeent*, %struct.treeent** %7, align 8
  %19 = load i32, i32* @name, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @FLEX_ALLOC_MEM(%struct.treeent* %18, i32 %19, i8* %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.treeent*, %struct.treeent** %7, align 8
  %25 = getelementptr inbounds %struct.treeent, %struct.treeent* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.treeent*, %struct.treeent** %7, align 8
  %28 = getelementptr inbounds %struct.treeent, %struct.treeent* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.treeent*, %struct.treeent** %7, align 8
  %30 = getelementptr inbounds %struct.treeent, %struct.treeent* %29, i32 0, i32 2
  %31 = load %struct.object_id*, %struct.object_id** %5, align 8
  %32 = call i32 @oidcpy(i32* %30, %struct.object_id* %31)
  %33 = load %struct.treeent**, %struct.treeent*** @entries, align 8
  %34 = load i64, i64* @used, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* @alloc, align 4
  %37 = call i32 @ALLOC_GROW(%struct.treeent** %33, i64 %35, i32 %36)
  %38 = load %struct.treeent*, %struct.treeent** %7, align 8
  %39 = load %struct.treeent**, %struct.treeent*** @entries, align 8
  %40 = load i64, i64* @used, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @used, align 8
  %42 = getelementptr inbounds %struct.treeent*, %struct.treeent** %39, i64 %40
  store %struct.treeent* %38, %struct.treeent** %42, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.treeent*, i32, i8*, i64) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.treeent**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
