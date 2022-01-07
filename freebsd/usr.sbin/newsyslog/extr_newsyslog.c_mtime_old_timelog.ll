; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_mtime_old_timelog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_mtime_old_timelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.tm = type { i32 }
%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"strdup() of '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid log filename '%s'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot open log directory '%s'\00", align 1
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot stat '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtime_old_timelog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtime_old_timelog(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.tm, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %13, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load i8*, i8** %13, align 8
  %23 = call i8* @dirname(i8* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %94

33:                                               ; preds = %21
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @basename(i8* %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %88

44:                                               ; preds = %33
  %45 = load i8*, i8** %12, align 8
  %46 = call i32* @opendir(i8* %45)
  store i32* %46, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %88

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @dirfd(i32* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %84, %73, %64, %51
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.dirent* @readdir(i32* %55)
  store %struct.dirent* %56, %struct.dirent** %8, align 8
  %57 = icmp ne %struct.dirent* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.dirent*, %struct.dirent** %8, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @validate_old_timelog(i32 %59, %struct.dirent* %60, i8* %61, %struct.tm* %5)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %54

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.dirent*, %struct.dirent** %8, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %71 = call i32 @fstatat(i32 %66, i32 %69, %struct.stat* %4, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %54

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %76
  br label %54

85:                                               ; preds = %54
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @closedir(i32* %86)
  br label %88

88:                                               ; preds = %85, %48, %41
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %27, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @validate_old_timelog(i32, %struct.dirent*, i8*, %struct.tm*) #1

declare dso_local i32 @fstatat(i32, i32, %struct.stat*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
