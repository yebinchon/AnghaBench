; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_mespipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_mespipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@PATHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/mail.ReXXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_CSHELL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"No bytes from \22%s\22 !?\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@collf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mespipe(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @SIGINT, align 4
  %12 = load i32, i32* @SIG_IGN, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @PATHSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = trunc i64 %15 to i32
  %19 = load i8*, i8** @tmpdir, align 8
  %20 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @mkstemp(i8* %17)
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @Fdopen(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %2
  %28 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %64

29:                                               ; preds = %23
  %30 = call i32 @rm(i8* %17)
  %31 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** @_PATH_CSHELL, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i8*, i8** %8, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fileno(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fileno(i32* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @run_command(i8* %36, i32 0, i32 %38, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %41, i32* null)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @Fclose(i32* %45)
  br label %64

47:                                               ; preds = %35
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @fsize(i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @Fclose(i32* %55)
  br label %64

57:                                               ; preds = %47
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @SEEK_END, align 4
  %60 = call i32 @fseeko(i32* %58, i32 0, i32 %59)
  %61 = load i32*, i32** %5, align 8
  store i32* %61, i32** @collf, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @Fclose(i32* %62)
  br label %64

64:                                               ; preds = %57, %51, %44, %27
  %65 = load i32, i32* @SIGINT, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @signal(i32 %65, i32 %66)
  %68 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32* @Fdopen(i32, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @rm(i8*) #1

declare dso_local i8* @value(i8*) #1

declare dso_local i64 @run_command(i8*, i32, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @Fclose(i32*) #1

declare dso_local i64 @fsize(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
