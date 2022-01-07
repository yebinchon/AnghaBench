; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_get_revision_ranges.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_get_revision_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"no HEAD?\00", align 1
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s...%s\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s..%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit*, i8**, i8**, i8**)* @get_revision_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_revision_ranges(%struct.commit* %0, %struct.commit* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.commit*, %struct.commit** %7, align 8
  %17 = icmp ne %struct.commit* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load %struct.commit*, %struct.commit** %7, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load %struct.commit*, %struct.commit** %8, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi %struct.commit* [ %19, %18 ], [ %21, %20 ]
  store %struct.commit* %23, %struct.commit** %12, align 8
  %24 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %14)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @error(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %60

29:                                               ; preds = %22
  %30 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %31 = call i8* @find_unique_abbrev(%struct.object_id* %14, i32 %30)
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = load %struct.commit*, %struct.commit** %12, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i8* @oid_to_hex(%struct.object_id* %35)
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %38)
  %40 = load i8**, i8*** %10, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @DEFAULT_ABBREV, align 4
  %42 = call i8* @find_unique_abbrev(%struct.object_id* %14, i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = load %struct.commit*, %struct.commit** %7, align 8
  %44 = icmp ne %struct.commit* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load %struct.commit*, %struct.commit** %12, align 8
  %47 = getelementptr inbounds %struct.commit, %struct.commit* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @DEFAULT_ABBREV, align 4
  %50 = call i8* @find_unique_abbrev(%struct.object_id* %48, i32 %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i8* @xstrfmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load i8**, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  br label %59

55:                                               ; preds = %29
  %56 = load i8*, i8** %13, align 8
  %57 = call i8* @xstrdup(i8* %56)
  %58 = load i8**, i8*** %11, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %45
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
