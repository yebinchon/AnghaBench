; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_rm_r.c_rm_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_rm_r.c_rm_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64, i32 }

@O_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@AT_REMOVEDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rm_r(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @O_DIRECTORY, align 4
  %22 = call i32 @openat(i32 %19, i8* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %106

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @fdopendir(i32 %27)
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %83, %54, %45, %26
  %30 = load i32*, i32** %8, align 8
  %31 = call %struct.dirent* @readdir(i32* %30)
  store %struct.dirent* %31, %struct.dirent** %9, align 8
  %32 = icmp ne %struct.dirent* %31, null
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.dirent*, %struct.dirent** %9, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.dirent*, %struct.dirent** %9, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33
  br label %29

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dirent*, %struct.dirent** %9, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %52 = call i64 @fstatat(i32 %47, i8* %50, %struct.stat* %10, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %29

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.dirent*, %struct.dirent** %9, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %6, align 8
  call void @rm_r(i32 %61, i8* %64, i64 %65)
  br label %83

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @S_ISLNK(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.dirent*, %struct.dirent** %9, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @unlinkat(i32 %77, i8* %80, i32 0)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %60
  br label %29

84:                                               ; preds = %29
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @closedir(i32* %85)
  %87 = load i32, i32* %4, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %90 = call i64 @fstatat(i32 %87, i8* %88, %struct.stat* %10, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %106

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @S_ISDIR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @AT_REMOVEDIR, align 4
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = call i32 @unlinkat(i32 %94, i8* %95, i32 %104)
  br label %106

106:                                              ; preds = %103, %92, %25
  ret void
}

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32* @fdopendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @unlinkat(i32, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
