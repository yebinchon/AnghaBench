; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mesg/extr_mesg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mesg/extr_mesg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ttyname\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"is y\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"is n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %17 [
    i32 63, label %16
  ]

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %14, %16
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17
  br label %9

20:                                               ; preds = %9
  %21 = load i64, i64* @optind, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @optind, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  store i8** %28, i8*** %5, align 8
  %29 = load i32, i32* @STDIN_FILENO, align 4
  %30 = call i8* @ttyname(i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load i32, i32* @STDOUT_FILENO, align 4
  %34 = call i8* @ttyname(i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = call i8* @ttyname(i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36, %32, %20
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %6)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @S_IWGRP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @exit(i32 0) #3
  unreachable

62:                                               ; preds = %53
  %63 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %49
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %98 [
    i32 121, label %71
    i32 110, label %84
  ]

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @S_IWGRP, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @chmod(i8* %72, i32 %76)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = call i32 @exit(i32 0) #3
  unreachable

84:                                               ; preds = %65
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @S_IWGRP, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @chmod(i8* %85, i32 %90)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %84
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %65
  %99 = call i32 (...) @usage()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
