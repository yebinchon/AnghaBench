; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_load_repositories.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_load_repositories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@F_OK = common dso_local global i32 0, align 4
@CONFFILE_REPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @load_repositories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_repositories(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @opendir(i8* %16)
  store i32* %17, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %76

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %70, %32, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.dirent* @readdir(i32* %22)
  store %struct.dirent* %23, %struct.dirent** %4, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load %struct.dirent*, %struct.dirent** %4, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = icmp ule i64 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %21

33:                                               ; preds = %25
  %34 = load %struct.dirent*, %struct.dirent** %4, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 5
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %33
  %44 = trunc i64 %13 to i32
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %57 = load %struct.dirent*, %struct.dirent** %4, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %15, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %56, i8* %59)
  %61 = load i32, i32* @F_OK, align 4
  %62 = call i64 @access(i8* %15, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %43
  %65 = load i32, i32* @CONFFILE_REPO, align 4
  %66 = call i64 @read_conf_file(i8* %15, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %10, align 4
  br label %72

69:                                               ; preds = %64, %43
  br label %70

70:                                               ; preds = %69, %33
  br label %21

71:                                               ; preds = %21
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @closedir(i32* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i64 @read_conf_file(i8*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
