; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setpmac/extr_setpmac.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setpmac/extr_setpmac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"mac_from_text\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @mac_from_text(i32* %7, i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mac_set_proc(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @perror(i8* %30)
  store i32 -1, i32* %3, align 4
  br label %59

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mac_free(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = call i32 @execvp(i8* %40, i8** %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %59

48:                                               ; preds = %32
  %49 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @execlp(i8* %54, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %20, %27, %53, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @mac_from_text(i32*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mac_set_proc(i32) #1

declare dso_local i32 @mac_free(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
