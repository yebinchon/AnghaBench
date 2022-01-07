; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_handle_signed_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_handle_signed_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_extra_header = type { i8*, i64, %struct.commit_extra_header*, i32 }
%struct.merge_remote_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OBJ_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mergetag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_extra_header***)* @handle_signed_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signed_tag(%struct.commit* %0, %struct.commit_extra_header*** %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_extra_header***, align 8
  %5 = alloca %struct.merge_remote_desc*, align 8
  %6 = alloca %struct.commit_extra_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit_extra_header*** %1, %struct.commit_extra_header**** %4, align 8
  %11 = load %struct.commit*, %struct.commit** %3, align 8
  %12 = call %struct.merge_remote_desc* @merge_remote_util(%struct.commit* %11)
  store %struct.merge_remote_desc* %12, %struct.merge_remote_desc** %5, align 8
  %13 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %5, align 8
  %14 = icmp ne %struct.merge_remote_desc* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %5, align 8
  %17 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %62

21:                                               ; preds = %15
  %22 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %5, align 8
  %23 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i8* @read_object_file(i32* %25, i32* %10, i64* %8)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @OBJ_TAG, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %21
  br label %59

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @parse_signature(i8* %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %59

42:                                               ; preds = %34
  %43 = call %struct.commit_extra_header* @xcalloc(i32 1, i32 32)
  store %struct.commit_extra_header* %43, %struct.commit_extra_header** %6, align 8
  %44 = call i32 @xstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %46 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %49 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %52 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %54 = load %struct.commit_extra_header***, %struct.commit_extra_header**** %4, align 8
  %55 = load %struct.commit_extra_header**, %struct.commit_extra_header*** %54, align 8
  store %struct.commit_extra_header* %53, %struct.commit_extra_header** %55, align 8
  %56 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %57 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %56, i32 0, i32 2
  %58 = load %struct.commit_extra_header***, %struct.commit_extra_header**** %4, align 8
  store %struct.commit_extra_header** %57, %struct.commit_extra_header*** %58, align 8
  br label %62

59:                                               ; preds = %41, %33
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %42, %20
  ret void
}

declare dso_local %struct.merge_remote_desc* @merge_remote_util(%struct.commit*) #1

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i64 @parse_signature(i8*, i64) #1

declare dso_local %struct.commit_extra_header* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
