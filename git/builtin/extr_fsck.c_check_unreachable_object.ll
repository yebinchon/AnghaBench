; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_check_unreachable_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_check_unreachable_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i64, i32 }

@HAS_OBJ = common dso_local global i32 0, align 4
@show_unreachable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unreachable %s %s\00", align 1
@USED = common dso_local global i32 0, align 4
@show_dangling = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"dangling %s %s\00", align 1
@write_lost_and_found = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"lost-found/%s/%s\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"could not create lost-found\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"could not finish '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @check_unreachable_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_unreachable_object(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %5 = load %struct.object*, %struct.object** %2, align 8
  %6 = getelementptr inbounds %struct.object, %struct.object* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HAS_OBJ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %98

12:                                               ; preds = %1
  %13 = load i64, i64* @show_unreachable, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.object*, %struct.object** %2, align 8
  %18 = call i32 @printable_type(%struct.object* %17)
  %19 = load %struct.object*, %struct.object** %2, align 8
  %20 = call i8* @describe_object(%struct.object* %19)
  %21 = call i32 @printf_ln(i32 %16, i32 %18, i8* %20)
  br label %98

22:                                               ; preds = %12
  %23 = load %struct.object*, %struct.object** %2, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @USED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %98, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @show_dangling, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.object*, %struct.object** %2, align 8
  %35 = call i32 @printable_type(%struct.object* %34)
  %36 = load %struct.object*, %struct.object** %2, align 8
  %37 = call i8* @describe_object(%struct.object* %36)
  %38 = call i32 @printf_ln(i32 %33, i32 %35, i8* %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i64, i64* @write_lost_and_found, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %39
  %43 = load %struct.object*, %struct.object** %2, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OBJ_COMMIT, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %50 = load %struct.object*, %struct.object** %2, align 8
  %51 = call i8* @describe_object(%struct.object* %50)
  %52 = call i8* @git_pathdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %51)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @safe_create_leading_directories_const(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %58 = call i32 @error(i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @free(i8* %59)
  br label %98

61:                                               ; preds = %42
  %62 = load i8*, i8** %3, align 8
  %63 = call i32* @xfopen(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %63, i32** %4, align 8
  %64 = load %struct.object*, %struct.object** %2, align 8
  %65 = getelementptr inbounds %struct.object, %struct.object* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OBJ_BLOB, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fileno(i32* %70)
  %72 = load %struct.object*, %struct.object** %2, align 8
  %73 = getelementptr inbounds %struct.object, %struct.object* %72, i32 0, i32 2
  %74 = call i64 @stream_blob_to_fd(i32 %71, i32* %73, i32* null, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @die_errno(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %69
  br label %86

81:                                               ; preds = %61
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.object*, %struct.object** %2, align 8
  %84 = call i8* @describe_object(%struct.object* %83)
  %85 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32*, i32** %4, align 8
  %88 = call i64 @fclose(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @die_errno(i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %94, %39
  br label %98

98:                                               ; preds = %11, %15, %56, %97, %22
  ret void
}

declare dso_local i32 @printf_ln(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printable_type(%struct.object*) #1

declare dso_local i8* @describe_object(%struct.object*) #1

declare dso_local i8* @git_pathdup(i8*, i8*, i8*) #1

declare dso_local i64 @safe_create_leading_directories_const(i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @xfopen(i8*, i8*) #1

declare dso_local i64 @stream_blob_to_fd(i32, i32*, i32*, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
