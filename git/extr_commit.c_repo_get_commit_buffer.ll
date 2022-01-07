; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_repo_get_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_repo_get_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"cannot read commit object %s\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expected commit for %s, got %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @repo_get_commit_buffer(%struct.repository* %0, %struct.commit* %1, i64* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = load %struct.commit*, %struct.commit** %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = call i8* @get_cached_commit_buffer(%struct.repository* %10, %struct.commit* %11, i64* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %3
  %17 = load %struct.repository*, %struct.repository** %4, align 8
  %18 = load %struct.commit*, %struct.commit** %5, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i8* @repo_read_object_file(%struct.repository* %17, i32* %20, i32* %8, i64* %9)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.commit*, %struct.commit** %5, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @oid_to_hex(i32* %27)
  %29 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @OBJ_COMMIT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.commit*, %struct.commit** %5, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @oid_to_hex(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @type_name(i32 %39)
  %41 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i64*, i64** %6, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local i8* @get_cached_commit_buffer(%struct.repository*, %struct.commit*, i64*) #1

declare dso_local i8* @repo_read_object_file(%struct.repository*, i32*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
