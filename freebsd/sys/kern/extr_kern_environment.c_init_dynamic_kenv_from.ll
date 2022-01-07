; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_init_dynamic_kenv_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_init_dynamic_kenv_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WARNING: too long kenv string, ignoring %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"WARNING: malformed static env value, ignoring %s\0A\00", align 1
@KENV_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"WARNING: too many kenv strings, ignoring %s\0A\00", align 1
@M_KENV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@kenvp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @init_dynamic_kenv_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dynamic_kenv_from(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %93

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %93

18:                                               ; preds = %13
  store i8* null, i8** %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %88, %18
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %90

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @kernenv_next(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @KENV_MNAMELEN, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @KENV_MVALLEN, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %83

43:                                               ; preds = %25
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 61)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %83

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @_getenv_dynamic_locked(i8* %53, i32* null)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  store i8 61, i8* %55, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %83

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @KENV_SIZE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  br label %83

66:                                               ; preds = %59
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* @M_KENV, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = call i32 @malloc(i64 %67, i32 %68, i32 %69)
  %71 = load i32*, i32** @kenvp, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** @kenvp, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcpy(i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %66, %63, %58, %48, %40
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %85, 1
  %87 = call i32 @explicit_bzero(i8* %84, i64 %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %5, align 8
  br label %22

90:                                               ; preds = %22
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %4, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %13, %2
  ret void
}

declare dso_local i8* @kernenv_next(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @_getenv_dynamic_locked(i8*, i32*) #1

declare dso_local i32 @malloc(i64, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @explicit_bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
