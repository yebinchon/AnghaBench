; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_unsetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_unsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_CHECK = common dso_local global i32 0, align 4
@kenv_lock = common dso_local global i32 0, align 4
@kenvp = common dso_local global i8** null, align 8
@M_KENV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_unsetenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @KENV_CHECK, align 4
  %9 = call i32 @mtx_lock(i32* @kenv_lock)
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @_getenv_dynamic(i8* %10, i32* %6)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load i8**, i8*** @kenvp, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %40, %14
  %23 = load i8**, i8*** @kenvp, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i8**, i8*** @kenvp, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** @kenvp, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %34, i8** %39, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load i8**, i8*** @kenvp, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* null, i8** %47, align 8
  %48 = call i32 @mtx_unlock(i32* @kenv_lock)
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @explicit_bzero(i8* %49, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @M_KENV, align 4
  %55 = call i32 @free(i8* %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %1
  %57 = call i32 @mtx_unlock(i32* @kenv_lock)
  store i32 -1, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @_getenv_dynamic(i8*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
