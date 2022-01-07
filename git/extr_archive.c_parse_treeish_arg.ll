; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_parse_treeish_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_parse_treeish_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archiver_args = type { i32, %struct.commit*, %struct.object_id*, %struct.tree*, i32 }
%struct.commit = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.tree = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@remote_allow_unreachable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no such ref: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not a valid object name: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"not a tree object: %s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"current working directory is untracked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.archiver_args*, i8*, i32)* @parse_treeish_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_treeish_arg(i8** %0, %struct.archiver_args* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.archiver_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tree*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.object_id, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.archiver_args* %1, %struct.archiver_args** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load i32, i32* @remote_allow_unreachable, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  store i8* null, i8** %15, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strchrnul(i8* %30, i8 signext 58)
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @dwim_ref(i8* %38, i32 %39, %struct.object_id* %14, i8** %15)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %17, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i32, ...) @die(i32 %43, i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %42, %29
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @free(i8* %48)
  br label %50

50:                                               ; preds = %47, %26, %4
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @get_oid(i8* %51, %struct.object_id* %14)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i32, ...) @die(i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %60 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.commit* @lookup_commit_reference_gently(i32 %61, %struct.object_id* %14, i32 1)
  store %struct.commit* %62, %struct.commit** %13, align 8
  %63 = load %struct.commit*, %struct.commit** %13, align 8
  %64 = icmp ne %struct.commit* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.commit*, %struct.commit** %13, align 8
  %67 = getelementptr inbounds %struct.commit, %struct.commit* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.object_id* %68, %struct.object_id** %10, align 8
  %69 = load %struct.commit*, %struct.commit** %13, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  br label %74

72:                                               ; preds = %58
  store %struct.object_id* null, %struct.object_id** %10, align 8
  %73 = call i32 @time(i32* null)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %14)
  store %struct.tree* %75, %struct.tree** %12, align 8
  %76 = load %struct.tree*, %struct.tree** %12, align 8
  %77 = icmp eq %struct.tree* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @oid_to_hex(%struct.object_id* %14)
  %81 = call i32 (i32, ...) @die(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %87 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tree*, %struct.tree** %12, align 8
  %90 = getelementptr inbounds %struct.tree, %struct.tree* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @get_tree_entry(i32 %88, i32* %91, i8* %92, %struct.object_id* %18, i16* %19)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = load i16, i16* %19, align 2
  %98 = call i32 @S_ISDIR(i16 zeroext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96, %85
  %101 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32 (i32, ...) @die(i32 %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %18)
  store %struct.tree* %104, %struct.tree** %12, align 8
  br label %105

105:                                              ; preds = %103, %82
  %106 = load %struct.tree*, %struct.tree** %12, align 8
  %107 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %108 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %107, i32 0, i32 3
  store %struct.tree* %106, %struct.tree** %108, align 8
  %109 = load %struct.object_id*, %struct.object_id** %10, align 8
  %110 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %111 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %110, i32 0, i32 2
  store %struct.object_id* %109, %struct.object_id** %111, align 8
  %112 = load %struct.commit*, %struct.commit** %13, align 8
  %113 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %114 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %113, i32 0, i32 1
  store %struct.commit* %112, %struct.commit** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.archiver_args*, %struct.archiver_args** %6, align 8
  %117 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @get_tree_entry(i32, i32*, i8*, %struct.object_id*, i16*) #1

declare dso_local i32 @S_ISDIR(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
