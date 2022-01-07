; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_repack.c_get_non_kept_pack_filenames.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_repack.c_get_non_kept_pack_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i32 }

@packdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/%s.keep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.string_list*)* @get_non_kept_pack_filenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_non_kept_pack_filenames(%struct.string_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %10 = load i32, i32* @packdir, align 4
  %11 = call i32* @opendir(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %86

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %82, %63, %56, %14
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.dirent* @readdir(i32* %16)
  store %struct.dirent* %17, %struct.dirent** %6, align 8
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %83

19:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.string_list*, %struct.string_list** %4, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %6, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.string_list*, %struct.string_list** %4, align 8
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fspathcmp(i32 %29, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %20

45:                                               ; preds = %40, %20
  %46 = load %struct.string_list*, %struct.string_list** %4, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.string_list*, %struct.string_list** %4, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %15

57:                                               ; preds = %50, %45
  %58 = load %struct.dirent*, %struct.dirent** %6, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strip_suffix(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %15

64:                                               ; preds = %57
  %65 = load %struct.dirent*, %struct.dirent** %6, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i8* @xmemdupz(i32 %67, i64 %68)
  store i8* %69, i8** %7, align 8
  %70 = load i32, i32* @packdir, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @mkpath(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %71)
  %73 = call i32 @file_exists(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load %struct.string_list*, %struct.string_list** %3, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @string_list_append_nodup(%struct.string_list* %76, i8* %77)
  br label %82

79:                                               ; preds = %64
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %75
  br label %15

83:                                               ; preds = %15
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @closedir(i32* %84)
  br label %86

86:                                               ; preds = %83, %13
  ret void
}

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @fspathcmp(i32, i32) #1

declare dso_local i32 @strip_suffix(i32, i8*, i64*) #1

declare dso_local i8* @xmemdupz(i32, i64) #1

declare dso_local i32 @file_exists(i32) #1

declare dso_local i32 @mkpath(i8*, i32, i8*) #1

declare dso_local i32 @string_list_append_nodup(%struct.string_list*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
