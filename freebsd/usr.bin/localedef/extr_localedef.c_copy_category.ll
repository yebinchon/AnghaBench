; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_copy_category.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_copy_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"/usr/lib/locale/%s/%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"source locale data unavailable: %s\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Copying category %s from %s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@bsd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to copy locale data: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_category(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = trunc i64 %8 to i32
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* (...) @category_name()
  %14 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i32, i32* @R_OK, align 4
  %16 = call i32 @access(i8* %10, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = call i32* @strchr(i8* %10, i8 signext 47)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = trunc i64 %8 to i32
  %24 = load i8*, i8** %2, align 8
  %25 = call i8* (...) @category_name()
  %26 = call i32 @snprintf(i8* %10, i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i32, i32* @R_OK, align 4
  %28 = call i32 @access(i8* %10, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %19, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 1, i32* %6, align 4
  br label %67

36:                                               ; preds = %29
  %37 = load i32, i32* @verbose, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = call i8* (...) @category_name()
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fflush(i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* @bsd, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @category_file()
  %50 = call i32 @dirname(i32 %49)
  %51 = call i32 @mkdir(i32 %50, i32 493)
  br label %52

52:                                               ; preds = %48, %45
  %53 = call i32 (...) @category_file()
  %54 = call i64 @link(i8* %10, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i8* @strerror(i32 %58)
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i32 1, i32* %6, align 4
  br label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @verbose, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %56, %32
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @category_name(...) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @mkdir(i32, i32) #2

declare dso_local i32 @dirname(i32) #2

declare dso_local i32 @category_file(...) #2

declare dso_local i64 @link(i8*, i32) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
