; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32 }
%struct.pathspec = type { i32 }
%struct.object = type { i64, i32 }
%struct.tree_desc = type { i32 }
%struct.strbuf = type { i32 }

@OBJ_BLOB = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@tree_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to read tree (%s)\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to grep from object of type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, %struct.object*, i8*, i8*)* @grep_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_object(%struct.grep_opt* %0, %struct.pathspec* %1, %struct.object* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grep_opt*, align 8
  %8 = alloca %struct.pathspec*, align 8
  %9 = alloca %struct.object*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tree_desc, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %7, align 8
  store %struct.pathspec* %1, %struct.pathspec** %8, align 8
  store %struct.object* %2, %struct.object** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.object*, %struct.object** %9, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_BLOB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %25 = load %struct.object*, %struct.object** %9, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 1
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @grep_oid(%struct.grep_opt* %24, i32* %26, i8* %27, i32 0, i8* %28)
  store i32 %29, i32* %6, align 4
  br label %108

30:                                               ; preds = %5
  %31 = load %struct.object*, %struct.object** %9, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_COMMIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.object*, %struct.object** %9, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OBJ_TREE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %36, %30
  %43 = call i32 (...) @grep_read_lock()
  %44 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %45 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.object*, %struct.object** %9, align 8
  %48 = getelementptr inbounds %struct.object, %struct.object* %47, i32 0, i32 1
  %49 = load i32, i32* @tree_type, align 4
  %50 = call i8* @read_object_with_reference(i32 %46, i32* %48, i32 %49, i64* %14, i32* null)
  store i8* %50, i8** %13, align 8
  %51 = call i32 (...) @grep_read_unlock()
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.object*, %struct.object** %9, align 8
  %57 = getelementptr inbounds %struct.object, %struct.object* %56, i32 0, i32 1
  %58 = call i32 @oid_to_hex(i32* %57)
  %59 = call i32 @die(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %42
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strlen(i8* %64)
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 0, %66 ]
  store i32 %68, i32* %17, align 4
  %69 = load i64, i64* @PATH_MAX, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = add nsw i64 %72, 1
  %74 = call i32 @strbuf_init(%struct.strbuf* %15, i64 %73)
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @strbuf_add(%struct.strbuf* %15, i8* %78, i32 %79)
  %81 = call i32 @strbuf_addch(%struct.strbuf* %15, i8 signext 58)
  br label %82

82:                                               ; preds = %77, %67
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @init_tree_desc(%struct.tree_desc* %12, i8* %83, i64 %84)
  %86 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %87 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.object*, %struct.object** %9, align 8
  %91 = getelementptr inbounds %struct.object, %struct.object* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @OBJ_COMMIT, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @grep_tree(%struct.grep_opt* %86, %struct.pathspec* %87, %struct.tree_desc* %12, %struct.strbuf* %15, i32 %89, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = call i32 @strbuf_release(%struct.strbuf* %15)
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %6, align 4
  br label %108

101:                                              ; preds = %36
  %102 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.object*, %struct.object** %9, align 8
  %104 = getelementptr inbounds %struct.object, %struct.object* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @type_name(i64 %105)
  %107 = call i32 @die(i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %101, %82, %23
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @grep_oid(%struct.grep_opt*, i32*, i8*, i32, i8*) #1

declare dso_local i32 @grep_read_lock(...) #1

declare dso_local i8* @read_object_with_reference(i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @grep_read_unlock(...) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

declare dso_local i32 @grep_tree(%struct.grep_opt*, %struct.pathspec*, %struct.tree_desc*, %struct.strbuf*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @type_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
