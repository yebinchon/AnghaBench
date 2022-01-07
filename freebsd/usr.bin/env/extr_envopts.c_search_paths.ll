; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_search_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_search_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@env_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"#env Searching:\09'%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#env  for file:\09'%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_paths(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32* @strchr(i8* %17, i8 signext 47)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* @env_verbosity, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %24, %21
  store i8* null, i8** %9, align 8
  br label %32

32:                                               ; preds = %53, %48, %31
  %33 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = trunc i64 %12 to i32
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @snprintf(i8* %14, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %43, i8* %44)
  %46 = trunc i64 %12 to i32
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %32

49:                                               ; preds = %41
  %50 = call i64 @is_there(i8* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8* %14, i8** %9, align 8
  br label %54

53:                                               ; preds = %49
  br label %32

54:                                               ; preds = %52, %32
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOENT, align 4
  store i32 %58, i32* @errno, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @err(i32 127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = call i8* @strdup(i8* %14)
  %63 = load i8**, i8*** %4, align 8
  store i8* %62, i8** %63, align 8
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %20
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @is_there(i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
