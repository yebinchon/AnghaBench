; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"?...\00", align 1
@YESEXPR = common dso_local global i32 0, align 4
@REG_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @_PATH_TTY, align 4
  %8 = call i32* @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 2, i32* %1, align 4
  br label %41

11:                                               ; preds = %0
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fflush(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @fgetln(i32* %16, i64* %3)
  store i8* %17, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @YESEXPR, align 4
  %21 = call i32 @nl_langinfo(i32 %20)
  %22 = load i32, i32* @REG_BASIC, align 4
  %23 = call i64 @regcomp(i32* %2, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %11
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 0, i32* %1, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @regexec(i32* %2, i8* %33, i32 0, i32* null, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = call i32 @regfree(i32* %2)
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %28, %25, %10
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @nl_langinfo(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
