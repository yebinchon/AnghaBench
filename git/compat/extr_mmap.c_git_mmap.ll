; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mmap.c_git_mmap.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mmap.c_git_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid usage of mmap when built with NO_MMAP\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_mmap(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MAP_PRIVATE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PROT_READ, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18, %6
  %27 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* %9, align 8
  %30 = call i8* @xmalloc(i64 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* @errno, align 4
  %35 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %35, i8** %7, align 8
  br label %77

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %71, %36
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %49, %50
  %52 = call i64 @xpread(i32 %42, i8* %45, i64 %48, i64 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %14, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @memset(i8* %58, i32 0, i64 %61)
  br label %75

63:                                               ; preds = %41
  %64 = load i64, i64* %15, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* @EACCES, align 4
  store i32 %69, i32* @errno, align 4
  %70 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %70, i8** %7, align 8
  br label %77

71:                                               ; preds = %63
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %14, align 8
  br label %37

75:                                               ; preds = %55, %37
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %75, %66, %33
  %78 = load i8*, i8** %7, align 8
  ret i8* %78
}

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @xpread(i32, i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
