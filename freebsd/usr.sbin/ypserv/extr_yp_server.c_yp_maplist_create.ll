; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_yp_maplist_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_yp_maplist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypmaplist = type { i32*, %struct.ypmaplist* }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@yp_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"opendir(%s) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"strdup() failed: %s\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"map: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ypmaplist* (i8*)* @yp_maplist_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ypmaplist* @yp_maplist_create(i8* %0) #0 {
  %2 = alloca %struct.ypmaplist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ypmaplist*, align 8
  %8 = alloca %struct.ypmaplist*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = add nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store %struct.ypmaplist* null, %struct.ypmaplist** %7, align 8
  store %struct.ypmaplist* null, %struct.ypmaplist** %8, align 8
  %22 = trunc i64 %15 to i32
  %23 = load i8*, i8** @yp_dir, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @snprintf(i8* %17, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = call i32* @opendir(i8* %17)
  store i32* %26, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @errno, align 4
  %30 = call i32* @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32* %30)
  store %struct.ypmaplist* null, %struct.ypmaplist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %109

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %104, %62, %32
  %34 = load i32*, i32** %9, align 8
  %35 = call %struct.dirent* @readdir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %10, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load %struct.dirent*, %struct.dirent** %10, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %104

43:                                               ; preds = %37
  %44 = load %struct.dirent*, %struct.dirent** %10, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %43
  %50 = trunc i64 %20 to i32
  %51 = load %struct.dirent*, %struct.dirent** %10, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %21, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %53)
  %55 = call i64 @stat(i8* %21, %struct.stat* %11)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @S_ISREG(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %49
  br label %33

63:                                               ; preds = %57
  %64 = call i64 @malloc(i32 16)
  %65 = inttoptr i64 %64 to %struct.ypmaplist*
  store %struct.ypmaplist* %65, %struct.ypmaplist** %7, align 8
  %66 = icmp eq %struct.ypmaplist* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @closedir(i32* %69)
  %71 = load %struct.ypmaplist*, %struct.ypmaplist** %8, align 8
  %72 = call i32 @yp_maplist_free(%struct.ypmaplist* %71)
  store %struct.ypmaplist* null, %struct.ypmaplist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %109

73:                                               ; preds = %63
  %74 = load %struct.dirent*, %struct.dirent** %10, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32* @strdup(i8* %76)
  %78 = load %struct.ypmaplist*, %struct.ypmaplist** %7, align 8
  %79 = getelementptr inbounds %struct.ypmaplist, %struct.ypmaplist* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = icmp eq i32* %77, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i32, i32* @errno, align 4
  %83 = call i32* @strerror(i32 %82)
  %84 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @closedir(i32* %85)
  %87 = load %struct.ypmaplist*, %struct.ypmaplist** %8, align 8
  %88 = call i32 @yp_maplist_free(%struct.ypmaplist* %87)
  %89 = load %struct.ypmaplist*, %struct.ypmaplist** %7, align 8
  %90 = call i32 @free(%struct.ypmaplist* %89)
  store %struct.ypmaplist* null, %struct.ypmaplist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %109

91:                                               ; preds = %73
  %92 = load %struct.ypmaplist*, %struct.ypmaplist** %8, align 8
  %93 = load %struct.ypmaplist*, %struct.ypmaplist** %7, align 8
  %94 = getelementptr inbounds %struct.ypmaplist, %struct.ypmaplist* %93, i32 0, i32 1
  store %struct.ypmaplist* %92, %struct.ypmaplist** %94, align 8
  %95 = load %struct.ypmaplist*, %struct.ypmaplist** %7, align 8
  store %struct.ypmaplist* %95, %struct.ypmaplist** %8, align 8
  %96 = load i64, i64* @debug, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.ypmaplist*, %struct.ypmaplist** %8, align 8
  %100 = getelementptr inbounds %struct.ypmaplist, %struct.ypmaplist* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %101)
  br label %103

103:                                              ; preds = %98, %91
  br label %104

104:                                              ; preds = %103, %43, %37
  br label %33

105:                                              ; preds = %33
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @closedir(i32* %106)
  %108 = load %struct.ypmaplist*, %struct.ypmaplist** %8, align 8
  store %struct.ypmaplist* %108, %struct.ypmaplist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %81, %67, %28
  %110 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load %struct.ypmaplist*, %struct.ypmaplist** %2, align 8
  ret %struct.ypmaplist* %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i32* @strerror(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @yp_maplist_free(%struct.ypmaplist*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @free(%struct.ypmaplist*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
