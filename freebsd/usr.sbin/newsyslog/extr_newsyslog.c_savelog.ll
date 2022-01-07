; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_savelog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_savelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"can't fopen %s for reading\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"can't fopen %s for writing\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"error writing to %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"error reading from %s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"can't fclose %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @savelog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savelog(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @link(i8* %9, i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @getc(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @putc(i32 %36, i32* %37)
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %30

45:                                               ; preds = %30
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @ferror(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @fclose(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @fclose(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %14, %63, %59
  ret void
}

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
