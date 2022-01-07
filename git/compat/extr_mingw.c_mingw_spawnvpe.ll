; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_spawnvpe.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_spawnvpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_spawnvpe(i8* %0, i8** %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @path_lookup(i8* %20, i32 0)
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %15, align 4
  br label %71

26:                                               ; preds = %7
  %27 = load i8*, i8** %16, align 8
  %28 = call i8* @parse_interpreter(i8* %27)
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %18, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = call i8* @path_lookup(i8* %35, i32 1)
  store i8* %36, i8** %19, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* @errno, align 4
  store i32 -1, i32* %15, align 4
  br label %55

44:                                               ; preds = %31
  %45 = load i8*, i8** %19, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = load i8**, i8*** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @mingw_spawnve_fd(i8* %45, i8** %46, i8** %47, i8* %48, i32 1, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %44, %42
  %56 = load i8*, i8** %18, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %56, i8** %58, align 8
  br label %68

59:                                               ; preds = %26
  %60 = load i8*, i8** %16, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8**, i8*** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @mingw_spawnve_fd(i8* %60, i8** %61, i8** %62, i8* %63, i32 0, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %59, %55
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %24
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i8* @path_lookup(i8*, i32) #1

declare dso_local i8* @parse_interpreter(i8*) #1

declare dso_local i32 @mingw_spawnve_fd(i8*, i8**, i8**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
