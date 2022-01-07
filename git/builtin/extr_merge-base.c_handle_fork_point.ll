; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_fork_point.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_fork_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No such ref: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Ambiguous refname: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Not a valid object name: '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @handle_fork_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_fork_point(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @dwim_ref(i8* %13, i32 %17, %struct.object_id* %6, i8** %7)
  switch i32 %18, label %25 [
    i32 0, label %19
    i32 1, label %24
  ]

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %2, %19
  br label %30

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %37 ]
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @get_oid(i8* %40, %struct.object_id* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @the_repository, align 4
  %48 = call %struct.commit* @lookup_commit_reference(i32 %47, %struct.object_id* %6)
  store %struct.commit* %48, %struct.commit** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.commit*, %struct.commit** %8, align 8
  %51 = call %struct.commit* @get_fork_point(i8* %49, %struct.commit* %50)
  store %struct.commit* %51, %struct.commit** %9, align 8
  %52 = load %struct.commit*, %struct.commit** %9, align 8
  %53 = icmp ne %struct.commit* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.commit*, %struct.commit** %9, align 8
  %57 = getelementptr inbounds %struct.commit, %struct.commit* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i8* @oid_to_hex(i32* %58)
  %60 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %54
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local %struct.commit* @get_fork_point(i8*, %struct.commit*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
