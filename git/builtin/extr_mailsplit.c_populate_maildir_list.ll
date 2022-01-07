; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_populate_maildir_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_populate_maildir_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@__const.populate_maildir_list.subs = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot opendir %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*)* @populate_maildir_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_maildir_list(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %7, align 8
  %11 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x i8*]* @__const.populate_maildir_list.subs to i8*), i64 24, i1 false)
  store i32 -1, i32* %10, align 4
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  store i8** %12, i8*** %9, align 8
  br label %13

13:                                               ; preds = %64, %2
  %14 = load i8**, i8*** %9, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @opendir(i8* %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %64

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @error_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %68

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %49, %48, %35
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %6, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %36

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.dirent*, %struct.dirent** %6, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %56)
  store i8* %57, i8** %7, align 8
  %58 = load %struct.string_list*, %struct.string_list** %3, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @string_list_insert(%struct.string_list* %58, i8* %59)
  br label %36

61:                                               ; preds = %36
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @closedir(i32* %62)
  br label %64

64:                                               ; preds = %61, %31
  %65 = load i8**, i8*** %9, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %9, align 8
  br label %13

67:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
