; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_init_locales_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_init_locales_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.dirent = type { i8* }

@locales = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"could not allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to find locales storage\00", align 1
@_PathLocale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not open directory '%s'\00", align 1
@NBOGUS = common dso_local global i64 0, align 8
@boguslocales = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@scmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_locales_list() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %103

8:                                                ; preds = %0
  %9 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** @locales, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = call i64 (...) @__detect_path_locale()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* @_PathLocale, align 4
  %21 = call i32* @opendir(i32 %20)
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @_PathLocale, align 4
  %26 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %75, %39, %27
  %29 = load i32*, i32** %1, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %2, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = load %struct.dirent*, %struct.dirent** %2, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %28

40:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @NBOGUS, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.dirent*, %struct.dirent** %2, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32*, i32** @boguslocales, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @boguslocales, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = call i64 @strncmp(i8* %48, i32 %52, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %41

65:                                               ; preds = %41
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %70 = load %struct.dirent*, %struct.dirent** %2, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strdup(i8* %72)
  %74 = call i32 @sl_add(%struct.TYPE_5__* %69, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  br label %28

76:                                               ; preds = %28
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @closedir(i32* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %80 = call i32* @sl_find(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %84 = call i32 @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @sl_add(%struct.TYPE_5__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %88 = call i32* @sl_find(%struct.TYPE_5__* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %92 = call i32 @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @sl_add(%struct.TYPE_5__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locales, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @scmp, align 4
  %102 = call i32 @qsort(i32 %97, i32 %100, i32 8, i32 %101)
  br label %103

103:                                              ; preds = %94, %7
  ret void
}

declare dso_local %struct.TYPE_5__* @sl_init(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @__detect_path_locale(...) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sl_add(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32* @sl_find(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
