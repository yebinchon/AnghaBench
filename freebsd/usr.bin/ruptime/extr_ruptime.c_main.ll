; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ruptime/extr_ruptime.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ruptime/extr_ruptime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"alrut\00", align 1
@rflg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@_PATH_RWHODIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@dirp = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 (i8*, i8*)* @hscmp, i32 (i8*, i8*)** %6, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %21 [
    i32 97, label %16
    i32 108, label %17
    i32 114, label %18
    i32 116, label %19
    i32 117, label %20
  ]

16:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %23

17:                                               ; preds = %14
  store i32 (i8*, i8*)* @lcmp, i32 (i8*, i8*)** %6, align 8
  br label %23

18:                                               ; preds = %14
  store i32 -1, i32* @rflg, align 4
  br label %23

19:                                               ; preds = %14
  store i32 (i8*, i8*)* @tcmp, i32 (i8*, i8*)** %6, align 8
  br label %23

20:                                               ; preds = %14
  store i32 (i8*, i8*)* @ucmp, i32 (i8*, i8*)** %6, align 8
  br label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %20, %19, %18, %17, %16
  br label %9

24:                                               ; preds = %9
  %25 = load i64, i64* @optind, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @optind, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* @_PATH_RWHODIR, align 4
  %34 = call i64 @chdir(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** @dirp, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %24
  %40 = load i32, i32* @_PATH_RWHODIR, align 4
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %47 = call i32 @ruptime(i8* %44, i32 %45, i32 (i8*, i8*)* %46)
  br label %48

48:                                               ; preds = %58, %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  %51 = load i8*, i8** %49, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %53
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %63 = call i32 @ruptime(i8* %60, i32 %61, i32 (i8*, i8*)* %62)
  br label %48

64:                                               ; preds = %57, %48
  %65 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @hscmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @lcmp(i8*, i8*) #1

declare dso_local i32 @tcmp(i8*, i8*) #1

declare dso_local i32 @ucmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @chdir(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @ruptime(i8*, i32, i32 (i8*, i8*)*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
