; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@export.noexport = internal global [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LD_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp sgt i32 %8, 1024
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %15
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @export.noexport, i64 0, i64 0), i8*** %5, align 8
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i8*, i8** %3, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @strncmp(i8* %37, i8* %39, i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %55

44:                                               ; preds = %36, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %5, align 8
  br label %21

48:                                               ; preds = %21
  %49 = load i8*, i8** %4, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @setenv(i8* %50, i8* %52, i32 1)
  %54 = load i8*, i8** %4, align 8
  store i8 61, i8* %54, align 1
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %43, %19, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
